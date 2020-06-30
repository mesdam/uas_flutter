import 'package:flutter/material.dart';
import './detail_akun.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Beranda'),
              ]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Click  search');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print('Click  start');
              },
            ),
          ],
        ),
        body: new Column(
          children: <Widget>[
            Image.asset("assets/appimages/bunga8.jpg"),
            //setiap bagian body dipisahkan container
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(10),
              //untuk membuat tampilan secara horizontal maka digunakan row
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "ONI FLORIST STORE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Aplikasi Mobile Oni Florist dibuat untuk memudahkan penjualan. '
                'Jadikan bisnis Anda selangkah lebih inovatif,'
                'sajikan akses interaktif bebas hambatan ruang dan '
                'waktu bagi pelanggan dengan aplikasi mobile untuk bisnis!',
                softWrap: true,
              ),
            )
          ],
        ),

//widget  Drawer
        drawer: new Drawer(
//menggunakan  listView  agar  drawer  dapat  melebihi  width  devices
          child: new ListView(
            children: <Widget>[
//Drawer  Header  diisi  dengan  informasi  akun
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailAkun(
                      accountName: "Ni Kadek Mesi Damayanti",
                      accountEmail: "mesi@undiksha.ac.id",
                      backgroundImage: "foto.jpg",
                    ),
                  ));
                },
                child: UserAccountsDrawerHeader(
                  accountName: new Text("Ni Kadek Mesi Damayanti"),
                  accountEmail: new Text("mesi@undiksha.ac.id"),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage: AssetImage('assets/appimages/foto.jpg'),
                    ),
                  ),
//memberi  background  pada  Drawer  Header
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/appimages/bg.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
//Menu  Drawer
              new ListTile(
                title: new Text('Notifications'),
                trailing: new Icon(Icons.notifications_none),
              ),
              new ListTile(
                title: new Text('Wishlist'),
                trailing: new Icon(Icons.bookmark_border),
              ),
              new ListTile(
                title: new Text('Pengaturan Akun'),
                trailing: new Icon(Icons.account_box),
              ),
              RaisedButton(
                  child: Text("LogOut"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/MyHomePage');
                  }),
            ],
          ),
        ));
  }
}
