# Sennedjem
Sennedjem CQRS (Command Query Responsibility Segregation) yaklaşımını benimseyen ve SOLID prensiplerini ve Clean Architecture yöntemlerini odaklayan bir yazılım geliştirme alt yapısıdır.

UtilityFiles Klasörü altında Türkçe dokümantasyonuna, kod üretecine ulaşabilirsiniz. 

Kod üretecinin geliştirilmesinde örnek olarak Halil İbrahim Duymaz'ın https://github.com/irpg7/NLayeredCommandMenu bu deposundan faydalanılmıştır.
Sennedjemgen.vsix dosyası Sennedjem Framework için tüm katmanların kod üretecidir. VS2019 için extension olarak hazırlanmıştır. Örnek kullanım videosuna youtube linki üzerinden erişim sağlayabilirsiniz. https://youtu.be/BAuzZNMaaJA

Her türlü desteğini gece gündüz esirgemeden veren https://github.com/irpg7 **Halil İbrahim Duymaz** kardeşime,
Fikir ve desteğini hiç esirgemeyip motivasyonumu kaybettiğim anda bile beni ayakta tutan https://github.com/kurtbogan88 **Murat Kurtboğan** kardeşime,
Geliştirmede öncülük ettiği için https://github.com/Engindemirog **Engin Demiroğ** Hocamıza çok özel teşekkürler..

SennedjemFw Nasıl Kullanılır.
=============================
**SennedjemFw** nasıl
kullanılacağıyla ilgili bir örnek yapmak istiyorum.

Öncelikle **SennedjemGen** isimli Visual Studio Extension
kurulur.![](./sfwMedia/media/image1.png){width="5.989583333333333in"
height="1.0729166666666667in"}

Bir **Entity** sınıfı oluşturulur ve **IEntity** **Interface**
kullanılarak **implemente** edilir. Örnek olarak basit bir Car Sınıfı
oluşturulmuştur.

![](./sfwMedia/media/image2.png){width="4.947916666666667in"
height="2.4583333333333335in"}

Bu sınıf üzerinde **Solution Explorer** üzerinde sağ tıklanır ve
**Sennedjem Generate All Layers For Entity** yardımıyla sınıfa ait tüm
proje ağacı oluşturulur gerekli klasörleriyle birlikte oluşturulur.

![](./sfwMedia/media/image3.png){width="2.5495199037620297in"
height="3.325in"}

Aşağıdaki gibi bir splash screen devreye girer bununla birlikte tüm
katmanlarda gerekli olan sınıflar ve kodlar yaratılır.

![](./sfwMedia/media/image4.png){width="4.733333333333333in"
height="1.6925634295713037in"}

Bununla birlikte örnek sınıf için yaratılan sınıfların ekran görüntüsü
aşağıda belirtilmiştir.

![](./sfwMedia/media/image5.png){width="2.325in"
height="2.316666666666667in"}

Şablon Sınıflar otomatik olarak yaratıldıktan sonra şu an için manuel
olarak yapılması gereken işlemler aşağıdaki gibi tanımlanacaktır.

DataAccess Katmanı
==================

**DataAccess-\>Concrete-\>EntityFramework-\>Contexts-\>ProjectDbContext**
içine **DbSet** Tanımlama işleminin yapılması gerekir.

![](./sfwMedia/media/image6.png){width="4.166666666666667in"
height="0.5in"}

Buna ek olarak özel bir mapping yapılacaksa
**DataAccess-\>Concrete-\>Configurations** klasörü altında yapılabilir
özel bir durum yoksa yapılmasına gerek yoktur.

Migrations için kullanacağınız veritabanına göre aşağıdaki komutları
çalıştırarak migrationlarınızı yapabilirsiniz.

// PostgreSQL

Add-Migration InitialCreate -Context ProjectDbContext -OutputDir Migrations/Pg

Update-Database -context ProjectDbContext

// Ms Sql Server

Add-Migration InitialCreate -context MsDbContext -OutputDir Migrations/Ms

Update-Database -context MsDbContext

Migration işlemlerini yaparken **Default Project** kısmında
**DataAccess** seçili olduğuna ve migrationun ismini
**değiştirdiğinize** emin olun. **İlk defa migration yapıyorsanız**
değişiklik yapmanıza **gerek yoktur**.

![](./sfwMedia/media/image7.png){width="6.3in"
height="1.4569444444444444in"}

Business Katmanı
================

İş kodlarının yazılacağı yerdir.

**Business-\>DependencyResolvers-\>BusinessModule.cs** sınıfına
**Autofac** için gerekli olan **Register** işlemi burada konfigüre
edilir.

![](./sfwMedia/media/image8.png){width="6.270833333333333in"
height="0.5208333333333334in"}

Bu sınıf aynı zaman da sistemin hangi veritabanı altyapısıyla
çalışacağının da belirtildiği yerdir. **SennedjemFw** default olarak 3
veri tabanına ayrı ayrı veya **multipleDb** şeklinde destek verebilir.
**PostgreSql**, **MsSql** ve **InMemoryDb**

![](./sfwMedia/media/image9.png){width="4.8125in"
height="0.3541666666666667in"}

Şekilde ki gibi bırakılırsa **PostgreSql** default veritabanı ile
çalışır. Bu konfigürasyonu ise WebAPI katmanında **appsettings** dosyası
içinden okur.

![](./sfwMedia/media/image10.png){width="6.3in"
height="0.7729166666666667in"}

MsSql için aşağıdaki şekilde ve

![](./sfwMedia/media/image11.png){width="6.3in"
height="0.4361111111111111in"}

InMemory için aşağıdaki şekilde konfigüre edilir.

![](./sfwMedia/media/image12.png){width="6.270833333333333in"
height="0.5833333333333334in"}

Bu aşamaları takiben **Solution Explorer** altında
**Business-\>Handlers-\>Cars-\>Commands** klasörüne gelinir.

Önce Request'ten yani angular, react, aspnet mvc, mobil, vb ön yüz
uygulamalarından gelmesi beklenen alanlar burada tanımlanır. Test
amacıyla api katmanında **Swagger** tanımlıdır.

![](./sfwMedia/media/image13.png){width="5.598589238845144in"
height="2.45in"}

Daha sonra aynı sınıf içindeki **Handle** Metodunun içi sınıfındaki
özelliklerine göre gerekli tanımlamalar yapılır.

![](./sfwMedia/media/image14.png){width="6.3in"
height="2.892361111111111in"}

**Business-\>Handlers-\>Cars** klasörü altında **Commands** ve **Query**
klasörlerinde bulunan tüm sınıflar için yukarıda bahsedilen kontrollerin
yapılması tavsiye edilir. Sennedjem Gen kod üreteci sürekli olarak
geliştirilmeye devam etmektedir. Tüm propertyleri de tanıyacak hale
getirilmesi için uğraşılmaktadır. Yukarıda bahsedilen işlerin
yapılmasına gerek kalmayacak hale getirilmesi planlanmaktadır.

WebAPI Katmanı
==============

Bu katman dış dünyayla haberleşmenin yapıldığı ilk giriş noktasıdır.
Handler'larda tanımlı olan tüm operasyonlar burada otomatik olarak
tanımlı gelir özellikle bir kontrol yapmaya gerek yoktur.
Controllerların içine yeni bir şey eklenmediği sürece özel bir
mekanizması bulunmamaktadır.

Swagger üzerinden api dökümantasyonunu zenginleştirmek isterseniz
Controllerlar üzerinde bulunan summaryleri düzgünce yazmanız apiyi
kullanacak olan geliştiriciler için faydalı olacaktır.

![](./sfwMedia/media/image15.png){width="6.3in"
height="5.124305555555556in"}

appsettings dosyası içinde tüm konfigürasyon yönetimi yapılır. Örneğin
RabbitMq,ElasticSearch,Mail, Veritabanı bağlantısı vb.

