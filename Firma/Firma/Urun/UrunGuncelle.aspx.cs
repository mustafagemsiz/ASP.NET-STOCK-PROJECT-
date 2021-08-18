using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Urun
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Page.IsPostBack == false)
                {
                    var kategori = (from x in db.TBL_KATEGORI select new { x.KATEGORIID, x.KATEGORIAD }).ToList();
                    DropDownList1.DataTextField = "KATEGORIAD";
                    DropDownList1.DataValueField = "KATEGORIID";
                    DropDownList1.DataSource = kategori;
                    DropDownList1.DataBind();

                    int id = Convert.ToInt32(Request.QueryString["URUNID"]);
                    var urun = db.TBL_URUN.Find(id);
                    TxtUrun.Text = urun.URUNAD;
                    TxtStok.Text = urun.URUNSTOK.ToString();
                    TxtMarka.Text = urun.URUNMARKA.ToString();
                    TxtFiyat.Text = urun.URUNFIYAT.ToString();
                    DropDownList1.SelectedValue = urun.URUNKATEGORI.ToString();

                }

        }

        protected void BtnKategoriEkle_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["URUNID"]);
                var urun = db.TBL_URUN.Find(id);
                urun.URUNAD = TxtUrun.Text;
                urun.URUNSTOK = short.Parse(TxtStok.Text);
                urun.URUNMARKA = TxtMarka.Text;
                urun.URUNFIYAT = decimal.Parse(TxtFiyat.Text);
                urun.URUNKATEGORI = byte.Parse(DropDownList1.SelectedValue.ToString());
                db.SaveChanges();
                Response.Redirect("Urun.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("/Page/Hata.aspx");
            }

        }
    }
}