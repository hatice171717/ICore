﻿using A_ICore.Areas.Admin.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace A_ICore.Areas.Admin.Controllers
{
    [Area("Admin")]
    [AllowAnonymous]
    public class WriterController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult WriterList()
        {
            var jsonWriters = JsonConvert.SerializeObject(writers);
            return Json(jsonWriters);
        }
        public IActionResult GetWriterByID(int writerid)
        {
            var findwriter = writers.FirstOrDefault(x => x.Id == writerid);
            var jsonWriters = JsonConvert.SerializeObject(findwriter);
            return Json(jsonWriters);
        }

        public static List<WriterClass> writers = new List<WriterClass>()
        {
            new WriterClass
            {
                Id= 1,
                Name="Ayşe"
            },
             new WriterClass
            {
                Id= 2,
                Name="Ahmet"
            },
              new WriterClass
            {
                Id= 3,
                Name="Buse"
            }
        };
    }
}
