import 'package:flutter/material.dart';
import 'qr_create_page.dart';
import 'qr_scan_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int currentindex=0;
 final screens = [
   Create_qr(),
   Scan_qr()
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: IndexedStack(
        index: currentindex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.black54,
        showUnselectedLabels: false,
        currentIndex: currentindex,
        onTap: (index) => setState(() =>currentindex=index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_rounded),label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner_rounded),label: "Scan")
        ],
      ),
    );
  }
}
