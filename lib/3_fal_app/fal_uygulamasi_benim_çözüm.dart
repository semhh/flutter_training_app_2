import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(FalUygulamasi());
}

class FalUygulamasi extends StatefulWidget {
  @override
  _FalUygulamasiState createState() => _FalUygulamasiState();
}

class _FalUygulamasiState extends State<FalUygulamasi> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];
  int yanitCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              'GÜNÜN FALI',
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 40.0,
                  bottom: 20.0,
                ),
                width: 150.0,
                height: 150.0,
                child: Image.asset(
                  'assets/images/falci.png',
                ),
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 5.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    title: Text(
                      'AŞK DURUMU',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitCounter = Random().nextInt(4) + 1;
                  });
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 5.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.green,
                    ),
                    title: Text(
                      'PARA DURUMU',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitCounter = Random().nextInt(4) + 6;
                  });
                },
              ),
              GestureDetector(
                child: Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 5.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.explore,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'GÜNLÜK TAVSİYE',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitCounter = Random().nextInt(4) + 11;
                  });
                },
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    yanitlar[yanitCounter],
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
