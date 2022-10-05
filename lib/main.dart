import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Resumo dos guris",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Resumo dos guris"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/images/logo_jpeg.jpeg", width: 150.0),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 7,
              itemBuilder: (context, index) => ListTile(
                title: Text('Vingadores - Ultimato'),
                subtitle: Text('Anthony e Joe Russo'),
                leading: Icon(Icons.book),
                trailing: Icon(Icons.chevron_right),
              ),
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            decoration: BoxDecoration(color: Colors.teal),
            child: Text('Obrigado por visitar nosso app',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Adicionar resumo",
        child: Icon(Icons.add),
      ),
    );
  }
}
