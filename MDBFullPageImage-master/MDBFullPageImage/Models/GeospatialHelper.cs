using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;


namespace MDBFullPageImage.Models
{
    public class GeospatialHelper
    {

        public static string CreateRectangleWKT(string Shape)
        {
            try
            {
                string WKT = "";
                var Datos = Shape.Split(',');

                double d1 = Convert.ToDouble(Datos[0]);
                double d2 = Convert.ToDouble(Datos[1]);
                double d3 = Convert.ToDouble(Datos[2]);
                double d4 = Convert.ToDouble(Datos[3]);
                int SRID = 4326;
                
                string connectionString = ConfigurationManager.ConnectionStrings["metadato"].ToString(); 
                NpgsqlConnection conn = new NpgsqlConnection(connectionString);
                conn.Open();
                
                string Transact = "SELECT ST_AsText(ST_MakeEnvelope(@d1, @d2, @d3, @d4, @sr))";

                using (NpgsqlCommand cmd = new NpgsqlCommand(Transact, conn))
                {
                    cmd.Parameters.AddWithValue("@d1", d1);
                    cmd.Parameters.AddWithValue("@d2", d2);
                    cmd.Parameters.AddWithValue("@d3", d3);
                    cmd.Parameters.AddWithValue("@d4", d4);
                    cmd.Parameters.AddWithValue("@sr", SRID);
                    NpgsqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        WKT = dr[0].ToString();
                    }
                }

                conn.Close();
                return WKT;
            }
            catch(Exception ex)
            {
                return null;
            }
        }

        //public static List<vw_poblacion> GetInformationByPolygon(string NewPolygon)
        //{
        //    try
        //    {
        //        string connectionString = ConfigurationManager.ConnectionStrings["metadato"].ToString(); 
        //        NpgsqlConnection conn = new NpgsqlConnection(connectionString);
        //        conn.Open();
                
        //        List<vw_poblacion> Information = new List<vw_poblacion>();
                
        //        string Transact = "SELECT nombremunicipio,poblacionhombre,sexo FROM spatial.vw_poblacionGlobal WHERE ST_Intersects('SRID=4326;" + NewPolygon + "', geom)";
                
        //        using (NpgsqlCommand cmd = new NpgsqlCommand(Transact, conn))
        //        {
        //            NpgsqlDataReader dr = cmd.ExecuteReader();

        //            while (dr.Read())
        //            {
        //                vw_poblacion c = new vw_poblacion();
        //                c.nombremunicipio = dr[0].ToString();
        //                c.poblacionhombre = Convert.ToInt32(dr[1].ToString());
        //                c.sexo = dr[2].ToString();
                        
        //                Information.Add(c);
        //            }
        //        }

        //        conn.Close();
        //        return Information;

        //    }
        //    catch(Exception ex)
        //    {
        //        return null;
        //    }
        //}

        public static List<vw_poblacion> GetInformationByPolygon(string NewPolygon)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["metadato"].ToString();
                NpgsqlConnection conn = new NpgsqlConnection(connectionString);
                conn.Open();

                List<vw_poblacion> Information = new List<vw_poblacion>();

                string Transact = "SELECT nombremunicipio, poblacion ,sexo FROM spatial.vw_poblacionglobal WHERE ST_Intersects('SRID=4326;" + NewPolygon + "', geom)";

                using (NpgsqlCommand cmd = new NpgsqlCommand(Transact, conn))
                {
                    NpgsqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        vw_poblacion c = new vw_poblacion();
                        c.nombremunicipio = dr[0].ToString();
                        c.poblacion = Convert.ToInt32(dr[1].ToString());
                        c.sexo = dr[2].ToString();
                        //c.Lat = dr.IsDBNull(3) ? 0f : Convert.ToSingle(dr[3].ToString());
                        //c.Lng = dr.IsDBNull(4) ? 0f : Convert.ToSingle(dr[4].ToString());

                        Information.Add(c);
                    }
                }

                conn.Close();
                return Information;

            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static List<vw_poblacion> GetAllPeople()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["metadato"].ToString();
                NpgsqlConnection conn = new NpgsqlConnection(connectionString);
                conn.Open();

                List<vw_poblacion> Information = new List<vw_poblacion>();

                string Transact = "SELECT nombremunicipio,poblacion,sexo FROM spatial.vw_poblacionglobal";

                using (NpgsqlCommand cmd = new NpgsqlCommand(Transact, conn))
                {
                    NpgsqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        vw_poblacion c = new vw_poblacion();
                        c.nombremunicipio = dr[0].ToString();
                        c.poblacion = Convert.ToInt32(dr[1].ToString());
                        c.sexo = dr[2].ToString();
                        Information.Add(c);
                    }
                }

                conn.Close();
                return Information;

            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static List<vw_poblacionmujer> GetAllPeople2()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["metadato"].ToString();
                NpgsqlConnection conn = new NpgsqlConnection(connectionString);
                conn.Open();

                List<vw_poblacionmujer> Information = new List<vw_poblacionmujer>();

                string Transact = "SELECT nombremunicipio, poblacionmujer, sexo FROM spatial.vw_poblacionmujer";

                using (NpgsqlCommand cmd = new NpgsqlCommand(Transact, conn))
                {
                    NpgsqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        vw_poblacionmujer c = new vw_poblacionmujer();
                        c.nombremunicipio = dr[0].ToString();
                        c.poblacionmujer = Convert.ToInt32(dr[1].ToString());
                        c.sexo = dr[2].ToString();

                        Information.Add(c);
                    }
                }

                conn.Close();
                return Information;

            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}