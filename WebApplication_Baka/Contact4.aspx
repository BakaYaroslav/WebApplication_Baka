<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact4.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Andmed teenus</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="teenuseID" DataSourceID="SqlDataSource1" EmptyDataText="Andmed puuduvad." BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda" UpdateText="Salvesta" CancelText="Tühista" />
            <asp:BoundField DataField="teenuseID" HeaderText="teenuseID" ReadOnly="True" SortExpression="teenuseID" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:TemplateField HeaderText="hind" SortExpression="hind">
                <ItemTemplate>
                    <asp:Label ID="lblHind" runat="server" Text='<%# Eval("hind") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtHindEdit" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>" DeleteCommand="DELETE FROM [teenusSet] WHERE [teenuseID] = @teenuseID" InsertCommand="INSERT INTO [teenusSet] ([nimetus], [kirjeldus], [hind]) VALUES (@nimetus, @kirjeldus, @hind)" ProviderName="<%$ ConnectionStrings:arvutiremontConnectionString1.ProviderName %>" SelectCommand="SELECT [teenuseID], [nimetus], [kirjeldus], [hind] FROM [teenusSet]" UpdateCommand="UPDATE [teenusSet] SET [nimetus] = @nimetus, [kirjeldus] = @kirjeldus, [hind] = @hind WHERE [teenuseID] = @teenuseID">
        <DeleteParameters>
            <asp:Parameter Name="teenuseID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="hind" Type="Int32" />
            <asp:Parameter Name="teenuseID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<h2>Lisa teenus</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DefaultMode="Insert" CellPadding="4" DataKeyNames="teenuseID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="250px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="teenuseID" HeaderText="teenuseID" InsertVisible="False" ReadOnly="True" SortExpression="teenuseID" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:TemplateField HeaderText="hind" SortExpression="hind">
                <InsertItemTemplate>
                    <asp:TextBox ID="txtHind" runat="server" TextMode="Number" min="0" step="1" Text='<%# Bind("hind") %>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" InsertText="Lisa" ShowCancelButton="False" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    </main>
</asp:Content>