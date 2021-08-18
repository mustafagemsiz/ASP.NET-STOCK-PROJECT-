using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Firma
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string id = Session["kullanici"].ToString();
                Session.Add("kullanici", id);
            }
            catch (Exception)
            {

                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
}