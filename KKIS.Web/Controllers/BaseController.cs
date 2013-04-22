using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Data.Services;

namespace KKIS.Web.Controllers
{
    public class BaseController : Controller
    {
        protected IKkisDataService KkisData = new KkisDataService();

        public BaseController(IKkisDataService kkisDataService)
        {
            this.KkisData = kkisDataService;
        }
    }
}
