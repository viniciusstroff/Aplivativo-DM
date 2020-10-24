


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class ImageComponent extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  final String tag;
  ImageComponent([this.title, this.text, this.image, this.tag]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: CustomAppBar(title:''),
        body: Material(
          child: CustomScrollView(
            anchor: 0.1,
            slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
                [expandedImage(context, this.tag, this.image, this.text)]),
          )
            ],
          ),
        ));
  }
}



Widget imageDetails2(context, String image, {String imageDescription, String tagImage, isList = false}) {
  return Container(
    margin: EdgeInsets.only(top:20, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagImage,
            child: Column(
              children: <Widget>[
                Image.asset(image,
                    height: MediaQuery.of(context).size.height * 0.3),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails('Locais de Aplicação', imageDescription, image, tagImage);
            }));
          },
        ),
        if(!isList)
          Text(imageDescription != null ? imageDescription : '',
            style: TextStyle(
              fontSize: 14,
            ))
        
      ],
    ),
  );
}

// Widget listImages(context) {

//     return Container(
//       // color: Colors.blue,
//         margin: EdgeInsets.only(bottom:20),
//         child: Column(
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(height: MediaQuery.of(context).size.height * 0.50),
//               items: imgList.map((CarrouselImage item) => Container(
//                 child: imageDetails2(
//                           context,
//                           item.image,
//                           imageDescription:item.text, tagImage:item.tag,
//                           isList: true
//                 ),
//               )).toList(),
//             ),
//             Text(imgList.first.text,
//             style: TextStyle(
//               fontSize: 15,
//             ))
//           ],
          
          
//         )
//       );
//   }