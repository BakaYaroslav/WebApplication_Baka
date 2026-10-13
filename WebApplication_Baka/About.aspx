<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication_Baka.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Tabel Töötajad</h2>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" ReadOnly="True" SortExpression="tootajaID" />
        <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tootajadConnectionString1 %>" DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID" InsertCommand="INSERT INTO [tootajaSet] ([nimiPerenimi]) VALUES (@nimiPerenimi)" ProviderName="<%$ ConnectionStrings:tootajadConnectionString1.ProviderName %>" SelectCommand="SELECT [tootajaID], [nimiPerenimi] FROM [tootajaSet]" UpdateCommand="UPDATE [tootajaSet] SET [nimiPerenimi] = @nimiPerenimi WHERE [tootajaID] = @tootajaID">
    <DeleteParameters>
        <asp:Parameter Name="tootajaID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nimiPerenimi" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nimiPerenimi" Type="String" />
        <asp:Parameter Name="tootajaID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
