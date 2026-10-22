<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact7.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Tabel tehnikuteenus</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="tehnikuteenusID" DataSourceID="SqlDataSource1" EmptyDataText="Andmed puuduvad." GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda" UpdateText="Salvesta" CancelText="Tühista" />

            <asp:TemplateField HeaderText="Teenus" SortExpression="nimetus">
                <ItemTemplate>
                    <asp:Label ID="lblTeenus" runat="server" Text='<%# Eval("nimetus") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlTeenusEdit" runat="server" DataSourceID="SqlDataSourceTeenus" DataTextField="nimetus" DataValueField="teenuseID" SelectedValue='<%# Bind("teenus_teenuseID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Tehnik" SortExpression="nimi">
                <ItemTemplate>
                    <asp:Label ID="lblTehnik" runat="server" Text='<%# Eval("nimi") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlTehnikEdit" runat="server" DataSourceID="SqlDataSourceTehnik" DataTextField="nimi" DataValueField="tehnikID" SelectedValue='<%# Bind("tehnik_tehnikID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="amet" HeaderText="Amet" ReadOnly="True" SortExpression="amet" />

            <asp:TemplateField HeaderText="Kuupäev" SortExpression="kuupaev">
                <ItemTemplate>
                    <asp:Label ID="lblKuupaev" runat="server" Text='<%# Eval("kuupaev", "{0:dd.MM.yyyy}") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtKuupaevEdit" runat="server" TextMode="Date" Text='<%# Bind("kuupaev", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvKuupaevEdit" runat="server" ControlToValidate="txtKuupaevEdit" ErrorMessage="Vali kuupäev" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>" ProviderName="<%$ ConnectionStrings:arvutiremontConnectionString1.ProviderName %>"
        SelectCommand="SELECT tu.tehnikuteenusID, tu.teenus_teenuseID, tu.tehnik_tehnikID, tu.kuupaev, te.nimetus, t.nimi, t.amet FROM tehnikuteenusSet tu LEFT JOIN teenusSet te ON tu.teenus_teenuseID = te.teenuseID LEFT JOIN tehnikSet t ON tu.tehnik_tehnikID = t.tehnikID"
        InsertCommand="INSERT INTO [tehnikuteenusSet] ([teenus_teenuseID], [tehnik_tehnikID], [kuupaev]) VALUES (@teenus_teenuseID, @tehnik_tehnikID, @kuupaev)"
        UpdateCommand="UPDATE [tehnikuteenusSet] SET [teenus_teenuseID] = @teenus_teenuseID, [tehnik_tehnikID] = @tehnik_tehnikID, [kuupaev] = @kuupaev WHERE [tehnikuteenusID] = @tehnikuteenusID"
        DeleteCommand="DELETE FROM [tehnikuteenusSet] WHERE [tehnikuteenusID] = @tehnikuteenusID">
        <DeleteParameters>
            <asp:Parameter Name="tehnikuteenusID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="teenus_teenuseID" Type="Int32" />
            <asp:Parameter Name="tehnik_tehnikID" Type="Int32" />
            <asp:Parameter Name="kuupaev" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="teenus_teenuseID" Type="Int32" />
            <asp:Parameter Name="tehnik_tehnikID" Type="Int32" />
            <asp:Parameter Name="kuupaev" Type="DateTime" />
            <asp:Parameter Name="tehnikuteenusID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceTeenus" runat="server" ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>" SelectCommand="SELECT teenuseID, nimetus FROM teenusSet">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceTehnik" runat="server" ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>" SelectCommand="SELECT tehnikID, nimi FROM tehnikSet">
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
    </main>
</asp:Content>