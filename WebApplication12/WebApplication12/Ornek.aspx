<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ornek.aspx.cs" Inherits="WebUygulama.Ornek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     



 .image-container {
        display: flex;
        justify-content: space-around;
        align-items: center;
    }

    .evGorsel {
        text-align: center;
        margin: 10px; 
    }

    .evGorsel img {
        width: 200px;
        height: 200px;
    }

    .evIsim {
        margin-top: 10px;
    }


    .calendar-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .calendar {
        flex: 1;
        margin-right: 20px; 
    }




        .auto-style1 {
            text-align: left;
        }




        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: large;
        }




        .auto-style6 {
            margin-top: 10px;
            font-size: x-large;
        }




    </style>


   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    


<div class="image-container">
    
    <div class="evGorsel">
        <img class="auto-style3" src="oda.jpg" />
        <div class="auto-style2">ÖZEL ODA</div>
    </div>
    
    <div class="evGorsel">
        <img class="auto-style4" src="agacev.jpg" />
        <div class="auto-style2">AĞAÇ EV</div>
    </div>
    <div class="evGorsel">
        <img class="auto-style5" src="havuzluvilla.jpg" />
        <div class="auto-style6">HAVUZLU VİLLA</div>
    </div>
    <div class="evGorsel">
        <img class="auto-style6" src="karavan.jpg" />
        <div class="auto-style6">KARAVAN</div>
    </div>
    <div class="evGorsel">
        <img class="auto-style7" src="paylasimliev.jpg" />
        <div class="auto-style6">PAYLAŞIMLI ODA</div>
    </div>
</div>


     <div>
       
        <div>
            <label for="odaTipleri">Oda Tipi:</label>
            <asp:DropDownList ID="odaTipleri" runat="server" CssClass="auto-style2">
                <asp:ListItem Selected="True" Value="0">Kalacağınız yeri seçiniz.</asp:ListItem>
                <asp:ListItem Value="1">Özel Oda - 700TL</asp:ListItem>
                <asp:ListItem Value="2">Ağaç Ev - 1000TL</asp:ListItem>
                <asp:ListItem Value="3">Havuzlu Villa - 4000TL</asp:ListItem>
                <asp:ListItem Value="4">Karavan - 2500TL</asp:ListItem>
                <asp:ListItem Value="5">Paylaşımlı Oda - 350TL</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <div class="auto-style1">
            <label for="calendarGirisTarihi">Giriş Tarihi:</label>
            </div>
            <asp:Calendar ID="calendarGirisTarihi" runat="server" SelectionMode="DayWeekMonth" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" >
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#cd5c5c" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#cd5c5c" />
                <SelectedDayStyle BackColor="#cd5c5c" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#cd5c5c" />
                <TodayDayStyle BackColor="Gray" />
            </asp:Calendar>


             <div class="auto-style1">


             <label for="calendarCikisTarihi">Çıkış Tarihi:</label>
            </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkOgrenciIndirim" runat="server" CssClass="auto-style4" Text="Öğrenciyim" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnTamamla" runat="server" Text="Rezervasyonu Tamamla" OnClick="btnTamamla_Click" CssClass="auto-style4" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSonuc" runat="server" ForeColor="Black" CssClass="auto-style2"></asp:Label>
 <asp:Calendar ID="calendarCikisTarihi" runat="server" SelectionMode="DayWeekMonth" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" >
     <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
     <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#cd5c5c" VerticalAlign="Bottom" />
     <OtherMonthDayStyle ForeColor="#cd5c5c" />
     <SelectedDayStyle BackColor="#cd5c5c" ForeColor="White" />
     <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#cd5c5c" />
     <TodayDayStyle BackColor="Gray" />
 </asp:Calendar>




        </div>
        <div>
 

           
        </div>
        <div>
        </div>
        <div>
        </div>
    </div>


</asp:Content>
