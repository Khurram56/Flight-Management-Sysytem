using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flight_Management_System
{
    public partial class Card_Detail_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            int ID = Convert.ToInt32((row.FindControl("TextBox1") as TextBox).Text);
            Credit_Card_Detail f = Db.Credit_Card_Details.FirstOrDefault(q => q.Card_No.Equals(ID));
            f.Profile_ID = Convert.ToInt32((row.FindControl("DropDownList1") as DropDownList).SelectedItem.ToString());
            f.Card_No = Convert.ToInt32((row.FindControl("TextBox1") as TextBox).Text);
            f.Card_Type = (row.FindControl("TextBox2") as TextBox).Text;
            f.Expiration_Month=(row.FindControl("DropDownList2") as DropDownList).SelectedItem.ToString();
            f.Expiration_Year = (row.FindControl("TextBox3") as TextBox).Text;
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
            int ID = Convert.ToInt32((row.FindControl("Label2") as Label).Text);
            Credit_Card_Detail f = Db.Credit_Card_Details.FirstOrDefault(q => q.Card_No.Equals(ID));
            Db.Credit_Card_Details.DeleteOnSubmit(f);
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

        }
        public void BindGrid()
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Credit_Card_Detail>() select fms;
            GridView1.DataSource = flights;
            GridView1.DataBind();

        }
    }
}