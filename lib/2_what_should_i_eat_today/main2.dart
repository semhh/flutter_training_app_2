import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'What Should I Eat Today?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Suyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                //Resimin üzerine tıklandığında çalışması için FlatButton Kullandık.
                //color: Colors.white,          //Butonun kendi rengi
                highlightColor: Colors.white, //Basılı tuttuğumuzda olan renk
                splashColor:
                    Colors.white, //Basılan noktadan yayılan renk efekti
                onPressed:
                    yemekleriYenile, //onPressed'de herhangi bir değer atamaya çalışmadığımız için parantez ile kullanmadık
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          //Expanded ile kardeş widgetların ekranın boyutuna göre doğru alan kaplaması sağlanır. Flex ile kaplayacı boyut payda edilebilir. Flex kullanılmazsa eğer bu değer default olarak 1'dir zaten. Padding ile sarmak için Flutter Outline menüsünü kullandık. Eğer image'nin üzrine gelip Wrap With Padding deseydik, Expandad'lar doğru çalışmayacağı için resimler ekranda doğru bir şekilde yerlerini alamayacaklardı.
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 200.0,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                /*setState(() {
                    corbaNo = Random().nextInt(5)+1;
                    yemekNo = Random().nextInt(5)+1;
                    tatliNo = Random().nextInt(5)+1;
                  });*/
                //print('Şu anda yemekNo değişkeninin değeri: $yemekNo');
                child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
              width: 200.0,
              child: Divider(
                height: 5.0,
                color: Colors.black,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: yemekleriYenile,
                child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
