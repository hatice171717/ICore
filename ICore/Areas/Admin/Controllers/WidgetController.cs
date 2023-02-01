using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace A_ICore.Areas.Admin.Controllers
{
    public class WidgetController : Controller
    {
        [Area("Admin")]
        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }
    }
}
