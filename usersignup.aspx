<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Book_Library.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.7.0.slim.js" integrity="sha256-7GO+jepT9gJe9LB4XFf8snVOjX3iYNb0FHYr5LI1N5c=" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                    <h3>User Signup</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col-md-6 d-grid gap-2">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 d-grid gap-2">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col-md-6 d-grid gap-2">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 d-grid gap-2">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Email Address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col-md-4 d-grid gap-2">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Pubjab" Value="Punjab" />
                                        <asp:ListItem Text="Sindth" Value="Sindth" />
                                        <asp:ListItem Text="KPK" Value="KPK" />
                                        <asp:ListItem Text="Sarhad" Value="Sarhad" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 d-grid gap-2">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 d-grid gap-2">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col d-grid gap-2">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col d-grid gap-2">
                                <center>
                                    <span class="badge text-bg-primary">Login Credentials</span>
                                </center>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col-md-6 d-grid gap-2">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 d-grid gap-2">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0;">
                            <div class="col d-grid gap-2">
                                <div class="form-group d-grid gap-2">
                                    <asp:Button class="btn btn-success btn-lg " ID="Button1" style ="height: auto;" runat="server" Text="Sign Up"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $("#ContentPlaceHolder1_Button1").click(function () {
            debugger;
            var signup = {};
            signup.FullName = $("#ContentPlaceHolder1_TextBox1").val();
            signup.DOB = $("#ContentPlaceHolder1_TextBox2").val();
            signup.ContactNo = $("#ContentPlaceHolder1_TextBox3").val();
            signup.Email = $("#ContentPlaceHolder1_TextBox4").val();
            signup.State = $("#ContentPlaceHolder1_DropDownList1").val();
            signup.City = $("#ContentPlaceHolder1_TextBox6").val();
            signup.Pincode = $("#ContentPlaceHolder1_TextBox7").val();
            signup.FullAddress = $("#ContentPlaceHolder1_TextBox5").val();
            signup.MemberId = $("#ContentPlaceHolder1_TextBox8").val();
            signup.Password = $("#ContentPlaceHolder1_TextBox9").val();


            var _data = JSON.stringify({ signups: signup })
            $.ajax({
                type: "POST",
                url: "../WebDataService.asmx/SignUp",
                data: _data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    debugger;
                    alert("Signup Successfully");
                },

                error: function (error) {
                    console.dir(error);
                    alert("Error in SignUp = " + error);
                    console.log(error);
                },
            });
        });
    </script>
</asp:Content>
