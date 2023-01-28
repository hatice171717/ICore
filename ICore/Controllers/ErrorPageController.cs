using Microsoft.AspNetCore.Mvc;

namespace A_ICore.Controllers
{
    public class ErrorPageController : Controller
    {
        public IActionResult Error1(int code)
        {
            return View();
        }
    }
}
