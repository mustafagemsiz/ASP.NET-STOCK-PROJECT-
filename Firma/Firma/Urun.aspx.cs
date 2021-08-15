using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma
{
    public partial class Urun : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var urun = db.TBL_URUN.ToList();
            Repeater1.DataSource = urun;
            Repeater1.DataBind();
        }
    }
}