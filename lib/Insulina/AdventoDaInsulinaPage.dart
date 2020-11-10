import 'package:flutter/material.dart';
import 'package:projeto_diabetes/components/CustomSliverAppBar.dart';
import 'package:projeto_diabetes/components/SimpleTextComponent.dart';
import 'package:projeto_diabetes/detalheImagem/ImageDetails.dart';

class AdventoDaInsulinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(
            title: "Advento da Insulina",
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              imageDetails2(context, 'assets/images/advento-insulina.jpg',
                  'advento-insulina'),
              SimpleTextComponent(
                text:
                    'A descoberta da insulina foi um dos acontecimentos mais relevantes da história da Medicina.',
              ),
              SimpleTextComponent(
                text:
                    'Foi no ano de 1921, que o médico Frederick Grant Banting e seu assistente, Charles Best, isolaram o extrato produzido pelo pâncreas, denominado mais tarde de insulina.',
              ),
              SimpleTextComponent(
                text:
                    'Ainda naquele ano, a insulina foi utilizada com sucesso em Leonard Thompson, um menino de 14 anos, portador de DM1 desde 1919.',
              ),
              SimpleTextComponent(
                text:
                    'Em 1923, o Prêmio Nobel de Fisiologia e Medicina foi concedido a Banting e Macleod, que o dividiram com Best e Collip.',
              ),
              SimpleTextComponent(
                text:
                    'Em 1946, a descoberta da insulina protamina cristalina (NPH, do inglês neutral protamine Hagedorn), representou um marco importante no tratamento do diabetes, pois as características bioquímicas possibilitavam misturá-la à insulina regular.',
              ),
              SimpleTextComponent(
                text:
                    'Nos primeiros 60 anos após a descoberta da insulina, apenas as insulinas suína e a bovina eram disponíveis no mercado; porém, além de apresentarem muitas impurezas que causavam reações locais, como alergias, abscessos e lipodistroﬁas, havia variação de até 25% na potência de um lote para outro.',
              ),
              Divider(),
              SimpleTextComponent(
                text:
                    'A insulina humana foi criada com o surgimento da tecnologia de DNA recombinante, em 1978, e passou a ser amplamente utilizada a partir da década de 1980, em virtude de sua menor imunogenicidade, com menor indução de anticorpos anti-insulina, e de causar menos reação no local de aplicação que as insulinas bovina (que difere da humana em três aminoácidos) e a suína (que difere em um aminoácido).',
              ),
              SimpleTextComponent(
                text:
                    'Até agora a administração de insulina via oral, bucal, intestinal e transdérmica não substituiu a administração da insulina subcutânea, pois ocorre a degradação causada pela acidez do suco gástrico e das enzimas da porção superior do trato gastrintestinal, a atividade mucociliar, a presença de enzimas proteolíticas da cavidade nasal e à impermeabilidade relativa',
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget imageDetails2(context, String image, [String tagname, String text]) {
  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Hero(
            tag: tagname,
            child: Image.asset(image,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.30),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImageDetails('Advento da Insulina', '', image, tagname);
            }));
          },
        ),
        Text(text != null ? text : '',
            style: TextStyle(
              fontSize: 11,
            ))
      ],
    ),
  );
}
