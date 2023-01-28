using Microsoft.AspNetCore.Mvc;

namespace A_ICore.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
