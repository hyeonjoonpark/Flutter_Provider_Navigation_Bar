import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_nav_bar_ex/provider/counter_provider.dart';

class CountHomeWidget extends StatelessWidget {
  CountHomeWidget({super.key});

  late CountProvider countProvider;

  @override
  Widget build(BuildContext context) {
    countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Provider"),
      ),
      body: Container(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              countProvider.add(); // 클릭 되었을 때 add() 이벤트 처리
            },
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              countProvider.remove(); // 클릭 되었을 때 remove() 이벤트 처리
            },
          )
        ],
      ),
    );
  }
}
