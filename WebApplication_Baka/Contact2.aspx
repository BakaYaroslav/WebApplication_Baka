<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Ametitöötaja tabel&nbsp;</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ametiTootajaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="ametiTootajaID" HeaderText="ametiTootajaID" InsertVisible="False" ReadOnly="True" SortExpression="ametiTootajaID" />
            <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
            <asp:BoundField DataField="ametNimetus" HeaderText="ametNimetus" SortExpression="ametNimetus" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tootajadConnectionString5 %>" DeleteCommand="DELETE FROM [ametiTootajaSet] WHERE [ametiTootajaID] = @ametiTootajaID" InsertCommand="INSERT INTO [ametiTootajaSet] ([tootaja_tootajaID], [amet_ametID]) VALUES (@tootaja_tootajaID, @amet_ametID)" SelectCommand="SELECT ametiTootajaSet.ametiTootajaID, tootajaSet.nimiPerenimi, ametSet.ametNimetus FROM ametiTootajaSet INNER JOIN ametSet ON ametiTootajaSet.amet_ametID = ametSet.ametID INNER JOIN tootajaSet ON ametiTootajaSet.tootaja_tootajaID = tootajaSet.tootajaID" UpdateCommand="UPDATE [ametiTootajaSet] SET [tootaja_tootajaID] = @tootaja_tootajaID, [amet_ametID] = @amet_ametID WHERE [ametiTootajaID] = @ametiTootajaID">
        <DeleteParameters>
            <asp:Parameter Name="ametiTootajaID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
            <asp:Parameter Name="amet_ametID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
            <asp:Parameter Name="amet_ametID" Type="Int32" />
            <asp:Parameter Name="ametiTootajaID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    </main>
</asp:Content>
