<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InventoryControllerV1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



     <link href="Content/Css/jquery-ui.css" rel="stylesheet" />
    <div class="jumbotron">
        <h1>Add New Product</h1>
<%--        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>--%>
<%--        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>
    <div class="settings-frm-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red">*</asp:Label>
                    <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group ">
                    <asp:Label ID="lblOtherName" runat="server" Text="Alternative Name"></asp:Label>
                    <asp:TextBox ID="txtOtherName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Label ID="lblReqEventDesc" ForeColor="Red" runat="server">*</asp:Label>
                    <asp:Label ID="lblPrice" runat="server" Text="Product Price"></asp:Label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group ">
                    <asp:Label ID="lblProductQTY" runat="server" Text="Product QTY"></asp:Label>
                    <asp:TextBox ID="txtProductQTY" runat="server" CssClass="form-control"> </asp:TextBox>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group ">
                   <asp:Label ID="lblKilldd" runat="server">Measure</asp:Label>
                <asp:DropDownList ID="ddMeasure" runat="server" CssClass="form-control" onChange="javascript:SetKPReason(this.value);" />
                <asp:HiddenField ID="hndKillPlantReason" runat="server" Value="" />
                </div>
            </div>

        </div>
        <div style="padding-top: 1%;">

        <div class="modal-footer">
            <%--SHOW MESSAGES TO USER--%>
            <asp:Label ID="lblSREventErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
            <%--END - SHOW MESSAGES TO USER--%>

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <asp:Button ID="btnSaveNewProduct" runat="server" CssClass="btn btn-primary" Text="Save" ValidationGroup="Event" OnClick="btnSaveNewProduct_Click" />
        </div>        </div>

    </div>

        
</asp:Content>
