import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:share_preference/counter.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_xyvlbvhc.json',
                height: MediaQuery.of(context).size.height - 180,
                width: MediaQuery.of(context).size.width),
            ElevatedButton(
                onPressed: () {
                  Get.to(MyHomePage(title: 'title'));
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
