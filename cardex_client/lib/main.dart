import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CARDEX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primarySwatch: Colors.blue ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: topBar[_index],

      body: PageView(
        controller: _pageController,
        children: page,
        onPageChanged: (index) { setState(() => _index = index); },
      ),

      bottomNavigationBar: BottomBar(
        selectedIndex: _index,
        items: buttomBar,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _index = index);
        },
      ), 
      
    );
  }
}