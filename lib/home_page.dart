import 'package:app_projeto_oracoes/text_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextPage textPage = TextPage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Orações: ALAMA DE CRISTO'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      textPage.tituloDaOracao('ALAMA DE CRISTO'),
                      textPage.autorDaOracao('Santo Inácio de Loyola'),
                    ],
                  ),
                ],
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
              Center(child: textPage.tituloEmLatim('Titulo em Latim')),
              const SizedBox(
                height: 16,
              ),
              textPage.textoEmLatim('Texto'),
            ],
          ),
        ),
      ),
    );
  }
}
