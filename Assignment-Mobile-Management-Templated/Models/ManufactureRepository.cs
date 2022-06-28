using Assignment_Mobile_Management_Templated.ADO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Assignment_Mobile_Management_Templated.Models
{
    public class ManufactureRepository
    {
        string connectionString = @"data source=(localdb)\MSSQLLocalDB;database=MobileDB;integrated security=SSPI";

        public List<Manufacture> GetMobiles()
        {
            List<Manufacture> manufactureList = new List<Manufacture>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = "spGetManufacturer";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Manufacture manufacture = new Manufacture();
                        manufacture.Id = Convert.ToInt32(reader["Id"]);
                        manufacture.ManufacturedBy = Convert.ToString(reader["ManufacturedBy"]);
                        manufactureList.Add(manufacture);
                    }
                }

            }
            return manufactureList;
        }

    }
}