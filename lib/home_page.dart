import 'package:app_projeto_oracoes/text_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = 'ALMA DE CRISTO';
  TextPage textPage = TextPage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orações: $titulo',
            style: TextStyle(color: Colors.amber[100]),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/13efe262f6894edb7db3b215b2ad3a76.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    textPage.tituloDaOracao(titulo),
                    textPage.autorDaOracao('Santo Inácio de Loyola'),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              textPage.textoDaOracao('''
                Alma de Cristo, santificai-me.
                Corpo de Cristo, salvai-me.
                Sangue de Cristo, inebrai-me.
                Àgua do lado de Cristo, lavai-me.
                Paixão de Cristo, confortai-me.
                Ó bom Jesus, ouve-me.
                Dentro de vossas chagas, escondei-me.
                Não permitais que me separe de Vós.
                Do espírito maligno, defende-me.
                Na hora da morte, chamai-me
                e mandai-me ir até Vós,
                para que com os vossos santos Vos Louve
                por todos os séculos dos séculos.
                Amém.
                '''),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '(em latim)',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(child: textPage.tituloEmLatim('ANIMA CHRISTI')),
              const SizedBox(
                height: 16,
              ),
              textPage.textoEmLatim('''
                Anima Christi, sanctica me.
                Corpus Christi, salve me.
                Sanguis Christi, inebria me.
                Aqua lateris Christi, lava me.
                Passio Christi, conforta me.
                O bone Iesu, exaudi me.
                Intra tua vulnera absconde me. 
                Ne permittas me separari a te.
                Ab hoste maligno defende me.
                In hora mortis meae voca me.
                Et iube me venire ad te,
                ut cum Sancti tuis laudem te 
                in saecula saeculorum.
                Amem.
                '''),
            ],
          ),
        ),
      ),
    );
  }
}
