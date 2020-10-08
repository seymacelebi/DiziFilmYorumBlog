<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Bloglar.aspx.cs" Inherits="DiziYorumProje.AdminSayfalar.Bloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>TARİH</th>
            <th>TÜR</th>
            <th>KATEGORi</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("BLOGID") %></td>
                    <td><%#Eval("BLOGBASLIK") %></td>
                    <td><%#Eval("BLOGTARIH") %></td>
                    <td><%#Eval("BLOGTUR") %></td>
                    <td><%#Eval("BLOGKATEGORI") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "BlogSil.Aspx?BLOGID=" + Eval("BLOGID")  %>' CssClass="btn btn-danger">SİL</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "BlogGuncelle.Aspx?BLOGID=" + Eval("BLOGID")  %>' CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniBlog.Aspx" class="btn btn-primary">YENİ BLOG</a>
</asp:Content>
