import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        scaffoldBackgroundColor:const Color.fromRGBO(169, 1, 247, 1),
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        toolbarHeight: 250,
        backgroundColor: Colors.white,
        flexibleSpace: const Image(
          image: AssetImage('images/lovepeople_logo.png'),
          fit: BoxFit.scaleDown,
          height: 100
        ),
        title: const Text(
          'lovepeople',
          style: TextStyle(color: Color.fromRGBO(49, 1, 185, 1), fontSize: 16),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(250),
          )
        ),
        centerTitle: true
      ),
      body: Column(children: <Widget>[
        Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [         
            Container(
              margin: const EdgeInsets.only(top: 50.0, bottom: 40.0),
              child: const Text(
                'Que bom que voltou!',
                style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 28),                
              ),          
            ),
          ],
        ),
        const Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [         
            SizedBox(
              width: 360,
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(49, 1, 185, 1)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                  hintText: 'Número de telefone, email ou CPF',
                  hintStyle: TextStyle(color: Color.fromRGBO(49, 1, 185, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
              )),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0
        ),        
        const Row(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [        
            SizedBox(
              width: 360,
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(49, 1, 185, 1)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                  hintText: 'Senha',
                  hintStyle: TextStyle(color: Color.fromRGBO(49, 1, 185, 1)),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
              )),
            ),
          ],
        ), 
        Row(
          mainAxisAlignment : MainAxisAlignment.spaceAround,  
          children: [        
          Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
            child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Esqueceu seu login ou senha?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1), 
                    decoration: TextDecoration.none, 
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),                
                ),
                TextSpan(
                  text: ' Clique aqui',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 214, 0, 1), 
                    decoration: TextDecoration.none, 
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),                
                ),
              ],
            ),
            ),                  
          )],
        ),
        Row(
          mainAxisAlignment : MainAxisAlignment.spaceAround,  
          children: [        
           SizedBox(
            width: 140,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromRGBO(49, 1, 185, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Color.fromRGBO(255, 255, 255, 1), width: 2.0),
              ),
              ),
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
      Row(children: [
        Expanded(
          child: Container(
            width: 600,
            margin: const EdgeInsets.only(top: 110.0, bottom: 30.0),
            child: CustomPaint(
              painter: DashedLinePainter(),
              size: const Size(200.0, 1), // Tamanho da linha
            ), 
          )
        )
      ]),
      Center(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'Não possui cadastro?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1), 
                    decoration: TextDecoration.none, 
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),                
                ),
                TextSpan(
                  text: ' Clique aqui',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 214, 0, 1), 
                    decoration: TextDecoration.none, 
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),                
                ),
              ],
            ),
          ),
        )         
      ]));
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color.fromRGBO(255, 255, 255, 1)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    const double dashWidth = 5.0;
    const double dashSpace = 5.0;

    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height / 2),
          Offset(startX + dashWidth, size.height / 2), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}