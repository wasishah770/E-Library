<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="E_Book_Library.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="datatables/cdn.datatables.net_1.13.4_css_jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="datatables/cdn.datatables.net_1.13.4_js_jquery.dataTables.min.js"></script>

    <style>
        tfoot input {
            width: 100%;
            padding: 3px;
            box-sizing: border-box;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="Marathi" Value="Marathi" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="German" Value="German" />
                                        <asp:ListItem Text="Urdu" Value="Urdu" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Book Cost(per unit)" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pages" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin: 9px 0 0 0;">
                            <div class="col-6">
                                <a id="Button1" class="btn btn-lg btn-block btn-success" style="height: auto;">Add</a>
                            </div>
                            <div class="col-6">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" Style="height: auto;" runat="server" Text="Update" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <table class="table table-striped table-bordered" id="tblBookInventory">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Book Name</th>
                                        <th>Pages</th>
                                        <th>Edition</th>
                                        <th>Description</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <asp:Literal ID="litBookInventory" runat="server"></asp:Literal>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Book Name</th>
                                        <th>pages</th>
                                        <th>Edition</th>
                                        <th>Description</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="datatables/cdn.datatables.net_1.13.4_js_jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).on('click', '#btnedit', function () {
            var id = $(this).attr('rowid');
            id = id.trim();
            var _data = JSON.stringify({ bookId: id })
            $.ajax({
                type: "POST",
                url: "../WebDataService.asmx/EditBook",
                data: _data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    debugger;
                    response = JSON.stringify(response);
                    var book = JSON.parse(response);
                    console.log(response);
                    if (book.length > 0) {
                        $('#ContentPlaceHolder1_TextBox1').val(book[0].BookId);
                        $('#ContentPlaceHolder1_TextBox2').val(book[0].BookName);
                        $('#ContentPlaceHolder1_DropDownList1').val(book[0].Language);
                        $('#ContentPlaceHolder1_DropDownList3').val(book[0].AuthorName);
                        $('#ContentPlaceHolder1_TextBox3').val(book[0].PublishDate);
                        $("#ContentPlaceHolder1_TextBox9").val(book[0].Eddition);
                        $("#ContentPlaceHolder1_TextBox10").val(book[0].BookCost);
                        $("#ContentPlaceHolder1_TextBox11").val(book[0].NoOfPages);
                        $("#ContentPlaceHolder1_TextBox4").val(book[0].ActualStock);
                        var genres = book[0].Genre.split(',');
                        $('#ContentPlaceHolder1_ListBox1').val(genres);
                    }
                },

                error: function (xhr, textStatus, error, response) {
                    console.dir(error);
                    alert("Error in Edditing the Book = " + error);
                    console.log(response);
                }
            });
        });

        $("#ContentPlaceHolder1_Button3").on("click", function () {
            var bookupdate = {};
            bookupdate.BookId = $("#ContentPlaceHolder1_TextBox1").val();
            bookupdate.BookName = $("#ContentPlaceHolder1_TextBox2").val();
            bookupdate.Language = $("#ContentPlaceHolder1_DropDownList1").val();
            bookupdate.PublishDate = $("#ContentPlaceHolder1_TextBox3").val();
            bookupdate.Eddition = $("#ContentPlaceHolder1_TextBox9").val();
            bookupdate.BookCost = $("#ContentPlaceHolder1_TextBox10").val();
            bookupdate.NoOfPages = $("#ContentPlaceHolder1_TextBox11").val();
            bookupdate.ActualStock = $("#ContentPlaceHolder1_TextBox4").val();
            bookupdate.Message = $("#ContentPlaceHolder1_TextBox6").val();


            var _data = JSON.stringify({ bookupdates: bookupdate })
            $.ajax({
                type: "POST",
                url: "../WebDataService.asmx/UpdateBook",
                data: _data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    debugger;
                    alert("Book Updated Successfully");
                    getbooks();
                },

                error: function (error) {
                    console.dir(error);
                    alert("Error in Updatig the Book = " + error);
                    console.log(error);
                },
            });
        });

        $(document).on('click', '#btndelete', function () {
            var id = $(this).attr('rowid');
            id = id.trim();
            var _data = JSON.stringify({ bookId: id })
            $.ajax({
                type: "POST",
                url: "../WebDataService.asmx/DeleteBook",
                data: _data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    alert("Book Deleted Successfully");
                },
                error: function (xhr, textStatus, error) {
                    console.dir(error);
                    console.log(error);
                }
            });
        });

        $(document).on('click', '#Button1', function () {
            var bookadd = {};
            bookadd.BookId = $("#ContentPlaceHolder1_TextBox1").val();
            bookadd.BookName = $("#ContentPlaceHolder1_TextBox2").val();
            bookadd.Language = $("#ContentPlaceHolder1_DropDownList1").val();
            bookadd.PublishDate = $("#ContentPlaceHolder1_TextBox3").val();
            bookadd.Eddition = $("#ContentPlaceHolder1_TextBox9").val();
            bookadd.BookCost = $("#ContentPlaceHolder1_TextBox10").val();
            bookadd.NoOfPages = $("#ContentPlaceHolder1_TextBox11").val();
            bookadd.ActualStock = $("#ContentPlaceHolder1_TextBox4").val();
            bookadd.Message = $("#ContentPlaceHolder1_TextBox6").val();


            var _data = JSON.stringify({ bookadds: bookadd })
            $.ajax({
                type: "POST",
                url: "../WebDataService.asmx/AddBook",
                data: _data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Book Added Successfully");
                },

                error: function (error) {
                    console.dir(error);
                    alert("Error in Adding the Book = " + error);
                    console.log(error);
                },
            });
        });


        $(function getbooks() {
            $.ajax({
                url: 'WebDataService.asmx/GetBooks',
                method: 'post',
                datatype: 'json',
                contentType: 'application/json, charset=utf-8',
                success: function (dataa) {
                    $("#tblBookInventory").DataTable({
                        "data": dataa,
                        "columns": [
                            { 'data': 'BookId' },
                            { 'data': 'BookName' },
                            { 'data': 'NoOfPages' },
                            { 'data': 'Eddition' },
                            { 'data': 'Message' },
                            { 'data': 'Action' }
                        ],
                        scrollX: true,
                        initComplete: function () {
                            this.api().columns().every(function () {
                                let column = this;
                                //let title = column.footer().textContent;
                                let title = column.header().textContent;
                                // Create input element
                                let input = document.createElement('input');
                                input.placeholder = title;
                                column.header().replaceChildren(input);

                                // Event listener for user input
                                input.addEventListener('keyup', () => {
                                    if (column.search() !== this.value) {
                                        column.search(input.value).draw();
                                    }
                                });
                            });
                        }
                    });
                },
                failure: function (fail) {
                    console.log(fail);
                },
                error: function (error) {
                    console.log(error);
                    alert("Data Tables ERROR: " + error);
                }
            });
        });

    </script>
    
</asp:Content>
