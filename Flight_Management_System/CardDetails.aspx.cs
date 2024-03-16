using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class CardDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight_Detail>() select fms.FD_ID;

            DropDownList1.DataSource = flights;
            DropDownList1.DataBind();
        }

        protected void DropDownList2_Load(object sender, EventArgs e)
        {
            DropDownList2.Items.Add("Expiration Month");
            DropDownList2.Items.Add("January");
            DropDownList2.Items.Add("February");
            DropDownList2.Items.Add("March");
            DropDownList2.Items.Add("April");
            DropDownList2.Items.Add("May");
            DropDownList2.Items.Add("June");
            DropDownList2.Items.Add("July");
            DropDownList2.Items.Add("August");
            DropDownList2.Items.Add("September");
            DropDownList2.Items.Add("October");
            DropDownList2.Items.Add("November");
            DropDownList2.Items.Add("December");
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            Credit_Card_Detail f = new Credit_Card_Detail();
            f.Profile_ID = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            f.Card_No = Convert.ToInt32(TextBox1.Text);
            f.Card_Type = TextBox2.Text;
            f.Expiration_Month = DropDownList2.SelectedItem.ToString();
            f.Expiration_Year = TextBox3.Text;
            Db.Credit_Card_Details.InsertOnSubmit(f);
            Db.SubmitChanges();
        }
    }
}