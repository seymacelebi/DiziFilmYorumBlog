<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI</th>
            <th>BLOG</th>
            

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("YORUMID") %></td>
                    <td><%#Eval("KULLANICIADSOYAD") %></td>
                    <td><%#Eval("YORUMBLOG") %></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.Aspx?YORUMID=" + Eval("YORUMID")  %>' CssClass="btn btn-danger">SİL</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YorumGuncelle.Aspx?YORUMID=" + Eval("YORUMID")  %>' CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniBlog.Aspx" class="btn btn-primary">YENİ BLOG</a>


</asp:Content>
