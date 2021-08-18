using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Login
{
    public partial class Login : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_ADMIN where x.KULLANICI == TxtKullaniciAdi.Text && x.SIFRE == TxtSifre.Text select x;
            if (sorgu.Any())
            {
                Session.Add("kullanici", TxtKullaniciAdi.Text);
                Response.Redirect("~/Satis/Satis.Aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Hatalı kullanıcı adı veya parola!');", true);
            }
        }
    }
}