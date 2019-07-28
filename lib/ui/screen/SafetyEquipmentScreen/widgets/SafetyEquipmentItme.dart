import 'package:flutter/material.dart';

class SafetyEquipmentItme extends StatelessWidget {
  final Color color;

  SafetyEquipmentItme(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40.0,
                  child: Image.asset('assets/images/logo_1.png'),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
