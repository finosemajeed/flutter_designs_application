import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class AlerDialogueBoxScreen extends StatelessWidget {
  const AlerDialogueBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.warning,
                    text: 'You just broke protocol',
                  );
                },
                child: Text('Show Quick alert')),
            ElevatedButton(
              child: const Text('show alert'),
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: const Text('Do you really want to delete?'),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text('no')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Yes'))
                      ],
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
