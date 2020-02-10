using System.Runtime.Serialization;

namespace Business.Constants
{

    public static class Messages
    {
        public static string AuthorizationsDenied = "Yetkiniz Olmayan Bir Alana Giriş Yapmaya Çalıştığınız Tespit Edildi!";
        public static string ProductAdded = "Ürün başarıyla eklendi.";
        public static string ProductDeleted = "Ürün başarıyla silindi.";
        public static string ProductUpdated = "Ürün başarıyla güncellendi.";
        public static string Added = "Başarıyla eklendi.";
        public static string Deleted = "Başarıyla silindi.";
        public static string Updated = "Başarıyla güncellendi.";

        public static string UserNotFound = "Kimlik Bilgileri Doğrulanamadı.";
        public static string PasswordError = "Kimlik Bilgileri Doğrulanamadı,Kullanıcı adı ve/veya parola hatalı.";
        public static string SuccessfulLogin = "Sisteme giriş başarılı.";
        public static string UserAlreadyExists = "Bu kullanıcı zaten mevcut.";
        public static string UserRegistered = "Kullanıcı başarıyla kaydedildi.";
        public static string AccessTokenCreated = "Access token başarıyla oluşturuldu.";

        public static string NameAlreadyExist = "Oluşturmaya Çalıştığınız Nesne Zaten Var.";


    }
}
