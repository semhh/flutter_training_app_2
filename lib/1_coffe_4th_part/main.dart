import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp1(),
  );
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.min,  //Column widget'ı aağı kadar maximum şeklde uzamasın diye sadece kutuların aşağı yönlü boyutlarını kapsaması için yazılan kod.
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.center,
            //verticalDirection: VerticalDirection.up, //Column'u tersten dizer yani aşağıdan yukarıya
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white,
                width: 200,
                height: 100,
                child: Text('1. Container'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                //margin: EdgeInsets.symmetric(vertical: 20), //Kutular arasına boşluk vermek için kullanılır. Yada bunun için containerlar arasına sizedbox da atılabilir.
                width: 200,
                height: 100,
                color: Colors.pinkAccent,
                child: Text('2. Container'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.lightBlue,
                child: Text('3. Container'),
              ),
              /*Container(//Column ekranı yatayda doldurması için gerekli container
                width: double.infinity,
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
