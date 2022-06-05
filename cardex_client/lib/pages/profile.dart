import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{


  @override
  Widget build(BuildContext context) {
    
    return Column(  
      mainAxisAlignment: MainAxisAlignment.center,  
      children: [  
      //inverted selection button bar  
        AnimatedButtonBar(  
          radius: 25.0,  
          padding: const EdgeInsets.all(16.0),  
          invertedSelection: true,  
          children: [  
            ButtonBarEntry(onTap: () => print('First item tapped'), child: Text('День')),  
            ButtonBarEntry(onTap: () => print('Second item tapped'), child: Text('Неделя')),  
            ButtonBarEntry(onTap: () => print('Third item tapped'), child: Text('Месяц')),  
            ButtonBarEntry(onTap: () => print('Fourth item tapped'), child: Text('Год'))  
          ],  
        ),  
      //You can populate it with different types of widgets like Icon  
        AnimatedButtonBar(  
          radius: 32.0,  
          padding: const EdgeInsets.all(16.0),   
          elevation: 24,  
          borderWidth: 2,  
          innerVerticalPadding: 16,  
          children: [  
            ButtonBarEntry(onTap: () => print('First item tapped'), child: Icon(Icons.person)),  
            ButtonBarEntry(onTap: () => print('Second item tapped'), child: Icon(Icons.people)),  
          ],  
        ),  
      ],  
    );  
  }
}