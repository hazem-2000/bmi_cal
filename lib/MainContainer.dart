import 'package:flutter/material.dart';
class MainContainer extends StatelessWidget {

final child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 6, 20, 39),
          borderRadius: BorderRadius.circular(10)),
    );
}

  MainContainer({this.child});
}
