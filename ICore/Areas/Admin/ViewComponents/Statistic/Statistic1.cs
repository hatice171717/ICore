using BusinessLayer.Concrete;
using DataAccessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Linq;

namespace A_ICore.Areas.Admin.ViewComponents.Statistic
{
    public class Statistic1 : ViewComponent
    {
        BlogManager bm = new BlogManager(new EfBlogRepository());
        Context c = new Context();
        public IViewComponentResult Invoke()
        {
            ViewBag.v1 = bm.GetList().Count();
            ViewBag.v2 = c.Contacts.Count();
            ViewBag.v3 = c.Comments.Count();
            //Hava Durumunda sıkıntı var 101.video ama hoca yapmadı.
            string _api = "7cc153d134e2a6ebdbf706b53f65de19";
            string _connection = "https://api.openweathermap.org/data/2.5/weather?q=istanbul&mode=xml&lang=tr&units=metric&appid=" + _api;
            XDocument _document = XDocument.Load(_connection);
            ViewBag.weather = _document.Descendants("temperature").ElementAt(0).Attribute("value").Value;
            return View();
        }
    }
}
