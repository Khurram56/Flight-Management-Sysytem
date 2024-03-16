using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class FlightDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             

            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            Flight_Detail f = new Flight_Detail();
            f.Flight_ID = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            f.Flight_Departure_Date = Convert.ToDateTime(TextBox1.Text); ;
            f.Price = Convert.ToInt32(TextBox2.Text);
            f.Available_Seats = Convert.ToInt32(TextBox3.Text);
            
            Db.Flight_Details.InsertOnSubmit(f);
            Db.SubmitChanges();
        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {

            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight_Detail>() select fms.Flight_ID;
            DropDownList1.DataSource = flights;
            DropDownList1.DataBind();
        }
    }
}