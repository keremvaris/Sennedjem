## SFw Test Alt Yapısı

Bu bölümde SFw hizmetlerinin bağımlılıklar gerekmeden test edilebilmesi için 
yardımcı sınıflar ve kurgulanan test ayarları anlatılmaktadır.

SFw  bağımlılıkları nedeniyle test edilmesi nispeten güç bir sistemdir. Aşağıdaki
bağımlılıkları içerir:

- **HemOnline:** HemOnline'dan Bağışçı, Randevu, Seçenekler ve Bağış Planı nesnelerine
ihtiyaç duyar.
- **MERNİS:** Mernis sistemine kurumsal web servisinden erişerek kişi bilgilerini
getirir.
- **NDS:** Ulusal Bağış ve Red web servisinden bağışçı durumunu sorgular.
- **CRMEkip:** Kurumsal CRM sisteminden ekip planlarını sorgular.
- **CRMEtkinlik:** Kurumsal CRM sisteminden ekipteki etkinlikleri sorgular.
- **SMS:** Kurumsal SMS sistemi aracılığı ile bağışçıları bilgilendirir ve servisi
kullanarak tek seferlik şifre gönderir.
- **HemLogin:** Sistemi HemOnline kullanıcılarının kullanabilmesi için HemOnline
üzerinden Single SignOn hizmeti alır.
- **ActiveDirectory:** Gerektiğinde kurumun AD ve SSO hizmetlerine bağlanabilir.
- **SFwApi:** İç hizmetlerden Kullanıcı, Profil Yönetimi hizmetlerini kullanır.

Sistemin test edilebilmesi için, testin kapsamında göre yukarıda verilen hizmetleri
bir kısmı ya da tamamı için veri dönüşü ve gerektiğinde kaydı yapabilecek sahte (fake)
servislerin yazılması gerekmektedir.

Yazılım çözümünün Business.Fakes dizininde yukarıdaki servislerin **fake**leri
yazılmıştır. Her servis ve barındırdığı test verileri aşağıdaki bölümlerde açıklanmaktadır.


### Test İçin Kullanılan Aktörler

Aktörler sisteme Vatandaşlık Numarası ile girer.

- (TcKimlik:10000000101,Id:101): **Kan verebilecek** Uygun Bağışçı adlı bir bağışçıdır ve sisteme kayıtlı değildir.
Dolayısıyla bu kullanı üzerinden kayıt akışları çalıştırılabilir.
- (TcKimlik:10000000102,Id:102): **Geçici redli** Geçici Red adlı kullanıcıdır. Red testin yapıldığı tarihe 1 yıl
eklenerek hesaplanır. Önceden rastgele 2 bağışı vardır.
- (TcKimlik:10000000103,Id:103): **Kesin redli** Kesin Red adlı kullanıcıdır. Önceden rastgele 2 bağışı vardır.

### Tekrarlanabilir Test Mantığı

Testlerin tutarlı olarak çalışabilmesi için 
her çalışma başlangıcında test sistemi tarihe göre ayarlamalar yapar.

Ekip tarihlerini testin çalıştırıldığı aydan sonraki ayın ilk günü olarak hesaplar. Bu duruma
göre Nisan 2020'de 1 Mayıs 2020 için aşağıdaki ekipleri tanımlar:

Buna göre aşağıdaki bağış planlarını tanımlar:

- **Ankara Kızılay KAB (39.9201386,32.8534395):** 2 tamkan bağış yatağı ile yarım saatte 2 bağış, 1 aferez yatağı ile
2 saatte 1 bağış kabul eder.
- **Ankara Bilkent Şehir Hastanesi (39.901412,32.757045):** 2 bağış yatağı ile her yarım saatte 2 bağış kabul eder.

Yukarıdaki planların planId'leri sırasıyla 1 (ExternalId=1000000001) ve 
2 (ExternalId=1000000002) dir. ExternalId, HemOnline'ın diğer sistemlerle koordinasyon
için kullandığı sistemler arası eşsiz olan anahtardır.

1 Nolu bağışçı için 1 nolu plana randevu yaratmak için aşağıdaki komut kullanılabilir:

> **url:** Appointments
> **metot:** Post
``` json
body:
{
  "donorId": 1,
  "componentId": "WholeBlood",
  "planId": 1,
  "appointmentDate": "2020-05-01T10:00",
  "userId": 1,
  "cellPhone": "05550000100"
}
```

Bir plana ait zaman dilimlerine göre durumları almak için aşağıdaki komut kullanılır:

> **url:** DonationPlans/schedule
> **metot:** Get
``` json
queryString:
  ?externalId=1000000001
```


