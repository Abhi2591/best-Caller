import 'package:best_caller/component/Call.dart';
import 'package:best_caller/component/Contact.dart';
import 'package:best_caller/component/Message.dart';
import 'package:flutter/material.dart';

class CentralPage extends StatefulWidget {
  const CentralPage({Key? key}) : super(key: key);

  @override
  State<CentralPage> createState() => _CentralPageState();
}

class _CentralPageState extends State<CentralPage> {

  var indexAt = 0;

  var arrayComponents = [
    const Contact(),
    const Message(),
    const Call()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Caller Id'),
      ),
      body: arrayComponents[indexAt],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexAt,
      onTap: (value) {
        print(value);
        setState(() {
          indexAt = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.contacts),label: 'Contacts'),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'WhatsApp'),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Dialer')
      ]),
    );
  }
}
