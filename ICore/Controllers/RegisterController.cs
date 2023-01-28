using BusinessLayer.Concrete;
using BusinessLayer.ValidationRules;
using DataAccessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using EntityLayer.Concrete;
using FluentValidation.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace A_ICore.Controllers
{
    
    public class RegisterController : Controller
    {

        WriterManager wm = new WriterManager(new EfWriterRepository());
        Context c = new Context();
        [HttpGet]
        public IActionResult Index()
        {
            List<SelectListItem> values = (from x in c.Cities.ToList()
                                           select new SelectListItem
                                           {
                                               Text = x.CityName,
                                               Value = x.CityID.ToString()
                                           }).ToList();
            ViewBag.sehir = values;
            return View();
        }
        [HttpPost]
        public IActionResult Index(Writer p)
        {
            WriterValidator wv = new WriterValidator();
            ValidationResult results = wv.Validate(p);

            if (results.IsValid && p.WriterPassword == p.WriterPassword2)
            {

                p.WriterStatus = true;
                p.WriterAbout = "Deneme Test";
                wm.TAdd(p);
                return RedirectToAction("Index", "Blog");
            }

            else if (!results.IsValid)

            {
                foreach (var item in results.Errors)
                {
                    ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                }
            }

            else
            {
                ModelState.AddModelError("WriterPassword", "Girdiğiniz Şifreler Eşleşmedi Lütfen Tekrar Deneyin");
            }

            return View();

        }

    }
}
