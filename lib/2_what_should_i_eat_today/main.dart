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

class YemekSayfasi extends StatelessWidget {
  int corbaNo =
      1; //Her butona basışta değişsin diye kulladık counter gibi ama StatelessWidget'ta tanıml lduğu için butona basıldığında kendini yenilemeyeceği için ekrandaki image değişmez
  int yemekNo = 1;
  int tatliNo = 1;

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
                onPressed: () {
                  corbaNo = 5;
                  print('Şu anda corbaNo değişkeninin değeri: $corbaNo');
                },
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          //Expanded ile kardeş widgetların ekranın boyutuna göre doğru alan kaplaması sağlanır. Flex ile kaplayacı boyut payda edilebilir. Flex kullanılmazsa eğer bu değer default olarak 1'dir zaten. Padding ile sarmak için Flutter Outline menüsünü kullandık. Eğer image'nin üzrine gelip Wrap With Padding deseydik, Expandad'lar doğru çalışmayacağı için resimler ekranda doğru bir şekilde yerlerini alamayacaklardı.
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  yemekNo = 5;
                  print('Şu anda yemekNo değişkeninin değeri: $yemekNo');
                },
                child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  tatliNo = 5;
                  print('Şu anda tatliNo değişkeninin değeri: $tatliNo');
                },
                child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
