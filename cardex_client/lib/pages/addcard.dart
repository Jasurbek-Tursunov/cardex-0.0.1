import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {


  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.red.shade100,
      child: Column(
        children:[
          DropzoneView(
            operation: DragOperation.copy,
            cursor: CursorType.grab,
            onLoaded: () => print('Zone loaded'),
            onError: (String? ev) => print('Error: $ev'),
            onHover: () => print('Zone hovered'),
            onDrop: (dynamic ev) => print('Drop: $ev'),
            onDropMultiple: (ev) => print('Drop multiple: $ev'),
            onLeave: () => print('Zone left'),
          )
        ]
      ),
    );
  }
}