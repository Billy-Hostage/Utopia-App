import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';

class HomepageDesktop extends StatelessWidget with GetItMixin {
  HomepageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(title),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '拥有的原木数量:',
            ),
            Text(
              "1 块",
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("开始砍伐"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("停止砍伐"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Service Ctl',
        child: const Icon(Icons.add),
      ),
    );
  }
}
