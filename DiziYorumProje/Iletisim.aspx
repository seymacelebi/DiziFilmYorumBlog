<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DiziYorumProje.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>İLETİŞİM</h2>
                    <p>Blog sayfamızda film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşayacağınız herhangi bir
                        problem olursa bizlere bu panelden ulaşabilirsiniz.Mesaj gönderiminde mail adresinizin doğruluğundan emin olun.
                    </p>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                         <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu"></asp:TextBox>
                      <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="100"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>BİZ BURADAYIZ</h4>
                        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=istanbul&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.whatismyip-address.com/nordvpn-coupon/">nordvpn discount code</a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div>
                    
                    <div class="clearfix"></div>
                </div>



            </div>
        </div>
</asp:Content>
