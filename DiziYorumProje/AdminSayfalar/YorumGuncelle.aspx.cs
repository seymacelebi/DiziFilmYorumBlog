using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        BlogDiziEntities1 db = new BlogDiziEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = Convert.ToInt32(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack == false)
            {

                var degerler = db.TBLYORUM.Find(y);
                TextBox5.Text = degerler.TBLBLOG.BLOGBASLIK;
                TextBox6.Text = degerler.KULLANICIADSOYAD;
                TextBox7.Text = degerler.YORUMICERIK;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["YORUMID"]);
            var yorum = db.TBLYORUM.Find(y);
            yorum.KULLANICIADSOYAD = TextBox6.Text;
            yorum.YORUMICERIK = TextBox7.Text;
            db.SaveChanges();
            Response.Redirect("Yorumlar.Aspx");

        }
    }
}