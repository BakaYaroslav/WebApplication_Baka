<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact5.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Andmed tehnik</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tehnikID" DataSourceID="SqlDataSource1" EmptyDataText="Andmed puuduvad." Width="398px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda" UpdateText="Salvesta" CancelText="Tühista" />
            <asp:BoundField DataField="tehnikID" HeaderText="tehnikID" ReadOnly="True" SortExpression="tehnikID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="kontaktadmed" HeaderText="kontaktadmed" SortExpression="kontaktadmed" />
            <asp:BoundField DataField="amet" HeaderText="amet" SortExpression="amet" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>" DeleteCommand="DELETE FROM [tehnikSet] WHERE [tehnikID] = @tehnikID" InsertCommand="INSERT INTO [tehnikSet] ([nimi], [kontaktadmed], [amet]) VALUES (@nimi, @kontaktadmed, @amet)" ProviderName="<%$ ConnectionStrings:arvutiremontConnectionString1.ProviderName %>" SelectCommand="SELECT [tehnikID], [nimi], [kontaktadmed], [amet] FROM [tehnikSet]" UpdateCommand="UPDATE [tehnikSet] SET [nimi] = @nimi, [kontaktadmed] = @kontaktadmed, [amet] = @amet WHERE [tehnikID] = @tehnikID">
        <DeleteParameters>
            <asp:Parameter Name="tehnikID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kontaktadmed" Type="String" />
            <asp:Parameter Name="amet" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimi" Type="String" />
            <asp:Parameter Name="kontaktadmed" Type="String" />
            <asp:Parameter Name="amet" Type="String" />
            <asp:Parameter Name="tehnikID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<h2>Lisa tehnik</h2>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="Insert" DataKeyNames="tehnikID" DataSourceID="SqlDataSource1" Height="50px" Width="250px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="tehnikID" HeaderText="tehnikID" InsertVisible="False" ReadOnly="True" SortExpression="tehnikID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="kontaktadmed" HeaderText="kontaktadmed" SortExpression="kontaktadmed" />
            <asp:BoundField DataField="amet" HeaderText="amet" SortExpression="amet" />
            <asp:CommandField ShowInsertButton="True" InsertText="Lisa" ShowCancelButton="False" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
</p>
    </main>
</asp:Content>