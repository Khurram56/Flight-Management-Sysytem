using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class TicketInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Passenger_Detail>() select fms.Profile_ID;
            
            DropDownList1.DataSource = flights;
            DropDownList1.DataBind();
        }
        protected void DropDownList2_Load(object sender, EventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight>() select fms.Flight_ID;
            
            DropDownList2.DataSource = flights;
            DropDownList2.DataBind();
        }
        protected void DropDownList3_Load(object sender, EventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight_Detail>() select fms.FD_ID;
           
            DropDownList3.DataSource = flights;
            DropDownList3.DataBind();
        }
        protected void DropDownList4_Load(object sender, EventArgs e)
        {
            DropDownList4.Items.Add("Status");
            DropDownList4.Items.Add("Pending");
            DropDownList4.Items.Add("Booked");
            DropDownList4.Items.Add("Applied");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            Ticket_Detail f = new Ticket_Detail();
            f.Profile_ID= Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            f.Flight_ID = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
            f.FD_ID = Convert.ToInt32(DropDownList3.SelectedItem.ToString());
            f.Status = DropDownList4.SelectedItem.ToString();
             
            Db.Ticket_Details.InsertOnSubmit(f);
            Db.SubmitChanges();
        }
    }
}