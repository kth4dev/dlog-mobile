import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {
  final String imagePath;

  const CircleImage({super.key,required this.imagePath,});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
         child: Image.asset(imagePath,height: 120,width : 120,fit: BoxFit.cover,),
    );
  }
}
