using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class FlightData : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            Flight f = new Flight();
            f.Airline_ID = Convert.ToInt32(TextBox1.Text);
            f.Airline_Name = DropDownList2.SelectedItem.ToString();
            f.From_Location = DropDownList3.SelectedItem.ToString();
            f.To_Location = DropDownList4.SelectedItem.ToString();
            f.Departure_Time =  TextBox2.Text;
            f.Arrival_Time = TextBox3.Text;
            f.Duration = TextBox4.Text;
            f.Total_Seats = Convert.ToInt32(TextBox5.Text);
            Db.Flights.InsertOnSubmit(f);
            Db.SubmitChanges();
             
        }

         
        protected void DropDownList2_Load(object sender, EventArgs e)
        {
            DropDownList2.Items.Add("Airline Name");
            DropDownList2.Items.Add("Pakistan International Airlines");
            DropDownList2.Items.Add("Air blue");
            DropDownList2.Items.Add("Askari Aviation");
            DropDownList2.Items.Add("Shaheen airline");
            DropDownList2.Items.Add("Serenair");
            DropDownList2.Items.Add("Deewan International Airlines");
        }

        protected void DropDownList3_Load(object sender, EventArgs e)
        {
            DropDownList3.Items.Add("From Location");
            DropDownList3.Items.Add("Pakistan (Isb)");
            DropDownList3.Items.Add("Pakistan (Karachi)");
            DropDownList3.Items.Add("Turkey");
            DropDownList3.Items.Add("America");
            DropDownList3.Items.Add("India");
            DropDownList3.Items.Add("Germany");

        }

        protected void DropDownList4_Load(object sender, EventArgs e)
        {
            DropDownList4.Items.Add("To Location");
            DropDownList4.Items.Add("Pakistan (Isb)");
            DropDownList4.Items.Add("Pakistan (Karachi)");
            DropDownList4.Items.Add("Turkey");
            DropDownList4.Items.Add("America");
            DropDownList4.Items.Add("India");
            DropDownList4.Items.Add("Germany");

        }
       
        

       
    }
}