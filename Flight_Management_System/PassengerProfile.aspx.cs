using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class PassengerProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            Passenger_Detail f = new Passenger_Detail();
            f.First_Name = TextBox1.Text;
            f.Last_Name = TextBox2.Text;
            f.Address = TextBox3.Text;
            f.Tel_No= TextBox4.Text;
            f.Email_ID = TextBox6.Text;
            f.Password= TextBox5.Text;
            
            Db.Passenger_Details.InsertOnSubmit(f);
            Db.SubmitChanges();

        }
    }
}