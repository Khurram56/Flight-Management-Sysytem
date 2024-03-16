using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;
namespace Flight_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                
                
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            int rowIndex = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
            int ID = Convert.ToInt32((row.FindControl("Label2") as Label).Text);
            Flight f = Db.Flights.FirstOrDefault(q => q.Airline_ID.Equals(ID));
            Db.Flights.DeleteOnSubmit(f);
            Db.SubmitChanges();
            BindGrid();


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        public void BindGrid()
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            var flights = from fms in Db.GetTable<Flight>() select fms;
            GridView1.DataSource = flights;
            GridView1.DataBind();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            DataClasses1DataContext Db = new DataClasses1DataContext(constring);
            int rowIndex = Convert.ToInt32(e.RowIndex);
            GridViewRow row = GridView1.Rows[rowIndex];
           //DropDownlist data load
            

            int ID = Convert.ToInt32((row.FindControl("TextBox5") as TextBox).Text);
            Flight f = Db.Flights.FirstOrDefault(q => q.Airline_ID.Equals(ID));
            f.Airline_ID = Convert.ToInt32((row.FindControl("DropDownList1") as DropDownList).SelectedItem.ToString());
            f.Airline_Name = (row.FindControl("DropDownList2") as DropDownList).SelectedItem.ToString();
            f.From_Location = (row.FindControl("DropDownList3") as DropDownList).SelectedItem.ToString();
            f.To_Location = (row.FindControl("DropDownList4") as DropDownList).SelectedItem.ToString();
            f.Departure_Time = (row.FindControl("TextBox1") as TextBox).Text;
            f.Arrival_Time = (row.FindControl("TextBox2") as TextBox).Text;
            f.Duration = (row.FindControl("TextBox3") as TextBox).Text;
            f.Total_Seats = Convert.ToInt32((row.FindControl("TextBox4") as TextBox).Text);
            Db.SubmitChanges();
            BindGrid();
        }
        protected void DropDownList1_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                String constring = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                DataClasses1DataContext Db = new DataClasses1DataContext(constring);
                var flights = from fms in Db.GetTable<Flight_Detail>() select fms;
                DropDownList D1 = (e.Row.FindControl("DropDownList1") as DropDownList);
                D1.DataSource = flights;
                D1.DataTextField = "Flight_ID";
                D1.DataValueField = "Flight_ID";
                D1.DataBind();

               

                }
            }
        }
    }
}