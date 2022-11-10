import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  void _show(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 100),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(),
            const TextField(),
            TextButton(onPressed: () {}, child: const Text('Login'))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom sheet'),
      ),
      body: Container(),
      floatingActionButton: GestureDetector(
        onLongPress: () => _new(context),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _show(context),
        ),
      ),
    );
  }
}

_new(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom + 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
            leading: Icon(Icons.share),
            title: Text("share"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cut),
            title: Text("cut"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.copy),
            title: Text("copy"),
          ),
        ],
      ),
    ),
  );
}
