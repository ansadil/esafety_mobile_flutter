import 'package:flutter/material.dart';
import 'package:esafety/translations.dart';

class expandList extends StatelessWidget {
  double _width;
  double _height;
  double _icon_width = 10;
  double _icon_height = 10;
  bool isExpanded = false;
  expandList(this.isExpanded);
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: AnimatedCrossFade(
        firstChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: _firstChild(context)),
        secondChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: _secondChild(context),
        ),
        crossFadeState:
            isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: kThemeAnimationDuration,
      ),
    );



  }
  List<Widget> _firstChild(context){
   return [
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("ESTABLISHMENTS");
                  },
                  child: Image.asset(
                    'assets/images/company.png',
                    height: _height / _icon_height,
                    width: _width / _icon_width,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    Translations.of(context).text("establishments"),
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                      print('Routing to Properties item list');
                    },
                    child: Image.asset(
                      'assets/images/profiles.png',
                      height: _height / _icon_height,
                      width: _width / _icon_width,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    Translations.of(context).text("inspection_tasks"),
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(JOBS_ITEM_LIST);
                      print('Routing to Jobs item list');
                    },
                    child: Image.asset(
                      'assets/images/bar-chart.png',
                      height: _height / _icon_height,
                      width: _width / _icon_width,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    Translations.of(context).text("reports"),
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ];
  }
  List<Widget> _secondChild(context){
    return _firstChild(context)+[
      Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pushNamed(FURNITURE_ITEM_LIST);
                      print('Routing to Furniture item list');
                    },
                    child: Image.asset(
                      'assets/images/alarm.png',
                      height: _height / _icon_height,
                      width: _width / _icon_width,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    Translations.of(context).text("alarm"),
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            )
    ];
  }
}
