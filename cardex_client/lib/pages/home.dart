import 'package:flutter/material.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {


  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Text('Ожидание доставки', style: TextStyle(fontSize: 30.0),),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(width: 300,color: Colors.blue,),
              Container(width: 300,color: Colors.red,),
              Container(width: 300,color: Colors.green,),
            ],
          ),
        ),
        


        Text('Звоните сегодня', style: TextStyle(fontSize: 30.0),),
        Expanded(
          flex: 4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(width: 300,color: Colors.blue,),
              Container(width: 300,color: Colors.red,),
              Container(width: 300,color: Colors.green,),
            ],
          ),
        ),
      ],

    );
  }
}