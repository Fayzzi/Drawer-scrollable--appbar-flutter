import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.grey,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/60/60879.png'),
        ),
      ),
    );
  }
}
