import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../DashBoardHomeScreen.dart';
import 'package:structurenodes/dashBoard/DashBoard.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyHomePageState extends State<DashBoardHomeScreen> {

  PageController _pageController;

  List<String> images=["https://www.textuar.com/blog/wp-content/uploads/2017/11/free-images-for-content-writing-768x384.png"];
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

//  final _kArrowColor = Colors.black.withOpacity(0.3);
  final _kArrowColor = Colors.transparent;
  var dashBoard = DashBoard();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 1, viewportFraction: 0.4);
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
       // key: _scaffoldKey,
        //drawer: new Drawer(),

        body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          new Scaffold(
          body: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              itemBuilder: (context, position){
                return imageSlider(position);
              })
        ),
              new Padding(padding: EdgeInsets.only(top: 27.0)),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset("assets/images/mnu_my.png"),
                  new Padding(padding: EdgeInsets.only(right: 30.0)),
                  new Text(
                    'CIBC Structured Notes',
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.white.withOpacity(0.7)),
                    textAlign: TextAlign.center,
                  ),
                  new Padding(padding: EdgeInsets.only(right: 30.0)),
                  new Image.asset("assets/images/tsearch.png"),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 25.0)),
              new Text(
                'Register Today',
                style: new TextStyle(
                    fontFamily: 'Whitney',
                    fontSize: 10.0,
                    color: Colors.white.withOpacity(0.7)),
              ),
              new Padding(padding: EdgeInsets.only(top: 8.0)),
              new Text(
                "Increase your return\n potential. Not your risk.",
                style: new TextStyle(
                    height: 1.2,
                    fontFamily: 'Whitney',
                    fontSize: 23.0,
                    color: Colors.white.withOpacity(0.7)),
                textAlign: TextAlign.center,
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new SizedBox(
                      height: 129.0,
                      width: 117.0,
                      child: new Card(
                        margin: new EdgeInsets.only(
                            left: 9.0, top: 8.0, bottom: 5.0),
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
                                    fontSize: 22.0,fontWeight: FontWeight.w700,
                                    color: dashBoard.hexToColor("#8B1D41")),
                                textAlign: TextAlign.center,
                              ),
                              new Padding(padding: EdgeInsets.only(top: 4.0)),
                              new Text(
                                'Market Linked GICs',
                                style: new TextStyle(color: dashBoard.hexToColor("#717274")),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 129.0,
                      width: 117.0,
                      child: new Card(
                        margin: new EdgeInsets.only(
                            left: 9.0, top: 8.0, bottom: 5.0),
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
                                    fontSize: 22.0,fontWeight: FontWeight.bold,
                                    color: dashBoard.hexToColor("#8B1D41")),
                                textAlign: TextAlign.center,
                              ),
                              new Padding(padding: EdgeInsets.only(top: 4.0, left: 3.0, right: 2.0),
                              child: Text(
                                'Principal Protected Notes',
                                style: new TextStyle(color: dashBoard.hexToColor("#717274")),
                                textAlign: TextAlign.center,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(
                      height: 129.0,
                      width: 117.0,
                      child: new Card(
                        margin: new EdgeInsets.only(
                            left: 9.0, top: 8.0, bottom: 5.0),
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
                                    fontSize: 22.0,fontWeight: FontWeight.bold,
                                    color: dashBoard.hexToColor("#8B1D41")),
                                textAlign: TextAlign.center,
                              ),
                              new Padding(padding: EdgeInsets.only(top: 4.0, left: 2.0, right: 2.0)),
                              new Text(
                                'Principal At Risks Notes',
                                style: new TextStyle( color: dashBoard.hexToColor("#717274")),
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

              new SizedBox(
                  height: 150.0,
                  width: 300.0,
                  child: new Carousel(
                    images: [
                      new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                      new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                      new ExactAssetImage("assets/images/LaunchImage.jpg")
                    ],
                  )
              ),
              /*new Scaffold(
                      body: PageView.builder(
                          controller: _pageController,
                          itemCount: images.length,
                          itemBuilder: (context, position){
                      return imageSlider(position);
              })
              )*/
            ],
          ),
        ));
  }

  Widget imageSlider(int position) {

    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, widget){
        return Center(child: SizedBox(height: 200, width: 300, child: widget,),);

      },
      child: Container(child: Image.network(images[position], fit: BoxFit.cover))
    );
  }
}
