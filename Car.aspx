<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] == null)
        {
            Iblmessage.Text = "購物車中尚未有產品!";
        }
        else
        {
            List<caritem> cart;
            cart = (List<caritem>)Session["cart"];
            GridView1.DataSouce = cart;
            GridView1.DataBind();
        }
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</asp:Content>

