using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KKIS.Models;
using KKIS.Services;

namespace KKIS.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController()
        {
            kkisDataService = new DataService();
        }

        public ActionResult Index()
        {
            ViewBag.Gallery = kkisDataService.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
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
