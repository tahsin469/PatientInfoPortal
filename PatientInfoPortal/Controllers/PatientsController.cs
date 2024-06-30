using Microsoft.AspNetCore.Mvc;
using PatientInfoPortal.Models.Interfaces;
using PatientInfoPortal.Models;

namespace PatientInfoPortal.Controllers
{
    public class PatientsController : Controller
    {
        private readonly IRepository<PatientInformation> _patientRepository;

        public PatientsController(IRepository<PatientInformation> patientRepository)
        {
            _patientRepository = patientRepository;
        }

        // GET: Patients
        public IActionResult Index()
        {
            var patients = _patientRepository.GetAll();
            return View(patients);
        }

        // GET: Patients/Details/5
        public IActionResult Details(int id)
        {
            var patient = _patientRepository.GetById(id);

            if (patient == null)
            {
                return NotFound();
            }

            return View(patient);
        }

        // GET: Patients/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Patients/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ID,Name,DateOfBirth,DiseaseInformationID,EpilepsyStatus,NCDID,AllergiesID")] PatientInformation patient)
        {
            if (ModelState.IsValid)
            {
                _patientRepository.Insert(patient);
                _patientRepository.Save();
                return RedirectToAction(nameof(Index));
            }
            return View(patient);
        }

        // GET: Patients/Edit/5
        public IActionResult Edit(int id)
        {
            var patient = _patientRepository.GetById(id);

            if (patient == null)
            {
                return NotFound();
            }
            return View(patient);
        }

        // POST: Patients/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("ID,Name,DateOfBirth,DiseaseInformationID,EpilepsyStatus,NCDID,AllergiesID")] PatientInformation patient)
        {
            if (id != patient.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                _patientRepository.Update(patient);
                _patientRepository.Save();
                return RedirectToAction(nameof(Index));
            }
            return View(patient);
        }

        // GET: Patients/Delete/5
        public IActionResult Delete(int id)
        {
            var patient = _patientRepository.GetById(id);

            if (patient == null)
            {
                return NotFound();
            }

            return View(patient);
        }

        // POST: Patients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            _patientRepository.Delete(id);
            _patientRepository.Save();
            return RedirectToAction(nameof(Index));
        }
    }

}
