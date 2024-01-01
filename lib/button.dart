import 'package:flutter/material.dart';

class button extends StatelessWidget {

final icon;
final fun;

button(this.icon,this.fun);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: fun,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 28, 31, 58),
    );
  }
}
