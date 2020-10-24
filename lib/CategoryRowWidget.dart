import 'package:flutter/material.dart';

class CategoryRowWidget extends StatelessWidget {
  final String title;
  final String route;

  CategoryRowWidget({Key key, this.title, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.1,
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: <Widget>[
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.,
                        width: MediaQuery.of(context).size.width * 0.83,
                        // margin: EdgeInsets.only(top:50),
                        child: myDetailsContainer(context, title)
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10) ,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                          // margin: EdgeInsets.only(top:50),
                          child: Icon(Icons.arrow_forward_ios,size: 20,)
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget myDetailsContainer(context, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        // margin: EdgeInsets.only(top:50),
        // height: MediaQuery.of(context).size.height * 0.,
        // child:Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // )
      ),

      // Container(child: Text("Pastries \u00B7 Phoenix,AZ",
      //   style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
    ],
  );
}
