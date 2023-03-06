import 'package:flutter/material.dart';
import 'package:signal_project/costum_widget/costum_widget.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key});

  final List<Widget> listWidgetBlog = [
    CostumWidget(imageTitle: 'Bnb.png', nameCoin: 'BNB'),
    CostumWidget(imageTitle: 'Btc.png', nameCoin: 'BTC'),
    CostumWidget(imageTitle: 'Eth.png', nameCoin: 'ETH'),
    CostumWidget(imageTitle: 'Doge.png', nameCoin: 'DOG'),
    CostumWidget(imageTitle: 'XRP.png', nameCoin: 'XRP'),
    CostumWidget(imageTitle: 'Thether.png', nameCoin: 'TRT'),
    CostumWidget(imageTitle: 'LiteCoin.png', nameCoin: 'LIT'),
    CostumWidget(imageTitle: 'ChainLink.png', nameCoin: 'CLK'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...listWidgetBlog,
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Log Out', style: TextStyle(color: Colors.red)),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(112, 3, 158, 1),
        centerTitle: true,
        title: Text('Crypto News'),
        elevation: 3,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
    );
  }
}
