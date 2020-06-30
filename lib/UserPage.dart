import 'package:flutter/material.dart';
//import  halaman  yang  akan  diload  kemudian  beri  alias
import './UserBeranda.dart' as beranda;
import './Produk.dart' as listproduk;
import './akun.dart' as akun;

//Top  Level/Root
void main() {
//harus  menggunakan  MaterialApp
  runApp(new MaterialApp(
    title: "tab  Bar",
    home: new UserPage(),
  ));
}

//jangan  lupa  menggunakan  StatefulWidget
class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

//jangan  lupa  panggil  juga  SingleTickerProviderStateMixin
class _UserPageState extends State<UserPage>
    with SingleTickerProviderStateMixin {
//ini  variabel  controller  untuk  mengatur  tabbar
  TabController controller;
//jangan  lupa  tambahkan  initState  untuk  inisialisasi  dan  mengaktifkan  tab
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

//jangan  lupa  tambahkan  dispose  untuk  berpindah  halaman
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//gunakan  widget  Scaffold
    return Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new beranda.UserBeranda(),
            new listproduk.Produk(),
            new akun.Akun(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.list)),
              new Tab(icon: new Icon(Icons.account_box))
            ],
          ),
        ));
  }
}
