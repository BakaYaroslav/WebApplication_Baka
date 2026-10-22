<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Tabel amet</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametID" DataSourceID="SqlDataSource1" EmptyDataText="Andmed puuduvad." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda" UpdateText="Salvesta" CancelText="Tühista" />
            <asp:BoundField DataField="ametID" HeaderText="ametID" ReadOnly="True" SortExpression="ametID" />
            <asp:BoundField DataField="ametNimetus" HeaderText="ametNimetus" SortExpression="ametNimetus" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tootajadConnectionString4 %>" DeleteCommand="DELETE FROM [ametSet] WHERE [ametID] = @ametID" InsertCommand="INSERT INTO [ametSet] ([ametNimetus]) VALUES (@ametNimetus)" ProviderName="<%$ ConnectionStrings:tootajadConnectionString4.ProviderName %>" SelectCommand="SELECT [ametID], [ametNimetus] FROM [ametSet]" UpdateCommand="UPDATE [ametSet] SET [ametNimetus] = @ametNimetus WHERE [ametID] = @ametID">
        <DeleteParameters>
            <asp:Parameter Name="ametID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ametNimetus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ametNimetus" Type="String" />
            <asp:Parameter Name="ametID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<h2>Lisa amet</h2>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ametID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="250px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ametID" HeaderText="ametID" InsertVisible="False" ReadOnly="True" SortExpression="ametID" />
            <asp:BoundField DataField="ametNimetus" HeaderText="ametNimetus" SortExpression="ametNimetus" />
            <asp:CommandField ShowInsertButton="True" InsertText="Lisa" ShowCancelButton="False" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</p>
    </main>
</asp:Content>