import 'package:esafety/store/establishment/establishments.dart';
import 'package:esafety/ui/screen/establishments/widgts/branchs_card.dart';
import 'package:esafety/ui/screen/establishments/widgts/establishment_card.dart';
import 'package:esafety/ui/screen/establishments/widgts/building_card.dart';
import 'package:esafety/ui/widgts/lodaer.dart';
import 'package:flutter/material.dart';
import 'package:esafety/translations.dart';
import 'package:esafety/ui/widgts/custom_shape.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class EstablishmentsScreen extends StatefulWidget {
  @override
  _EstablishmentsState createState() => _EstablishmentsState();
}

class _EstablishmentsState extends State<EstablishmentsScreen> {
  double _height;
  double _width;
  int _selectedEstablishment = 0;
  int _selectedBranch = 0;
  String showinlist = "establishments";
  Establishments _establishments;
  String titel;
  Lodaer _lodaer;
  @override
  Widget build(BuildContext context) {
    _lodaer = new Lodaer();
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _establishments = Provider.of<Establishments>(context);
    if (_establishments?.state != "done") {
      _establishments.getDataFromApi();
    }

    return Observer(
      builder: (_) => Scaffold(
        body: Directionality(
          textDirection: Translations.of(context).isRtl()
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: Stack(
            children: <Widget>[
              Container(
                height: _height,
                width: _width,
                child: SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[
                      clipShape(context),
                      if (showinlist == "establishments")
                        Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: _height / 5.5),
                            color: Colors.transparent,
                            child: SizedBox(
                              height: _height / 1.22,
                              child: ListView.builder(
                                  padding: EdgeInsets.all(5),
                                  shrinkWrap: true,
                                  itemCount: _establishments?.data?.length ?? 0,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (BuildContext context, index) {
                                    return _builderEstablishmentsList(
                                        context, index, _establishments.data);
                                  }),
                            )),
                      if (showinlist == "branchs")
                        Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: _height / 5.5),
                            color: Colors.transparent,
                            child: SizedBox(
                              height: _height / 1.22,
                              child: ListView.builder(
                                  padding: EdgeInsets.all(5),
                                  shrinkWrap: true,
                                  itemCount: _establishments
                                          ?.data[_selectedEstablishment]
                                          ?.establishment_branch
                                          ?.length ??
                                      0,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (BuildContext context, index) {
                                    return _builderBranchsList(
                                        context,
                                        index,
                                        _establishments
                                            .data[_selectedEstablishment]
                                            .establishment_branch);
                                  }),
                            )),
                      if (showinlist == "building")
                        Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, top: _height / 5.5),
                            color: Colors.transparent,
                            child: SizedBox(
                              height: _height / 1.22,
                              child: ListView.builder(
                                  padding: EdgeInsets.all(5),
                                  shrinkWrap: true,
                                  itemCount: _establishments
                                          .data[_selectedEstablishment]
                                          .establishment_branch[_selectedBranch]
                                          ?.branch_building
                                          ?.length ??
                                      0,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (BuildContext context, index) {
                                    return __builderBuilding(
                                        context,
                                        index,
                                        _establishments
                                            .data[_selectedEstablishment]
                                            .establishment_branch[
                                                _selectedBranch]
                                            .branch_building);
                                  }),
                            )),
                    ],
                  ),
                ),
              ),
              if (_establishments?.data[_selectedEstablishment]
                      .establishment_branch[_selectedBranch].state ==
                  "busy")
                _lodaer
            ],
          ),
        ),
      ),
    );
  }

  Widget _builderEstablishmentsList(BuildContext context, int index, List listItem) {
    return Observer(
      builder: (_) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedEstablishment = index;
              _selectedBranch = 0;
              showinlist = "branchs";
            });
          },
          child: EstablishmentCard(listItem[index])),
    );
  }

  Widget _builderBranchsList(BuildContext context, int index, List listItem) {
    return Observer(
      builder: (_) => GestureDetector(
          onTap: () {
            _selectedBranch = index;
            if (_establishments
                    .data[_selectedEstablishment]
                    .establishment_branch[_selectedBranch]
                    .branch_building_count >
                0) {
              if (_establishments.data[_selectedEstablishment]
                      .establishment_branch[_selectedBranch].state !=
                  "done") {
                _establishments.data[_selectedEstablishment]
                    .establishment_branch[_selectedBranch]
                    .getDataFromApi(listItem[index].id)
                    .then((r) {
                  setState(() {
                    showinlist = "building";
                  });
                });
              } else {
                setState(() {
                  showinlist = "building";
                });
              }
            }
          },
          child: BranchsCard(listItem[index])),
    );
  }

  Widget __builderBuilding(BuildContext context, int index, List listItem) {
    return Observer(
      builder: (_) => GestureDetector(
          onTap: () {
            
            Navigator.of(context).pushNamed("BUILDING",arguments: listItem[index]);
            setState(() {
              // _selectedEstablishment = index;
              // showinlist = "branchs";
            });
          },
          child: BuildingCard(listItem[index])),
    );
  }

  Widget clipShape(context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.25,
          child: ClipPath(
            clipper: CustomShapeClipper3(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40, top: _height / 10),
          child: Row(
            children: <Widget>[
              Opacity(
                opacity: showinlist == "establishments" ? 0 : 0.7,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (showinlist == "branchs")
                          showinlist = "establishments";
                        else if (showinlist == "building")
                          showinlist = "branchs";
                      });
                    },
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.pinkAccent,
                      size: _height / 20,
                    )),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "${(showinlist == "branchs" || showinlist == "building") ? _establishments.data[_selectedEstablishment].name : Translations.of(context).text(showinlist)}",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "${(showinlist != "establishments") ? (showinlist != "branchs" || showinlist == "building") ? _establishments.data[_selectedEstablishment].establishment_branch[_selectedBranch].name : Translations.of(context).text(showinlist) : ''}",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
            //color: Colors.blue,
            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(opacity: 0),
                Opacity(
                  opacity: 0,
                ),
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: _height / 30,
                      )),
                ),
              ],
            ))
      ],
    );
  }
}
