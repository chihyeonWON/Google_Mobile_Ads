import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String androidTestUnitId = 'ca-app-pub-3940256099942544/6300978111';

  BannerAd? banner;

  @override
  void initState() {
    super.initState();

    banner = BannerAd(
      listener: BannerAdListener(),
      size : AdSize.banner,
      adUnitId : androidTestUnitId,
      request : AdRequest(),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('Google Mobile Ads'),
      ),
      body: Column(
        children:[
          Expanded(
            child: ListView.separated(
                itemBuilder: (_, index){
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          index.toString(),
                        ),
                      ),
                    )
                  );
                },
                separatorBuilder: (_, index) {
                  return Divider();
                },
                itemCount: 100,),
          )
        ],
      )
    );
  }
}
