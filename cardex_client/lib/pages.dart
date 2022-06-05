import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';


import 'pages/home.dart';
import 'pages/order.dart';
import 'pages/addcard.dart';
import 'pages/profile.dart';


List<AppBar> topBar = [
  AppBar(title: Text('Cardex')),
  AppBar(title: Text('Tytle2')),
  AppBar(title: Text('Tytle3')),
  AppBar(title: Text('Tytle4')),
];

List<Widget> page = [
    GeneralPage(),
    ToOrderPage(),
    AddCardPage(),
    ProfilePage(),
];

List<BottomBarItem> buttomBar = [

  BottomBarItem(
    icon: Icon(Icons.home_rounded),
    title: Text('ДОМОЙ'),
    activeColor: Colors.blue,
  ),
  BottomBarItem(
    icon: Icon(Icons.shopping_bag_rounded),
    title: Text('ЗАКАЗАТЬ'),
    activeColor: Colors.blue,
    darkActiveColor: Colors.blue.shade400, // Optional
  ),
  BottomBarItem(
    icon: Icon(Icons.list_rounded),
    title: Text('ДОБАВИТЬ'),
    activeColor: Colors.blue,
    darkActiveColor: Colors.blue.shade400, // Optional
  ),
  BottomBarItem(
    icon: Icon(Icons.person_rounded),
    title: Text('ПРОФИЛЬ'),
    activeColor: Colors.blue,
    darkActiveColor: Colors.blue.shade400,
  )

];