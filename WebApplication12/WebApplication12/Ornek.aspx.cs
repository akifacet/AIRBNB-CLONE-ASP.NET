using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebUygulama
{
    public partial class Ornek : System.Web.UI.Page
    {
        private static readonly double[] OdaFiyatlari = { 0, 700, 1000, 4000, 2500, 350 };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTamamla_Click(object sender, EventArgs e)
        {
            DateTime simdikiTarih = DateTime.Now;
            DateTime girisTarihi = calendarGirisTarihi.SelectedDate;,++
            DateTime cikisTarihi = calendarCikisTarihi.SelectedDate;

            if (girisTarihi < simdikiTarih || cikisTarihi < simdikiTarih)
            {
                lblSonuc.Text = "Geçmiş tarihler ve bugün için rezervasyon yapılamaz.";
                return;
            }

            if (!IsValidReservation())
            {
                
                return;
            }

            int kalinanGunSayisi = (int)(cikisTarihi - girisTarihi).TotalDays;

            if (kalinanGunSayisi > 0)
            {
                
                if (odaTipleri.SelectedIndex <= 0)
                {
                    lblSonuc.Text = "Lütfen bir oda tipi seçin.";
                    return;
                }

                int secilenOdaIndex = odaTipleri.SelectedIndex;
                double odaFiyati = OdaFiyatlari[secilenOdaIndex];
                double toplamFiyat = kalinanGunSayisi * odaFiyati;

                
                if (kalinanGunSayisi >= 15 && secilenOdaIndex == 1) 
                {
                    double indirimOrani = 0.10;
                    double indirimMiktari = toplamFiyat * indirimOrani;
                    toplamFiyat -= indirimMiktari;
                }
                else if (kalinanGunSayisi >= 20 && secilenOdaIndex == 2) 
                {
                    double indirimOrani = 0.05;
                    double indirimMiktari = toplamFiyat * indirimOrani;
                    toplamFiyat -= indirimMiktari;
                }
                else if (kalinanGunSayisi >= 21 && secilenOdaIndex == 3) 
                {
                    double indirimOrani = 0.08;
                    double indirimMiktari = toplamFiyat * indirimOrani;
                    toplamFiyat -= indirimMiktari;
                }
                else if (kalinanGunSayisi >= 10 && secilenOdaIndex == 4) 
                {
                    double indirimOrani = 0.09;
                    double indirimMiktari = toplamFiyat * indirimOrani;
                    toplamFiyat -= indirimMiktari;
                }
                else if (kalinanGunSayisi >= 17 && secilenOdaIndex == 5) 
                {
                    double indirimOrani = 0.01;
                    double indirimMiktari = toplamFiyat * indirimOrani;
                    toplamFiyat -= indirimMiktari;
                }

               
                if (chkOgrenciIndirim.Checked)
                {
                    double ogrenciIndirimOrani = 0.50;
                    double ogrenciIndirimMiktari = toplamFiyat * ogrenciIndirimOrani;
                    toplamFiyat -= ogrenciIndirimMiktari;

                    lblSonuc.Text += $"\nÖğrenci indirimi uygulandı! %{ogrenciIndirimOrani * 100} indirim.";
                }

                lblSonuc.Text = $"Toplam Fiyat: {toplamFiyat:C}";
            }
            else
            {
                lblSonuc.Text = "Lütfen geçerli bir giriş ve çıkış tarihi seçin.";
            }
        }


        private bool IsValidReservation()
        {
            if (calendarGirisTarihi.SelectedDate == DateTime.MinValue || calendarCikisTarihi.SelectedDate == DateTime.MinValue)
            {
                lblSonuc.Text = "Lütfen giriş ve çıkış tarihlerini seçin.";
                return false;
            }

            return true;
        }
    }
}



