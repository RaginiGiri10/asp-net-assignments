using Assignment_Mobile_Management_Templated.ADO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Assignment_Mobile_Management_Templated.Models
{
    public class MobileRepository
    {
        string connectionString = @"data source=(localdb)\MSSQLLocalDB;database=MobileDB;integrated security=SSPI";
        public void AddMobile(Mobile mobile)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = "sp_AddMobile";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    // open the sql connection.
                    connection.Open();

                    SqlParameter paramName = new SqlParameter { ParameterName = "@name", SqlDbType = SqlDbType.VarChar, Value = mobile.Name };
                    SqlParameter paramDescription = new SqlParameter { ParameterName = "@description", SqlDbType = SqlDbType.VarChar, Value = mobile.Description };
                    SqlParameter paramPrice = new SqlParameter { ParameterName = "@price", SqlDbType = SqlDbType.Int, Value = mobile.Price };
                    SqlParameter paramManufacturedBy = new SqlParameter { ParameterName = "@manufacturedBy", SqlDbType = SqlDbType.VarChar, Value = mobile.Manufacturer };
                    //Adding parameter instance to sql command.
                    command.Parameters.Add(paramName);
                    command.Parameters.Add(paramDescription);
                    command.Parameters.Add(paramPrice);
                    command.Parameters.Add(paramManufacturedBy);
                    command.ExecuteNonQuery();

                }
            }
        }

        public List<Mobile> GetMobiles()
        {
            List<Mobile> mobileList = new List<Mobile>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = "sp_viewAllMobilesAvailableInStore";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Connection = connection;
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Mobile mobile = new Mobile();
                        mobile.Id = Convert.ToInt32(reader["Id"]);
                        mobile.Name = Convert.ToString(reader["Name"]);
                        mobile.Description = Convert.ToString(reader["Description"]);
                        mobile.Price = Convert.ToInt32(reader["Price"]);
                        mobile.Manufacturer = Convert.ToString(reader["Manufacturer"]);
                        mobileList.Add(mobile);
                    }
                }

            }
            return mobileList;
        }

    }
}