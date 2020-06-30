import 'package:flutter/material.dart';

void main() {
  runApp(Akun());
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Profile'),
              ]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('Click  setting');
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('Click  cart');
              },
            ),
            IconButton(
              icon: Icon(Icons.chat_bubble),
              onPressed: () {
                print('Click  chat');
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/appimages/herma.jpeg'),
                ),
                Text(
                  'Hermayanti',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    color: Colors.red[400],
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Theme.of(context).dividerColor)),
                  ),
                  //untuk membuat tampilan secara horizontal maka gunkan row
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //untuk membuat tampilan secara vertikal maka digunakan column
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.payment, color: Colors.blue),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "BAYAR",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.playlist_add_check, color: Colors.blue),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "DIKEMAS",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.send, color: Colors.blue),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "DIKIRIM",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.blue),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              "PENILAIAN",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                new ListTile(
                  title: new Text('Favorit Saya'),
                  trailing: new Icon(Icons.favorite),
                ),
                new ListTile(
                  title: new Text('Voucher Saya'),
                  trailing: new Icon(Icons.control_point),
                ),
                new ListTile(
                  title: new Text('Pengaturan Akun'),
                  trailing: new Icon(Icons.account_box),
                ),
                new ListTile(
                  title: new Text('Pusat Bantuan'),
                  trailing: new Icon(Icons.help),
                ),
                RaisedButton(
                    child: Text("LogOut"),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/MyHomePage');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
