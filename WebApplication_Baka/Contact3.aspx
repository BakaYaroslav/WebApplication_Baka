<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Lisa ametitöötaja veebivorm</h1>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
            DataKeyNames="ametiTootajaID" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="ametiTootajaID" HeaderText="ametiTootajaID"
                    InsertVisible="False" ReadOnly="True" />

                <asp:TemplateField HeaderText="Töötaja">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlTootaja" runat="server"
                            DataSourceID="SqlDataSourceTootaja"
                            DataTextField="nimiPerenimi" DataValueField="tootajaID"
                            SelectedValue='<%# Bind("tootaja_tootajaID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Amet">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlAmet" runat="server"
                            DataSourceID="SqlDataSourceAmet"
                            DataTextField="ametNimetus" DataValueField="ametID"
                            SelectedValue='<%# Bind("amet_ametID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowInsertButton="True" ShowCancelButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:tootajadConnectionString1 %>"
            SelectCommand="SELECT ametiTootajaID, tootaja_tootajaID, amet_ametID FROM ametiTootajaSet"
            InsertCommand="INSERT INTO ametiTootajaSet (tootaja_tootajaID, amet_ametID) VALUES (@tootaja_tootajaID, @amet_ametID)">
            <InsertParameters>
                <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
                <asp:Parameter Name="amet_ametID" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceTootaja" runat="server"
            ConnectionString="<%$ ConnectionStrings:tootajadConnectionString1 %>"
            SelectCommand="SELECT tootajaID, nimiPerenimi FROM tootajaSet">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceAmet" runat="server"
            ConnectionString="<%$ ConnectionStrings:tootajadConnectionString1 %>"
            SelectCommand="SELECT ametID, ametNimetus FROM ametSet">
        </asp:SqlDataSource>
    </main>
</asp:Content>