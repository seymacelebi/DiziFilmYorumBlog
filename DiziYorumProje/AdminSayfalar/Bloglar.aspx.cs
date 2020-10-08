using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        BlogDiziEntities1 db = new BlogDiziEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["KULLANICI"].ToString());
           if(Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: " + Session["KULLANICI"].ToString());
            }
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();
        }
    }
}