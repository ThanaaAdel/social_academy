import 'package:flutter/material.dart';
class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonWidget> createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.blueGrey,
            child:IconButton(onPressed: (){

            }, icon: const Icon(Icons.video_camera_back_rounded ,color: Colors.white,),),
          ),
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.blueGrey,
            child:IconButton(onPressed: (){

            }, icon: const Icon(Icons.add ,color: Colors.white,),),
          )
        ]
    );
  }
}
