<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="JqueryValidation.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Description Page.</h2>
    </hgroup>

    <article>
        <p>        
            Information Page 1.
        </p>

        <p>        
            Information Page 2.
        </p>

        <p>        
            Information Page 3.
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Addition Information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>