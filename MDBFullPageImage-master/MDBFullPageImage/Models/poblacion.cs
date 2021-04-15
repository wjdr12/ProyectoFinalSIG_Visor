using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MDBFullPageImage.Models
{
    public class vw_poblacion
    {
        public String nombremunicipio { get; set; }
        public  int poblacion { get; set; }
        public string sexo { get; set; }

        public float Lat { get; set; }
        public float Lng { get; set; }

    }
}