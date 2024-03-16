using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class Passenger_Profile_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            int rowIndex = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int ID = Convert.ToInt32((row.FindControl("PID") as Label).Text);
            Passenger_Detail f = Db.Passenger_Details.FirstOrDefault(q => q.Profile_ID.Equals(ID));
            f.First_Name= (row.FindControl("TextBox1") as TextBox).Text;
            f.Last_Name = (row.FindControl("TextBox2") as TextBox).Text;
            f.Address = (row.FindControl("TextBox3") as TextBox).Text;
            f.Tel_No = (row.FindControl("TextBox4") as TextBox).Text;
            f.Password = (row.FindControl("TextBox5") as TextBox).Text;
            f.Email_ID = (row.FindControl("TextBox6") as TextBox).Text;
            Db.SubmitChanges();
            GridView1.EditIndex = -1;
            BindGrid();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            int rowIndex = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int ID = Convert.ToInt32((row.FindControl("Label1") as Label).Text);
            Passenger_Detail f = Db.Passenger_Details.FirstOrDefault(q => q.Profile_ID.Equals(ID));
            Db.Passenger_Details.DeleteOnSubmit(f);
            Db.SubmitChanges();
            BindGrid();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        public void BindGrid()
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Passenger_Detail>() select fms;
            GridView1.DataSource = flights;
            GridView1.DataBind();

        }

    }
}