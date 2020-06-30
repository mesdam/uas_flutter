import 'package:flutter/material.dart';
//import  halaman  yang  akan  diload  kemudian  beri  alias
import './beranda.dart' as beranda;
import './listproduk.dart' as listproduk;

//Top  Level/Root
void main() {
//harus  menggunakan  MaterialApp
  runApp(new MaterialApp(
    title: "tab  Bar",
    home: new AdminPage(),
  ));
}

//jangan  lupa  menggunakan  StatefulWidget
class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

//jangan  lupa  panggil  juga  SingleTickerProviderStateMixin
class _AdminPageState extends State<AdminPage>
    with SingleTickerProviderStateMixin {
//ini  variabel  controller  untuk  mengatur  tabbar
  TabController controller;
//jangan  lupa  tambahkan  initState  untuk  inisialisasi  dan  mengaktifkan  tab
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
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
            new beranda.MyHomePage(),
            new listproduk.ListProduk(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.list))
            ],
          ),
        ));
  }
}
