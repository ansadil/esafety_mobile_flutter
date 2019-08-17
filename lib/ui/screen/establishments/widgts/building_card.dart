import 'package:cached_network_image/cached_network_image.dart';
import 'package:esafety/translations.dart';
import 'package:flutter/material.dart';
import 'package:esafety/store/branch_building/branch_building.dart';

class BuildingCard extends StatelessWidget {
  BranchBuilding _data;
  double _width;
  double _height;
  BuildingCard(this._data);
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
       

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: _width /3,
                child: Text("${_data?.name}",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: _height / 60),
                ),
              ),
              Container(
                width: _width / 2.75,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text("${_data?.description??""}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(2),
                        color: Colors.grey[200],
                        child: Text(
                          "${Translations.of(context).text("number_of_safety_equipments")}: ${_data.buildings_equipment_count.toString()}",
                          softWrap: true,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: _width / 2.25,
            height: _height / 5,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: CachedNetworkImage(
              placeholder:(context, url) => CircularProgressIndicator(),
              imageUrl:_data.image_avatar_path,
              fit: BoxFit.cover,
              height: _height / 4,
              width: _width / 4,
            ),
          ),
        ],
      ),
    );
  }
}
