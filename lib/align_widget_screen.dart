import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlignWidgetScreen extends StatelessWidget {
  const AlignWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopUp() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Exit App'),
              content: Text('Do You want to exit an app?'),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('No')),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text('Yes')),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopUp,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
            child: Container(height: 50, width: 50),
          ),
        ),
      ),
    );
  }
}
