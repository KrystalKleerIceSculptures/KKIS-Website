using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Web.Models;

namespace KKIS.Web.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(IKkisDataService kkisdataService) : base(kkisdataService) { }

        public ActionResult Index()
        {
            return View(new ContactModel());
        }

        [HttpPost]
        public ActionResult Index(ContactModel model)
        {
            return View(model);
        }
    }
}
