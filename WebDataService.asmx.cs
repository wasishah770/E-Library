using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Linq;
using System.Net.Mail;

namespace E_Book_Library
{
    [System.Web.Script.Services.ScriptService]
    public class WebDataService
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        DataClasses1DataContext signup = new DataClasses1DataContext();
        public class tbl_book
        {
            public string BookId { get; set; }
            public string BookName { get; set; }
            public string AuthorName { get; set; }
            public string Genre { get; set; }
            public string Language { get; set; }
            public string PublisherName { get; set; }
            public string PublishDate { get; set; }
            public string NoOfPages { get; set; }
            public string Eddition { get; set; }
            public string BookCost { get; set; }
            public string ActualStock { get; set; }
            public string CurrentStock { get; set; }
            public string Message { get; set; }
            public string BookImgLink { get; set; }
            public string Action { get; set; }

        }
        public class tbl_member
        {
            public string FullName { get; set; }
            public string DOB { get; set; }
            public string ContactNo { get; set; }
            public string Email { get; set; }
            public string State { get; set; }
            public string City { get; set; }
            public string Pincode { get; set; }
            public string FullAddress { get; set; }
            public string MemberId { get; set; }
            public string Password { get; set; }

        }
        private string connectionString;

        public WebDataService()
        {
            connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        }
        [WebMethod]
        public void GetBooks()
        {
            try
            {                JavaScriptSerializer _js = new JavaScriptSerializer();
                List<tbl_book> booklist = new List<tbl_book>();
                var st = (from s in db.book_master_tbls select s).ToList();

                foreach (var item in st)
                {
                    tbl_book obj = new tbl_book();
                    obj.BookId = Convert.ToString(item.book_id);
                    obj.BookName = Convert.ToString(item.book_name);
                    obj.AuthorName = Convert.ToString(item.author_name);
                    obj.Genre = Convert.ToString(item.genre);
                    obj.Language = Convert.ToString(item.language);
                    obj.PublisherName = Convert.ToString(item.publisher_name);
                    obj.PublishDate = Convert.ToString(item.publish_date);
                    obj.NoOfPages = Convert.ToString(item.no_of_pages);
                    obj.Eddition = Convert.ToString(item.eddition);
                    obj.BookCost = Convert.ToString(item.book_cost);
                    obj.ActualStock = Convert.ToString(item.actual_stock);
                    obj.CurrentStock = Convert.ToString(item.current_stock);
                    obj.Message = Convert.ToString(item.book_description);
                    obj.BookImgLink = Convert.ToString(item.book_img_link);
                    obj.Action = "<a class='btn btn-success' id='btnedit' rowid='" + obj.BookId + "'>Edit</a><a class='btn btn-danger' id='btndelete' rowid='" + obj.BookId + "'>Delete</a>";
                    booklist.Add(obj);
                }

                var js = new JavaScriptSerializer();
                js.MaxJsonLength = int.MaxValue;
                var json = js.Serialize(booklist);
                HttpContext context = HttpContext.Current;
                context.Response.ContentType = "application/json";
                context.Response.Write(json);
            }
            catch (Exception ex)
            {
                // Handle the exception here
            }
        }

        [WebMethod]
        public void DeleteBook(string bookId)
        {
            try
            {
                var st = (from s in db.book_master_tbls where s.book_id == bookId select s).First();
                db.book_master_tbls.DeleteOnSubmit(st);
                db.SubmitChanges();
            }
            catch (Exception ex)
            {

            }
        }
        [WebMethod]
        public void EditBook(string bookId)
        {
            JavaScriptSerializer _js = new JavaScriptSerializer();
            List<tbl_book> editbook = new List<tbl_book>();
            try
            {
                var st = (from s in db.book_master_tbls where s.book_id == bookId select s).First();
                tbl_book obj = new tbl_book();
                obj.BookId = Convert.ToString(st.book_id).Trim();
                obj.BookName = Convert.ToString(st.book_name);
                obj.Genre = Convert.ToString(st.genre);
                obj.Language = Convert.ToString(st.language).Trim();
                obj.PublishDate = Convert.ToString(st.publish_date).Trim();
                obj.NoOfPages = Convert.ToString(st.no_of_pages).Trim();
                obj.Eddition = Convert.ToString(st.eddition).Trim();
                obj.BookCost = Convert.ToString(st.book_cost).Trim();
                obj.ActualStock = Convert.ToString(st.actual_stock).Trim();
                obj.CurrentStock = Convert.ToString(st.current_stock);
                obj.Message = Convert.ToString(st.book_description).Trim();
                editbook.Add(obj);
                var js = new JavaScriptSerializer();
                js.MaxJsonLength = int.MaxValue;
                var json = js.Serialize(editbook);
                HttpContext context = HttpContext.Current;
                context.Response.ContentType = "application/json";
                context.Response.Write(json);
                context.Response.Flush();
                context.Response.End();
            }
            catch (Exception ex)
            {

            }
            //return bookinfo;
        }
        [WebMethod]
        public void UpdateBook(tbl_book bookupdates)
        {
            try
            {
                var st = (from s in db.book_master_tbls where s.book_id == bookupdates.BookId select s).First();
                st.book_name = bookupdates.BookName;
                st.publish_date = bookupdates.PublishDate;
                st.language = bookupdates.Language;
                st.eddition = bookupdates.Eddition;
                st.book_cost = bookupdates.BookCost;
                st.no_of_pages = bookupdates.NoOfPages;
                st.book_description = bookupdates.Message;
                st.actual_stock = bookupdates.ActualStock;
                db.SubmitChanges();
            }
            catch (Exception ex)
            {

            }
        }
        [WebMethod]
        public void AddBook(tbl_book bookadds)
        {
            try
            {
                var st = new book_master_tbl()
                {
                    book_id = bookadds.BookId,
                    book_name = bookadds.BookName,
                    publish_date = bookadds.PublishDate,
                    language = bookadds.Language,
                    eddition = bookadds.Eddition,
                    book_cost = bookadds.BookCost,
                    no_of_pages = bookadds.NoOfPages,
                    book_description = bookadds.Message,
                    actual_stock = bookadds.ActualStock,
                };
                db.book_master_tbls.InsertOnSubmit(st);
                db.SubmitChanges();
                MailMessage msg = new MailMessage("elibraryserviceinfo@gmail.com", "wasishah8283@gmail.com", "New Book Added in Database", "<h1>'" + bookadds.BookName + "' Created a new Account on E-Library</h1>");
                msg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("elibraryserviceinfo@gmail.com", "bashir654");
                client.Send(msg);
            }
            catch (Exception ex)
            {

            }
        }

        [WebMethod]
        public void SignUp(tbl_member signups)
        {
            try
            {
                var st = new member_master_tbl()
                {
                    full_name = signups.FullName,
                    dob = signups.DOB,
                    contact_no = signups.ContactNo,
                    email = signups.Email,
                    state = signups.State,
                    city = signups.City,
                    pincode = signups.Pincode,
                    full_address = signups.FullAddress,
                    member_id = signups.MemberId,
                    password = signups.Password,
                };
                db.member_master_tbls.InsertOnSubmit(st);
                db.SubmitChanges();
            }
            catch (Exception ex)
            {

            }
        }
    }
}
