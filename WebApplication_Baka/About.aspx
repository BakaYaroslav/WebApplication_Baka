<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication_Baka.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Tabel Töötajad</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource1" EmptyDataText="Andmed puuduvad." BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda" UpdateText="Salvesta" CancelText="Tühista" />
            <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" ReadOnly="True" InsertVisible="False" SortExpression="tootajaID" />
            <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:tootajadConnectionString3 %>"
        SelectCommand="SELECT [tootajaID], [nimiPerenimi] FROM [tootajaSet]"
        InsertCommand="INSERT INTO [tootajaSet] ([nimiPerenimi]) VALUES (@nimiPerenimi)"
        UpdateCommand="UPDATE [tootajaSet] SET [nimiPerenimi] = @nimiPerenimi WHERE [tootajaID] = @tootajaID"
        DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID">
        <InsertParameters>
            <asp:Parameter Name="nimiPerenimi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimiPerenimi" Type="String" />
            <asp:Parameter Name="tootajaID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="tootajaID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <h2>
        <br />
        Lisa töötaja</h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="Insert" DataKeyNames="tootajaID" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="250px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
                <asp:CommandField ShowInsertButton="True" InsertText="Lisa" ShowCancelButton="False" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
    </p>
</asp:Content>