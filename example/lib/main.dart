import 'package:cached_network_image_plus/flutter_cached_network_image_plus.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CacheNetworkImagePlus"), centerTitle: true),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1,
          ),
          itemBuilder: (_, i) => CacheNetworkImagePlus(
            imageUrl: dataDefault[i].url,
            margin: EdgeInsets.all(10),
            borderRadius: 20,
            shimmerBaseColor: dataDefault[i].shimmerBaseColor,
            shimmerHighlightColor: dataDefault[i].shimmerHighlightColor,
            shimmerBackColor: dataDefault[i].shimmerBackColor,
            errorWidget: dataDefault[i].errorWidget,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10)
            ],
          ),
          itemCount: dataDefault.length,
        ),
      ),
    );
  }
}
