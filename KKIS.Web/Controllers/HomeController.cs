using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KKIS.Models;

namespace KKIS.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View(new ContactModel());
        }

        [HttpPost]
        public ActionResult Index(ContactModel model)
        {
            if (ModelState.IsValid)
            {
                string email = ConfigurationManager.AppSettings["MainEmailAddress"];
            }
            return View(model);
        }
    }
}
