using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Flight_Management_System
{
    public partial class TicketInfoview : System.Web.UI.Page
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
           Ticket_Detail f = Db.Ticket_Details.FirstOrDefault(q => q.Ticket_ID.Equals(ID));
            f.Profile_ID = Convert.ToInt32((row.FindControl("DropDownList1") as DropDownList).SelectedItem.ToString());
            f.Flight_ID = Convert.ToInt32((row.FindControl("DropDownList2") as DropDownList).SelectedItem.ToString());
            f.FD_ID= Convert.ToInt32((row.FindControl("DropDownList3") as DropDownList).SelectedItem.ToString());
            f.Status = (row.FindControl("DropDownList4") as DropDownList).SelectedItem.ToString();
            Db.SubmitChanges();
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
            Ticket_Detail f = Db.Ticket_Details.FirstOrDefault(q => q.Ticket_ID.Equals(ID));
            Db.Ticket_Details.DeleteOnSubmit(f);
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
        public void BindGrid()
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Ticket_Detail>() select fms;
            GridView1.DataSource = flights;
            GridView1.DataBind();

        }
        protected void GridView1_Load(object sender, EventArgs e)
        {

        }
    }
}