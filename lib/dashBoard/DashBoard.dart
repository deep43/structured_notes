import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structurenodes/dashBoard/home/DashBoardHomeScreen.dart';
import 'package:structurenodes/dashBoard/transition/EnterExitRoute.dart';

import 'current_offerrings/DashBoardCurrentOfferingsScreen.dart';

class DashBoard extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(30.0),
        color: Colors.white12,
        child: new Container(
          child: new Center(
              child: new Column(children: [
            new Padding(padding: EdgeInsets.only(top: 45.0)),

            /* new TextFormField(
              decoration: new InputDecoration(
                labelText: " Search ",
                labelStyle: TextStyle(
                    fontSize: 20.0,
                    color: hexToColor("#D4D4D4"),
                    fontStyle: FontStyle.italic),
                fillColor: hexToColor("#8B1D41"),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  borderSide: new BorderSide(color: Colors.pink),
                ),
                //fillColor: Colors.green
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Email cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
            ),*/

            new Theme(
                data: new ThemeData(
                  primaryColor: hexToColor("#8B1D41"),
                  primaryColorDark: hexToColor("#8B1D41"),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    //borderSide: new BorderSide(color: hexToColor("#8B1D41"), width: 10.0),
                  ),
                  hintText: 'Search',
                  hintStyle:
                      TextStyle(color: hexToColor("#D4D4D4"), fontSize: 19.0),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(width: 1,color:hexToColor("#8B1D41")),
                      ),

                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(width: 3,color: hexToColor("#8B1D41")),
                      ),
                ), )),
            new Padding(padding: EdgeInsets.only(bottom: 55.0)),
            new GestureDetector(
              child: Text(
                'Home',
                style:
                    new TextStyle(color: hexToColor("#8B1D41"), fontSize: 25.0),
              ),
              onTap: () {
                /* Navigator.push(
                  context,
                     EnterExitRoute(exitPage:
                     this, enterPage: DashBoardHomeScreen()),
                );*/
                //Navigator.push(context, route)
                //Navigator.of(context).push( new MaterialPageRoute(builder: (context) => new DashBoardHomeScreen()),);
                Navigator.of(context).push(
                    CupertinoPageRoute<Null>(builder: (BuildContext context) {
                  return new DashBoardHomeScreen();


                }));
              },
            ),
            /*new Text(
                  'Home',
                  style: new TextStyle(
                      color: hexToColor("#8B1D41"), fontSize: 25.0),
                ),*/
            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            new GestureDetector(
              child: Text(
                'Current Offerings',
                style:
                    new TextStyle(color: hexToColor("#5A5C5E"), fontSize: 25.0),
              ),
              onTap: () {
                /*Navigator.of(context).push(
                    CupertinoPageRoute<Null>(builder: (BuildContext context) {
                  return new DashBoardCurrentOfferingsScreen();
                }));*/
              },
            ),
            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            new Text(
              'Previously Issued',
              style:
                  new TextStyle(color: hexToColor("#5A5C5E"), fontSize: 25.0),
            ),
            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            new Text(
              'Education Centre',
              style:
                  new TextStyle(color: hexToColor("#5A5C5E"), fontSize: 25.0),
            ),
            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            new Text(
              'Publication',
              style:
                  new TextStyle(color: hexToColor("#5A5C5E"), fontSize: 25.0),
            ),
            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            new SizedBox(
              width: 175.0,
              height: 45.0,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),elevation: 10.0,
                color: hexToColor("#8B1D41"),
                child: new Text(
                  'Log In',
                  style: new TextStyle(
                      color: hexToColor("#FFFFFF"), fontSize: 19.0),
                ),
                onPressed: () {},
              ),
            ),

            new Padding(padding: EdgeInsets.only(bottom: 25.0)),
            //new Padding(padding: EdgeInsets.only(top: 50.0)),
          ])),
        ));
  }
}
