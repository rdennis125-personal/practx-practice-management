param(
  [string]$Root = ".",
  [string]$OutFile = ".\ui-manifest.json"
)

# Exclude common build dirs
$excludeDirs = @('bin','obj','.git','node_modules','packages','dist','out','wwwroot/lib','.vs','.idea')

function Should-Skip([string]$path) {
  foreach ($d in $excludeDirs) {
    if ($path -match "(\\|/)$([regex]::Escape($d))(\\|/)") { return $true }
  }
  return $false
}

# Candidate patterns
$patterns = @('*.Designer.cs','*.xaml','*.xaml.cs','*.aspx','*.aspx.cs','*.cshtml','*.cshtml.cs','*.razor','*.razor.cs')

$all = Get-ChildItem -Path $Root -Recurse -File -Include $patterns -ErrorAction SilentlyContinue |
  Where-Object { -not (Should-Skip $_.FullName) }

function Count-Lines([string]$path) {
  try { return (Get-Content -LiteralPath $path -ErrorAction SilentlyContinue).Count } catch { return 0 }
}

$artifacts = @()

foreach ($f in $all) {
  $sourceType = switch -Regex ($f.Extension.ToLower()) {
    '\.xaml'        { 'WPF' ; break }
    '\.aspx'        { 'ASPX' ; break }
    '\.cshtml'      { 'RazorPages' ; break }
    '\.razor'       { 'Blazor' ; break }
    default         { 'Other' }
  }

  $lines = Count-Lines $f.FullName

  $artifacts += [ordered]@{
    sourceType  = $sourceType
    qualifiedName = ""
    project     = ""
    files       = @(@{ path = $f.FullName.Replace((Resolve-Path $Root).Path,'').TrimStart('\','/'); role = "unknown" })
    hints       = @()
    metrics     = @{ approxLines = $lines; eventHandlers = 0 }
  }
}

$result = [ordered]@{
  foundAt  = (Resolve-Path $Root).Path
  artifacts = $artifacts
}

$result | ConvertTo-Json -Depth 5 | Out-File -FilePath $OutFile -Encoding UTF8
Write-Host "✅ Manifest written to $OutFile with $($artifacts.Count) artifacts."
