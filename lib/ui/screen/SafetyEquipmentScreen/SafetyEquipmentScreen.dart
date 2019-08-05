import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:esafety/store/safety_equipment/safety_equipment.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:esafety/store/qr_scan/qr_scan.dart';

final safety_equipment = SafetyEquipment(); // Instantiate the store
final qr = QrScan();
bool _inProgres = false;
TextEditingController _id = TextEditingController();

class SafetyEquipmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: _id,
                  onSubmitted: getSafetyEquipment,
                  decoration:
                      InputDecoration(hintText: "ادخل رقم معدة السلامة")),
              actions: <Widget>[
                if(!_inProgres) Container(
                  width: 50.0,
                  child: FlatButton(
                    child: Icon(
                      Icons.send,
                      color: Colors.orange[500],
                    ),
                    onPressed: () {
                      getSafetyEquipment("");
                    },
                  ),
                ),
                if(!_inProgres) Container(
                  width: 50.0,
                  child: FlatButton(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.orange[500],
                    ),
                    onPressed: scanSafetyEquipment,
                  ),
                )
              ],
              backgroundColor: Colors.amber[200],
              iconTheme: IconThemeData(color: Colors.black),
              elevation:
                  Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
            ),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                children: <Widget>[
                  if (safety_equipment.state)
                    Container(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Center(
                              child: Hero(
                                tag: 'safety_equipment',
                                child: FadeInImage(
                                  height: 150,
                                  fadeInCurve: Curves.bounceIn,
                                  placeholder: AssetImage("images/logo_1.png"),
                                  image: NetworkImage(
                                    safety_equipment.image_avatar_path.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding( padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                              child: Card(
                                child: Column(
                                  children: <Widget>[
                                    new ListTile(
                                      leading: const Icon(Icons.label),
                                      title:
                                          new Text("ID : ${safety_equipment.id}"),
                                    ),
                                    new ListTile(
                                      leading: const Text("النوع:"),
                                      title: new Text(
                                          "${safety_equipment.typeName}"),
                                    ),
                                    if (safety_equipment.serialNumber != null)
                                      new ListTile(
                                        leading: const Text("الرقم التسلسلي:"),
                                        title: new Text(
                                            "${safety_equipment.serialNumber}"),
                                      ),
                                    if (safety_equipment.adminigDateinService !=
                                        null)
                                      new ListTile(
                                        leading: const Text("تاريخ التركيب :"),
                                        title: new Text(
                                            "${safety_equipment.adminigDateinService}"),
                                      ),
                                    if (safety_equipment
                                            .warranty_expiration_date !=
                                        null)
                                      new ListTile(
                                        leading: const Text("تاريخ الضمان :"),
                                        title: new Text(
                                          "${safety_equipment.warranty_expiration_date}",
                                          style: TextStyle(
                                              color: safety_equipment
                                                      .is_expiration_warranty
                                                  ? Colors.red
                                                  : Colors.black),
                                        ),
                                      ),
                                      ButtonBar(children: <Widget>[
                                        FlatButton(color: Colors.amber,child: Text("تقييم المعدة"),onPressed: (){},),
                                      ],)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  if (!safety_equipment.state)
                    SizedBox(
                      child: Container(
                        padding: const EdgeInsets.all(30.0),
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              size: 100.0,
                              color: Colors.grey[400],
                            ),
                            Text("لم يتم تحديد أي عنصر")
                          ],
                        ),
                      ),
                    )
                ],
              ),
            )));
  }

  void getSafetyEquipment(String value) {
    _inProgres = true;
    safety_equipment.state = false;
    safety_equipment.getDataFromApi(_id.text.toString()).then((r){
      _inProgres = false;
    });
  }

  void scanSafetyEquipment() {
    _inProgres = true;
    qr.scan().then((code) {
      if ( code.isNotEmpty) {
        _id.text = code.toString();
        safety_equipment.getDataFromApi(code.toString());
      }
      _inProgres = false;
    });
  }
}
