<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 <form runat="server" class="form-group">
       
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Blog Başlık" Enabled="false"></asp:TextBox>
        <br />

          <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
        <br />

        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Blog İçerik" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />

        <asp:Button ID="Button2" runat="server" Text="Güncelle"  CssClass="btn btn-success" OnClick="Button2_Click" />
    </form>


</asp:Content>
 