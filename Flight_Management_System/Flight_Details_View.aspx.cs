using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;
using System.Text;
using System.IO;
namespace Flight_Management_System
{
    public partial class Flight_Details_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            int rowIndex = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int ID = Convert.ToInt32((row.FindControl("Label1") as Label).Text);
            Flight_Detail f = Db.Flight_Details.FirstOrDefault(q => q.Flight_ID.Equals(ID));
            f.Flight_ID = Convert.ToInt32((row.FindControl("TextBox1") as TextBox).Text);
            f.Flight_Departure_Date = Convert.ToDateTime((row.FindControl("TextBox2") as TextBox).Text);
            f.Price = Convert.ToInt32((row.FindControl("TextBox3") as TextBox).Text);
            f.Available_Seats = Convert.ToInt32((row.FindControl("TextBox4") as TextBox).Text);
            Db.SubmitChanges();
            BindGrid();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

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
            Flight_Detail f = Db.Flight_Details.FirstOrDefault(q => q.Flight_ID.Equals(ID));
            Db.Flight_Details.DeleteOnSubmit(f);
            Db.SubmitChanges();
            BindGrid();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }

        }
        public void BindGrid()
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight_Detail>() select fms;
            GridView1.DataSource = flights;
            GridView1.DataBind();

        }
    }
}