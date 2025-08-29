using System.Collections.Generic;
using System.Threading.Tasks;

namespace PractxAPI.Controllers
{
    public class PractxApiControllerImpl : IPractxApiController
    {
        public Task<SchoolClass> SchoolClassesGETAsync(int id) => Task.FromResult(new SchoolClass());
        public Task<SchoolClass> SchoolClassesPUTAsync(int id, SchoolClassUpdate body) => Task.FromResult(new SchoolClass());
        public Task SchoolClassesDELETEAsync(int id) => Task.CompletedTask;

        public Task<Requirement> RequirementsGETAsync(int id) => Task.FromResult(new Requirement());
        public Task<Requirement> RequirementsPUTAsync(int id, RequirementUpdate body) => Task.FromResult(new Requirement());
        public Task RequirementsDELETEAsync(int id) => Task.CompletedTask;

        public Task<ICollection<Provider>> ProvidersAsync() => Task.FromResult<ICollection<Provider>>(new List<Provider>());
        public Task<ICollection<DispenseSupply>> DispSuppliesAsync(int provNum) => Task.FromResult<ICollection<DispenseSupply>>(new List<DispenseSupply>());
        public Task<ICollection<Clinic>> ClinicsAsync() => Task.FromResult<ICollection<Clinic>>(new List<Clinic>());
        public Task<ICollection<WebSchedCarrierRule>> WebSchedCarrierRulesAsync(int clinicNum) => Task.FromResult<ICollection<WebSchedCarrierRule>>(new List<WebSchedCarrierRule>());
        public Task CopyAsync(CopyCarrierRules body) => Task.CompletedTask;

        public Task<ICollection<InsuranceBlueBookRule>> InsBluebookRulesAllAsync() => Task.FromResult<ICollection<InsuranceBlueBookRule>>(new List<InsuranceBlueBookRule>());
        public Task<InsuranceBlueBookRule> InsBluebookRulesAsync(int id, InsuranceBlueBookRuleUpdate body) => Task.FromResult(new InsuranceBlueBookRule());

        public Task<ICollection<PrescriptionTemplate>> RxDefsAllAsync() => Task.FromResult<ICollection<PrescriptionTemplate>>(new List<PrescriptionTemplate>());
        public Task<PrescriptionTemplate> RxDefsPOSTAsync(PrescriptionTemplateCreate body) => Task.FromResult(new PrescriptionTemplate());
        public Task<PrescriptionTemplate> RxDefsPUTAsync(int id, PrescriptionTemplateUpdate body) => Task.FromResult(new PrescriptionTemplate());
        public Task RxDefsDELETEAsync(int id) => Task.CompletedTask;

        public Task<InsuranceBenefitNotes> InsBenefitNotesGETAsync(int id) => Task.FromResult(new InsuranceBenefitNotes());
        public Task<InsuranceBenefitNotes> InsBenefitNotesPUTAsync(int id, InsuranceBenefitNotesUpdate body) => Task.FromResult(new InsuranceBenefitNotes());

        public Task<AppointmentView> ApptViewsGETAsync(int id) => Task.FromResult(new AppointmentView());
        public Task<AppointmentView> ApptViewsPUTAsync(int id, AppointmentViewUpdate body) => Task.FromResult(new AppointmentView());
        public Task ApptViewsDELETEAsync(int id) => Task.CompletedTask;

        public Task<Patient> PatientsAsync(int id) => Task.FromResult(new Patient());
        public Task EmailAsync(int id, PatientEmailUpdate body) => Task.CompletedTask;
        public Task<ICollection<PatientForm>> FormsAllAsync(int id) => Task.FromResult<ICollection<PatientForm>>(new List<PatientForm>());
        public Task<PatientForm> FormsAsync(int id, PatientFormCreate body) => Task.FromResult(new PatientForm());
    }
}

