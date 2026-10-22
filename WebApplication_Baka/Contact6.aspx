<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact6.aspx.cs" Inherits="WebApplication_Baka.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h1 id="title">Lisa tehniku teenus veebivorm</h1>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
            DataKeyNames="tehnikuteenusID" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="tehnikuteenusID" HeaderText="tehnikuteenusID"
                    InsertVisible="False" ReadOnly="True" />

                <asp:TemplateField HeaderText="Tehnik">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlTehnik" runat="server"
                            DataSourceID="SqlDataSourceTehnik"
                            DataTextField="nimi" DataValueField="tehnikID"
                            SelectedValue='<%# Bind("tehnik_tehnikID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Teenus">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlTeenus" runat="server"
                            DataSourceID="SqlDataSourceTeenus"
                            DataTextField="nimetus" DataValueField="teenuseID"
                            SelectedValue='<%# Bind("teenus_teenuseID") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Kuupäev">
                    <InsertItemTemplate>
                        <asp:TextBox ID="txtKuupaev" runat="server" TextMode="Date" Text='<%# Bind("kuupaev") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvKuupaev" runat="server" ControlToValidate="txtKuupaev" ErrorMessage="Vali kuupäev" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowInsertButton="True" InsertText="Lisa" ShowCancelButton="True" CancelText="Tühista" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>"
            SelectCommand="SELECT tehnikuteenusID, tehnik_tehnikID, teenus_teenuseID, kuupaev FROM tehnikuteenusSet"
            InsertCommand="INSERT INTO tehnikuteenusSet (tehnik_tehnikID, teenus_teenuseID, kuupaev) VALUES (@tehnik_tehnikID, @teenus_teenuseID, @kuupaev)">
            <InsertParameters>
                <asp:Parameter Name="tehnik_tehnikID" Type="Int32" />
                <asp:Parameter Name="teenus_teenuseID" Type="Int32" />
                <asp:Parameter Name="kuupaev" Type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceTehnik" runat="server"
            ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>"
            SelectCommand="SELECT tehnikID, nimi FROM tehnikSet">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceTeenus" runat="server"
            ConnectionString="<%$ ConnectionStrings:arvutiremontConnectionString1 %>"
            SelectCommand="SELECT teenuseID, nimetus FROM teenusSet">
        </asp:SqlDataSource>
    </main>
</asp:Content>