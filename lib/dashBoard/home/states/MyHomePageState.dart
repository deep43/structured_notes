import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../DashBoardHomeScreen.dart';
import 'package:structurenodes/dashBoard/DashBoard.dart';
import 'package:drawerbehavior/drawerbehavior.dart';

//import 'package:carousel_slider/carousel_slider.dart';
class MyHomePageState extends State<DashBoardHomeScreen> {
  // List<String> images=["https://www.textuar.com/blog/wp-content/uploads/2017/11/free-images-for-content-writing-768x384.png"];
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: DrawerScaffold(
      appBar: AppBarProps(
          title: Text(
            'CIBC Structured Notes',
          ),
          elevation: 0,
          backgroundColor: Colors.grey,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ]),
      menuView: new MenuView(
        menu: menu,
        headerView: headerView(context),
        animation: false,
        color: Colors.white,
        selectedItemId: selectedMenuItemId,
        selectorColor: DashBoard().hexToColor("#8B1D41"),
        onMenuItemSelected: (String itemId) {
          selectedMenuItemId = itemId;
          if (itemId == 'restaurant') {
            setState(() => _widget = Text("1"));
          } else {
            setState(() => _widget = Text("default"));
          }
        },
      ),
      contentView: Screen(
        contentBuilder: (context) => ContentView(),
        color: Colors.white,
      ),
    ));
  }

  final menu = new Menu(
    items: [
      new MenuItem(
        id: 'restaurant',
        title: 'THE PADDOCK',
      ),
      new MenuItem(
        id: 'other1',
        title: 'THE HERO',
      ),
      new MenuItem(
        id: 'other2',
        title: 'HELP US GROW',
      ),
      new MenuItem(
        id: 'other3',
        title: 'SETTINGS',
      ),
    ],
  );

  var selectedMenuItemId = 'restaurant';
  var _widget = Text("1");

  Widget headerView(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Row(
            children: <Widget>[
              new Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/user1.jpg")))),
              Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "John Witch",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        "test123@gmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(color: Colors.black54),
                      )
                    ],
                  ))
            ],
          ),
        ),
        Divider(
          color: Colors.white.withAlpha(200),
          height: 16,
        )
      ],
    );
  }
}

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  int _current = 0;

  List imgList = [
    'https://notes.cibc.com/assets/images/noteworthy.jpg',
    'https://notes.cibc.com/assets/images/second.jpg',
    'https://notes.cibc.com/assets/images/find.jpg',
    'https://notes.cibc.com/assets/images/nutshell2.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  CarouselSlider carouselSlider;

  var dashBoard = DashBoard();

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new SingleChildScrollView(
            child: new ConstrainedBox(
      constraints:
          new BoxConstraints(/*minWidth:360.0, minHeight: double.infinity*/),
      child: new Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/back.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Container(
              child: new Column(children: <Widget>[
            // SizedBox(height: 30.0,width:MediaQuery.of(context).size.width ),
            // AppBar( title: Icon(Icons.bookmark), backgroundColor: Colors.transparent,toolbarOpacity: 0.9,),
            /*new Drawer(),*/
//            SafeArea(
//                minimum: const EdgeInsets.only(top: 6.0),
//                child: new Row(
//                  //crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisSize: MainAxisSize.max,
//                  //mainAxisAlignment: MainAxisAlignment.center,
//
//                  children: <Widget>[
//                    new Padding(padding: EdgeInsets.only(left: 4)),
//
//                    GestureDetector(
//                      onTap: () {
//                        print('menu tapped');
//                      },
//                      child: new Container(
//                        padding: new EdgeInsets.all(8.0),
//                        child: new Image.asset("assets/images/menu.png",
//                            height: 50,
//                            width: 50,
//                            matchTextDirection: true,
//                            fit: BoxFit.contain),
//                      ),
//                    ),
//                    new Padding(padding: EdgeInsets.only(right: 10)),
//                    new Container(
//                      child: Center(
//                        child: new Text(
//                          'CIBC Structured Notes',
//                          style: TextStyle(fontSize: 21.0, color: Colors.white),
//                          textAlign: TextAlign.center,
//                        ),
//                      ),
//                    ),
//
//                    /*new Text(
//                  'CIBC Structured Notes',
//                  style: TextStyle(
//                      fontSize: 21.0, color: Colors.white),
//                  textAlign: TextAlign.right,
//                ),*/
//                    //new Padding(padding: EdgeInsets.only(right: 10.0, top:8.0)),
//                    new Container(
//                      padding: new EdgeInsets.all(8.0),
//                      child: new Image.asset("assets/images/n_back.png",
//                          height: 40,
//                          width: 40,
//                          matchTextDirection: true,
//                          fit: BoxFit.scaleDown),
//                    ),
//                    //new Image.asset("assets/images/n_back.png",matchTextDirection: true,),
//                  ],
//                )),
            //this row for cibc app bar design

            new Padding(padding: EdgeInsets.only(top: 15)),
            new Text(
              'Register Today',
              style: new TextStyle(
                  fontFamily: 'Whitney', fontSize: 10.0, color: Colors.white),
            ),
            // text register today

            new Padding(padding: EdgeInsets.only(top: 8.0)),

            new Text(
              "Increase your return\n potential. Not your risk.",
              style: new TextStyle(
                  height: 1.2,
                  fontFamily: 'Whitney',
                  fontSize: 23.0,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            // below headng

            new Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),

            new Container(
              width: MediaQuery.of(context).size.width,
              child: new Row(
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: new SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.width / 2.9,
                      child: new Card(
                        margin: new EdgeInsets.only(
                            left: 9.0, top: 8.0, bottom: 5.0, right: 4.5),
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
                  ),
                  new SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 2.9,
                    child: new Card(
                      margin: new EdgeInsets.only(
                          left: 4.5, top: 8.0, bottom: 5.0, right: 4.5),
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
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 2.9,
                    child: new Card(
                      margin: new EdgeInsets.only(
                          left: 4.5, top: 8.0, bottom: 5.0, right: 9.0),
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
            new Padding(padding: EdgeInsets.only(top: 15.0)),
            new Card(
              margin: new EdgeInsets.only(left: 9.0, right: 9.0),
              child: new Container(
                child: carouselSlider = CarouselSlider(
                  height: 180.0,
                  initialPage: 0,
                  aspectRatio: 16 / 9,
                  //autoPlayCurve: new Curve(),
                  enlargeCenterPage: false,
                  autoPlay: true,
                  reverse: false,
                  viewportFraction: 1.04,
                  // enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 4),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.grey,
                          ),
                          child: Image.network(
                            imgUrl,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            /* Carousel(
                    images: [
                     // NetworkImage('https://notes.cibc.com/assets/images/noteworthy.jpg'),
                     // NetworkImage('https://notes.cibc.com/assets/images/second.jpg'),
                      //NetworkImage('https://notes.cibc.com/assets/images/find.jpg'),
                      //NetworkImage('https://notes.cibc.com/assets/images/nutshell2.jpg'),
                      ExactAssetImage("assets/images/noteworthy.jpg"),
                      ExactAssetImage("assets/images/nutshell2.jpg"),
                      ExactAssetImage("assets/images/second.jpg"),
                      ExactAssetImage("assets/images/find.jpg"),
                    ],
                    autoplay: true,
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.grey.withOpacity(0.5),
                    indicatorBgPadding: 0.0,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomCenter,
                    borderRadius: true,
                    animationDuration: Duration(milliseconds: 800),
                    //indicatorBgPadding: 10,
                    moveIndicatorFromBottom: 0.0,
                    noRadiusForIndicator: true,
                    showIndicator: true,
                    overlayShadow: false,
                    overlayShadowColors: Colors.transparent,
                    overlayShadowSize: 0.7,
                  )*/

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 7.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.grey,
                  ),
                );
              }),
            ),
          ])),
        ],
      ),
    )));
  }
}
