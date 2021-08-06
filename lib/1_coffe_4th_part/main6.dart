import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'Satisfy'),  //Tüm uygulamada geçerli fontu değiştirmek için material app kısmına yazdık. Default olarak roboto
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('assets/images/coffe.jpg'),
                ),
                Text(
                  'Flutter Coffe Maker',
                  style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                Text(
                  'One Cup Away',
                  style: GoogleFonts.pacifico(
                    //Text style yerine Google Fonts kullandık. Kullanacağımız fontu tek tek aklemek yerine Google Fonts işi kolaylaştırıyor.
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Divider(
                    height: 30.0,
                    color: Colors.brown[900],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  //padding: EdgeInsets.all(10.0), Padding Card'da çalışmıyor.Row'a padding bağlayacağız. Wrap with padding ile.
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'flutter_coffe@hotmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.5,
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  //padding: EdgeInsets.all(10.0),  Card'da çalışmıyor.
                  color: Colors.brown,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '0312 270 34 23',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
