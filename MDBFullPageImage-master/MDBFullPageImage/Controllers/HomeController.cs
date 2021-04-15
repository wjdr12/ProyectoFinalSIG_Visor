using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MDBFullPageImage.Models;

namespace MDBFullPageImage.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.RenderIntro = true;
            return View();
        }

       

        public ActionResult Visor(String Coordinates, String type)
        {
            

            List<vw_poblacion> vw_poblacion = new List<vw_poblacion>();

            if (Coordinates != null)
            {
                //Construct the data
                var NewShape = StringHelper.ChangeStringByShape(type, Coordinates);

                if (type == "rectangle")
                {
                    //Use MakeEnvelope
                    var WKT = GeospatialHelper.CreateRectangleWKT(NewShape);
                    //Use Intersects
                    vw_poblacion = GeospatialHelper.GetInformationByPolygon(WKT);
                }
                else if (type == "polygon")
                {
                    //Transform
                }
                else if (type == "marker")
                {
                    //Get nearest point

                }
            }
            else
            {
                vw_poblacion = GeospatialHelper.GetAllPeople();
            }
            ViewBag.RenderIntro = false;
            return View(vw_poblacion);
        }
    }
}