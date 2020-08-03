import 'package:flutter/material.dart';
import 'package:flutter_appmakanan/ResepPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(icon: const Icon(Icons.fastfood));
        }),
        title: Text('Makanan'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: listMakanan(),
    );
  }
}

class listMakanan extends StatefulWidget {
  @override
  _listMakananState createState() => _listMakananState();
}

class _listMakananState extends State<listMakanan> {
  List<String> judul = [
    'Nasi Goreng',
    'Soto Lamongan',
    'Soto Babat',
    'Pecel Lele',
    'Bakso',
    'Mie Ayam',
    'Rendang',
    'Sate',
    'Klepon',
    'Mie Aceh'
  ];

  List<String> bahan = [
    'Nasi Goreng ,1 piring nasi dingin ,5 bh cabe rawit ,3 bh bawang merah ,2 siung bawang putih ,1 btr telur ,1 sdm kecap manis ,1 sdm kecap asin ,1/2 sdt gula pasir ,1/2 sdt merica secukupnya Garam',
    '4 potong paha atas,2 fillet dada yo ,2000 ml air (kurleb),Minyak utk menumis,10 siung bawang merah,6 siung bawang putih,3 butir kemiri,2 ruas kunyit ruas kunyit,1 ruas jahe,1 sdm ebi rendam air,1 sdt ketumbar,1/2 sdt merica,4 lembar daun jeruk,2 lembar daun salam,2 ruas lengkuas geprek,1 batang serei geprek Secukupnya garam dan gula pasir Pelengkap Irisan daun bawang seledri Secukupnya Toge Secukupnya Bawang goreng Secukupnya Telor rebus Secukuonya soun Irisan Kol Jeruk nipis Koya (kerupuk udang + baput goreng blender)',
    '1/2 kg babat campur usus sapi, 4 siung bawang putih, 7 siung bawang merah, 3 butir kemiri, 1 ruas jahe, 1 sdt ketumbar, 1 batang sereh, 2 lembar daun jeruk, 1 sdm garam, 1 sdt gula, 1/2 bungkus roy*o, Secukupnya air, 1 batang daun pre, 1 buah jeruk nipis,1 batang seledri',
    '1 kg lele(isi 8), 1 jeruk nipis, 1,5 sdm garam, 1 sdt kaldu bubuk, 500 ml air',
    '250 gr daging sapi, 1 sdm maizena, 2 siung bawang putih (haluskan), 1 sdt merica bubuk, Sckp nya garam, 1/2 btr putih telur',
    '250 gr dada ayam, potong kotak, 2 buah ampela hati potong kotak, Daun bawang, Daun salam, Daun jeruk, Sereh geprek, Laos, Kecap, Gula jawa, Garam, Kaldu jamur bubuk, 5 siung bawang putih, 8 siung bawang merah, 2 ruas kunyit, 1 ruas jahe, 3 biji kemiri, Ketumbar, Merica',
    '1 kg daging sapi, 2 liter santan, 1 lembar daun kunyit, 5 lembar daun jeruk, 5 lembar daun salam, 1 buah asam kandis, 2 batang sereh, 250 gr cabe merah, 10 buah bawang merah, 5 siung bawang putih, 25 gram lengkuas, 25 gram jahe, 5 buah kemiri, 1/2 sendok teh pala bubuk, 1/2 sendok teh jintan, 1/2 sendok teh merica, 2 sendok teh ketumbar',
    'Daging Kambing, kecap',
    '500 gram tepung ketan rosebrand, 7 sdm tepung beras rosebrand, 1 bh kelapa parut kasar (agak tua dikit), Gula merah secukupnya (potong dadu kecil), secukupnya Garam, 2 lbr daun pandan, Pewarna makan hijau dan merah, secukupnya Air',
    '2 bks Mie basah, 1/4 Ayam, 1 ikat Sawi, 2 Sosis, 1 Telur, secukupnya Daun bawang, Bumbu halus, 10 bji cabe besar, 6 Bawang merah, 6 Bawang putih, 1 ruas Jahe, 5 Cabe rawit, Pala bubuk, Lada bubuk, Adas bubuk, Bahan tambahan, Bunga lawang, Kayu manis, minyak untuk menumis, gula, Micin, garam, penyedap',
  ];

  List<String> carabuat = [
    'Kocok telur beri sedikit garam. Panaskan minyak di wajan. Masukkan telur, bikin orak arik. Sisihkan Dg sisa minyak di wajan, tumis bawang merah, bawang putih dan cabe hingga harum. Masukkan nasi dan telur orak arik. Beri kecap2an, garam, gula dan merica. Aduk rata Masak sambil terus diaduk hingga nasi agak kering. Koreksi rasa. Angkat. Sajikan nasgor dg telur ceplok dan irisan timun',
    'Rebus air secukupnya hingga masak lalu masukan ayam dan fillet dada, kira2 10 menit air rebusan sy ganti yg baru, kemudian rebus ulang hingga matang, Tumis bumbu halus hingga harum setelah itu masukan ke dalam kuah rebusan ayam, Filet dada cukup di masak sampai matang lalu angkat tiriskan ketika sudah dingin lgs suwir suwir dan siapakan bahan pelengkap sambil nunggu kuah n bumbu tumis hingga tercampur pas kuahnya, Tata bahan pelengkap di mangkuk lalu siram kuah, Soto lamongan siap di santap',
    'Cuci bersih babat ususnya, kemudian rebus angkat cuci lagi buat ngilangin hitam hitamnya terus direbus lagi sampai empuk. (ditambah daun salam, jahe dan daun jeruk kalau mau buat ngilangin baunya), Tumis bumbu halus sampai harum, masukan gula, garam, daun jeruk dan sereh, Masukan babat kemudian tambahkan air sampai babatnya terendam ya, sesuai selera kalau mau kuahnya banyak bisa ditambah ya. Biarkan sampai mendidih, Setelah mendidih cek rasa terakhir masukan daun pre, seledri dan bawang putih goreng. Kalau suka bisa ditambahkan jeruk saat penyajian ya, Siap dinikmati. Selamat mencoba happy cooking.',
    'Kerat2 dan bersihkan lele lalu rendam dalam campuran air jeruk nipis beserta kulitnya, garam dan kaldu bubuk minimal 30 menit setelah itu goreng.. Ingat jangan dibolak balik alias biarka dia mateng disatu sisi dahulu ciri2 ya sudah tidak terdengar percikan air yang meletus letus baru balik mka lelemu akan cantik, sudah selesai',
    'Giling daging bumbu dan putih telur sampai halus dan lembut lalu masukan maizena aduk2 terus sampai tercampur rata, Lalu masak air sampai mendidih lalu matikan kompornya..siap di cetak masukan ke air panas sampai mengapung lalu angkat, Tarrra jadi deh...',
    'Tumis bumbu halus hingga harum, masukkan daun jeruk, daun salam, sereh, laos dan daun bawang, Masukkan ayam dan ampela, tumis sebentar lalu beri air. Tambahkan gula jawa, kecap, garam, kaldu jamur sesuai selera. Masak hingga ayam empuk dan air sedikit menyusut. Sisihkan, Kuah : rebus air hingga mendidih, tambahkan bawangputih geprek dan daun bawang didihkan sekitar 10menit, Rebus mi urai dan sawi secara terpisah, Beri sedikit kuah ayam kecap, lalu tata mie. Beri ayam kecap dan sawi.',
    'Potong daging sesuai selera lalu bersikan dengan air mengalir sebentar Rendang daging endulita langkah memasak Tumis bumbu halus yang sudah diblender bersama daun jeruk dan sereh sampai harum, Tuangkan santan 500ml secara bertahap lalu aduk-aduk sampai mendidih, Setelah santan pertama mendidih masukkan potongan daging, daun salam dan daun kunyit (masak dengan api sedang), Setelah santan sedikit menyusut masukan 500 ml lg santan dan masak kurang lebih 30 menit, Setelah 30 menit masukkan santan kental yang masih ada dan masak dengan api kecil kurang lebih 1 jam sampai keluar minyak.',
    'Bakar..., dan aduk dengan kecap yang sudah dicampur tomat, irisan cabai , dan bawang- bawangan',
    'Kukus parutan kelapa yg telah di parut kasih garam sedikit lalu kukus bersama daun pandan selama 20menit biar tdk cpt basi, Campur tepung ketan dan tepung beras,tuang air sedikit demi sedikit lalu uleni smp kalis jgn terlalu lembek ato terlalu keras nnt susah untuk di cetak,kemudian bagi 2 bagian untuk warna hijau dan merah, Panaskan air dan masukan daun pandan hingga mendidih lalu bikin bulatan kecil tekan tengah masukan gula jawa yg telah di potong kecil2 lalu bikin bulatan masukan ke dlm air mendidih tunggu smp bulatan mengapung kira2 5menit stlh mengapung angkat, Tunggu smp hangat kemudian bulirkan bulatan di atas kelapa yg sdh di kukus td kemudian tata di piring lalu sajikan selagi hangat2..selamat mencoba',
    'Pertama kita haluskan semua bumbu. Saya blender biar lebih halus, Setelahitu siapkan wajan dg sedikit minyak dan bumbu halus lalu kita masak hingga harus, Kocok telur dan goreng orak arik d wajan terpisah atau bisa sebelum menumis bumbu halus, Setelah bumbu mateng masukan mie.. Sawi ayam sosis telur sama bunga lawang dan kayu manis, Tambahkan gula garam penyedap dan adas bubuk pala bubuk lada bubuk koreksi rasa.. Terakhir daun bawang dan siapkan',
  ];

  List<String> gambar = [
    'images/nasigoreng.jpg',
    'images/sotolamongan.jpg',
    'images/sotobabat.jpg',
    'images/pecellele.jpg',
    'images/bakso.jpg',
    'images/mieayam.jpg',
    'images/rendang.jpg',
    'images/sate.jpg',
    'images/klepon.jpg',
    'images/mieaceh.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: judul.length,
          itemBuilder: (BuildContext context, int index) {
            final title = judul[index].toString();
            final ingredient = bahan[index].toString();
            final howto = carabuat[index].toString();
            final images = gambar[index].toString();
            return Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(images),
                    Container(
                      child: topContent(title),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResepPage(
                                itemTitle: title,
                                itemIngredients: ingredient,
                                itemHowto: howto,
                                itemImages: images,
                              )));
                },
              ),
            );
          }),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.luminosity),
          image: AssetImage(gambar),
        ),
      ),
    );
  }

  topContent(String title) {
    return new Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            title,
            style: bigHeaderTextStyle,
          ),
          Container(
            height: 2.0,
            width: 80.0,
            color: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');

final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);
