import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_diabetes/Model/carrouselImage.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';


final List<CarrouselImage> imgList =[

 CarrouselImage(image:"assets/images/descarte-com-florzinhas-2.png", title:"Descarte Ilustração", text: "(SBD, 2019-2020, CONAMA 358, RDC 306)", tag: "descarte-correto-ilustracao" ),
 CarrouselImage(image:"assets/images/galoes.jpeg", title:"Galões", text: "(SBD, 2019-2020, CONAMA 358, RDC 306)", tag: "galoes" ),
CarrouselImage(image:"assets/images/galao-ilustracao.jpeg", title:"Galão Ilustração", text: "(SBD, 2019-2020, CONAMA 358, RDC 306)", tag: "galoes-ilustracao" ),
 
];

class DescarteDeInsumosDocimiciliarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(title: " Descarte de Insumos Domiciliar",titleSize: 22,),
          SliverList(
            delegate: SliverChildListDelegate(
              
              [ 
                SimpleTextComponent(text:'O descarte correto dos insumos perfurocortantes e contaminantes nos domicílios, deve ser feito  em coletores específicos, como os utilizados nos serviços de saúde. '),
                SimpleTextComponent(text:'Se este coletor não estiver disponível, pode ser utilizado um recipiente com características semelhantes ao coletor apropriado para descarte: material inquebrável, paredes rígidas e resistentes a perfuração, com abertura larga e tampa.'),
                imageDetails2(context, 'assets/images/descarte-insumos-caixa-amarela.jpeg',imageDescription: '(SBD, 2019-2020, CONAMA 358, RDC 306)', tagImage:'descarte-insumos-caixa-amarela' ),

                 SimpleTextComponent(text:'Frascos de insulina e canetas descartáveis, devem ser descartados no mesmo coletor destinado aos materiais perfurocortantes. Canetas recarregáveis, sem o refil de insulina, e tampas de canetas descartáveis podem ser depositadas em lixo comum.'),
                listImages(context),
                 SimpleTextComponent(text:'A garrafa PET não é o recipiente mais recomendado para o descarte de resíduos gerados em domicílio, pois não atende às principais características estabelecidas para coletores de itens perfurocortantes e medicamentos.')
              ]
            ),
          ),
        ],
      ),
    );
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
              return ImageDetails(title:'Locais de Aplicação', text:imageDescription, image:image, tag:tagImage);
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

Widget listImages(context) {

    return Container(
      // color: Colors.blue,
        margin: EdgeInsets.only(bottom:20),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: MediaQuery.of(context).size.height * 0.50),
              items: imgList.map((CarrouselImage item) => Container(
                child: imageDetails2(
                          context,
                          item.image,
                          imageDescription:item.text, tagImage:item.tag,
                          isList: true
                ),
              )).toList(),
            ),
            Text(imgList.first.text,
            style: TextStyle(
              fontSize: 15,
            ))
          ],
          
          
        )
      );
  }


