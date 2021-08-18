using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            var degerler = db.TBL_KATEGORI.ToList();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("/Page/Hata.aspx");
            }

        }
    }
}