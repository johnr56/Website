<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html dir="rtl">
<title>BlueWorks</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<body>
    <!-- Header -->
    <header class="w3-container w3-theme w3-padding" id="myHeader">
        <div class="w3-center">
            <h4>BlueWorks</h4>
            <h1 class="w3-xxxlarge w3-animate-bottom">פתרון אונליין מושלם</h1>
            <div class="w3-padding-32">
                <button class="w3-btn w3-xlarge w3-dark-grey w3-hover-light-grey" onclick="document.getElementById('id01').style.display='block'" style="font-weight: 900;">צור קשר</button>
            </div>
        </div>
    </header>

    <!-- Modal -->
    <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-top">
            <header class="w3-container w3-theme-l1">
                <span onclick="document.getElementById('id01').style.display='none'"
                    class="w3-button w3-display-topleft">×</span>
                <h4>Oh snap! We just showed you a modal..</h4>
                <h5>Because we can <i class="fa fa-smile-o"></i></h5>
            </header>
            <div class="w3-padding">
                <p>Cool huh? Ok, enough teasing around..</p>
                <p>Go to our <a class="w3-btn" href="/w3css/default.asp">W3.CSS Tutorial</a> to learn more!</p>
            </div>
            <footer class="w3-container w3-theme-l1">
                <p>Modal footer</p>
            </footer>
        </div>
    </div>

    <div class="w3-row-padding w3-center w3-margin-top">

        <div class="w3-third">
            <div class="w3-card-2 w3-container" style="min-height: 460px">
                <h3>מקצועיות</h3>
                <br>
                <i class="fa fa-trophy w3-margin-bottom w3-text-theme" style="font-size: 120px"></i>
                <p>עבודה בכלים המקוצעיים ביותר</p>
                <p>גיבוי מלא בענן</p>
                <p>צוות מקצועי עם ניסיון</p>
                <p>מטפלים בכל הקשיים הטכניים במקומך</p>
            </div>
        </div>


        <div class="w3-third">
            <div class="w3-card-2 w3-container" style="min-height: 460px">
                <h3>מיתוג מלא</h3>
                <br>
                <i class="fa fa-diamond w3-margin-bottom w3-text-theme" style="font-size: 120px"></i>
                <p><b>מיתוג מלא לעסק שלך</b></p>
                <p>יצירת לוגו</p>
                <p>תמונות פרופיל לעיצוב פוסטים ברשתות החברתיות</p>
                <p>ניהול SEO ופרסום אונליין</p>
            </div>
        </div>
        <div class="w3-third">
            <div class="w3-card-2 w3-container" style="min-height: 460px">
                <h3>בניית אתר</h3>
                <br>
                <i class="fa fa-desktop w3-margin-bottom w3-text-theme" style="font-size: 120px"></i>
                <p><b>יוצרים בשבילך אתר</b></p>
                <p>עיצוב מודרני</p>
                <p>מתאים לכל גודל מסך</p>
                <p>מחשב, טאבלט, ומובייל</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="w3-container w3-theme-dark w3-padding-16">
        <h3>Footer</h3>
        <form runat="server">
            שם
        <asp:TextBox ID="txtName" runat="server" ValidationGroup="contact"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="txtName"></asp:RequiredFieldValidator>
            נושא
         <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
            מייל
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <asp:RegularExpressionValidator ID="valRegEx" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression=".*@.*\..*"
                ErrorMessage="*Invalid Email address."
                Display="dynamic">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            הודעה
 <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                ControlToValidate="txtBody"></asp:RequiredFieldValidator>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />

        </form>
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green"></asp:Label>

        <div style="position: relative; bottom: 55px;" class="w3-tooltip w3-left">
            <span class="w3-text w3-theme-light w3-padding">עלה/י למעלה</span>
            <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
                <i class="fa fa-chevron-circle-up"></i></span></a>
        </div>
    </footer>
</body>
</html>
