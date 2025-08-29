param(
  [string]$Manifest = ".\ui-manifest.json",
  [int]$BatchSize = 1,
  [string]$OutDir = ".\batches"
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

if (-not (Test-Path $Manifest)) { throw "Manifest not found: $Manifest" }

$json = Get-Content -Raw -LiteralPath $Manifest | ConvertFrom-Json
$artifacts = @($json.artifacts)
if ($artifacts.Count -eq 0) { throw "No artifacts in manifest." }

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$total = $artifacts.Count
$batchCount = [int][math]::Ceiling($total / $BatchSize)
for ($i=0; $i -lt $batchCount; $i++) {
  $start = $i * $BatchSize
  $slice = $artifacts[$start..([math]::Min($start+$BatchSize-1, $total-1))]
  $batchObj = [ordered]@{
    foundAt = $json.foundAt
    index = $i + 1
    totalBatches = $batchCount
    range = @{ start = $start; count = $slice.Count }
    artifacts = $slice
  }
  $outfile = Join-Path $OutDir ("batch-{0:D4}.json" -f ($i+1))
  $batchObj | ConvertTo-Json -Depth 10 | Out-File -FilePath $outfile -Encoding UTF8
}
Write-Host "Created $batchCount batch files in $OutDir (size=$BatchSize). Total artifacts: $total"
