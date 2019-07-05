import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DashBoard.dart';

class DashBoardCurrentOfferingsScreen extends StatefulWidget {
  @override
  _DashBoardCurrentOfferingsScreenState createState() =>
      _DashBoardCurrentOfferingsScreenState();
}

class _DashBoardCurrentOfferingsScreenState
    extends State<DashBoardCurrentOfferingsScreen> {
  var dashBoard = DashBoard();

  List subjectList=["Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021","Due January 11, 2021",];
  List sendersList=["CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",
    "CIBC Floating Market Rate GICs (2 years)(USD)",];
  @override
  Widget build(BuildContext context) {
    return Material(
        child: new Container(height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width ,
            child: new SingleChildScrollView(
              child: new ConstrainedBox(
                  constraints: new BoxConstraints(),
                  child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage("assets/images/offerngs_background.png"),height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width , fit: BoxFit.fill,),
                        Container( child: new Column(
                          children: <Widget>[
                            //new Padding(padding: EdgeInsets.only(top: 20.0)),
                SafeArea(minimum: const EdgeInsets.only(top:6.0),child: new Row(
                              ///mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Padding(padding: EdgeInsets.only(left: 15.0)),
                new Container(
                  padding: new EdgeInsets.all(8.0),child: new Image.asset("assets/images/menu.png", height: 50,width: 50,matchTextDirection: true,fit: BoxFit.contain,)),
                                new Padding(padding: EdgeInsets.only(right: 30.0)),
                                new Text(
                                  'Current Offerngs',
                                  style: TextStyle(fontSize: 21.0, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                new Padding(padding: EdgeInsets.only(right: 10.0, top: 8.0)),
                                new Image.asset(
                                  "assets/images/n_back.png",
                                  matchTextDirection: true,
                                ),
                              ],
                            )),
                            new Padding(padding: EdgeInsets.only(top: 17.0)),
                            new Container(
                              child: new Row(
                                children: <Widget>[
                                  new SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.width/2.9,
                                    child: new Card(
                                      margin:
                                      new EdgeInsets.only(left: 9.0, top: 8.0, bottom: 5.0, right: 4.5),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      elevation: 4.0,
                                      child: new Container(
                                        /*padding: new EdgeInsets.only(
                        top: 50.0, bottom: 50.0, left: 18 , right: 18),*/
                                        child: new Column(
                                          children: <Widget>[
                                            new Padding(padding: EdgeInsets.only(top: 24.0)),
                                            new Text(
                                              'MLCICs',
                                              style: new TextStyle(
                                                  height: 1.2,
                                                  fontFamily: 'Whitney-Semibld-Pro',
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w700,
                                                  color: dashBoard.hexToColor("#8B1D41")),
                                              textAlign: TextAlign.center,
                                            ),
                                            new Padding(padding: EdgeInsets.only(top: 4.0)),
                                            new Text(
                                              'Market Linked GICs',
                                              style: new TextStyle(
                                                  color: dashBoard.hexToColor("#717274")),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  new SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.width/2.9,
                                    child: new Card(
                                      margin:
                                      new EdgeInsets.only(left: 4.5, top: 8.0, bottom: 5.0, right: 4.5),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      elevation: 4.0,
                                      child: new Container(
                                        /*padding: new EdgeInsets.only(
                        top: 50.0, bottom: 50.0, left: 18 , right: 18),*/
                                        child: new Column(
                                          children: <Widget>[
                                            new Padding(padding: EdgeInsets.only(top: 24.0)),
                                            new Text(
                                              'PPNs',
                                              style: new TextStyle(
                                                  height: 1.2,
                                                  fontFamily: 'Whitney',
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: dashBoard.hexToColor("#8B1D41")),
                                              textAlign: TextAlign.center,
                                            ),
                                            new Padding(
                                              padding: EdgeInsets.only(
                                                  top: 4.0, left: 3.0, right: 2.0),
                                              child: Text(
                                                'Principal Protected Notes',
                                                style: new TextStyle(
                                                    color: dashBoard.hexToColor("#717274")),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  new SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.width/2.9,
                                    child: new Card(
                                      margin:
                                      new EdgeInsets.only(left: 4.5,top:8.0, bottom: 5.0, right: 9.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      elevation: 4.0,
                                      child: new Container(
                                        /*padding: new EdgeInsets.only(
                        top: 50.0, bottom: 50.0, left: 18 , right: 18),*/
                                        child: new Column(
                                          children: <Widget>[
                                            new Padding(padding: EdgeInsets.only(top: 24.0)),
                                            new Text(
                                              'PARs',
                                              style: new TextStyle(
                                                  height: 1.2,
                                                  fontFamily: 'Whitney',
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: dashBoard.hexToColor("#8B1D41")),
                                              textAlign: TextAlign.center,
                                            ),
                                            new Padding(
                                                padding: EdgeInsets.only(
                                                    top: 4.0, left: 2.0, right: 2.0)),
                                            new Text(
                                              'Principal At Risks Notes',
                                              style: new TextStyle(
                                                  color: dashBoard.hexToColor("#717274")),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new Container(
                                height: 300.0,
                                child: ListView.builder(
                                  itemBuilder: (context, position) {
                                    return Column(
                                      children: <Widget>[
                                        Row(
                                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Column(
                                             // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 240.0,
                                                   //EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                                                 child:Container(margin: new EdgeInsets.only(left: 15.0, top: 10), child: Text(
                                                    sendersList[position],
                                                    style: TextStyle( fontSize: 17.0, /*textAlign: TextAlign.center,*/),
                                                  ),
                                                )),

                                                SizedBox(width: 240.0,
                                                  //EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                                                  child:Container(margin: new EdgeInsets.only(left: 15.0, bottom: 25, top: 5), child:
                                                Text(
                                                  subjectList[position],
                                                  style: TextStyle(fontSize: 18.0),
                                                ))),
                                              ],
                                            ),
                                            /*Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Text(
                                                    "BOX",
                                                    style: TextStyle(color: Colors.grey),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(
                                                      Icons.bookmark_border,
                                                      size: 35.0,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),*/
                                          ],
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(left:15.0, right: 15.0),
                                       child: Divider(
                                          height: 2.0,
                                          color: dashBoard.hexToColor("#8B1D41"),
                                        ))
                                      ],
                                    );
                                  },
                                  itemCount: sendersList.length,
                                ),
                            )
                          ],
                        ))
                      ])),
            )));
  }
}
