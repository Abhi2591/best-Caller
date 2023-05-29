import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  var allContacts;

  var isContactDenied = false;

  var isLoading = true;
  var isPermanentDenied = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContacts();
  }

  Future<void> getContacts() async {
    if(await Permission.contacts.request().isGranted ){
      var data = await FlutterContacts.getContacts(withProperties: true,withThumbnail: false,withPhoto: false);
      setState(() {
        allContacts = data.toList();
        isLoading = false;
      });
    }
    else if (await Permission.contacts.isDenied){
      setState(() {
        isContactDenied = true;
      });
    }
    else if(await Permission.contacts.isPermanentlyDenied){
      // OpenAppSetting();
      setState(() {
        isPermanentDenied = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    print(allContacts);
    return isLoading ? 
    const Center(
      child: CircularProgressIndicator(),
    )
    :
    ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: IconButton(
            onPressed: () async {
              var messageMaker = Uri.parse('whatsapp://send?phone=${allContacts[index].phones.first.normalizedNumber}&text=hi');
              if(await canLaunchUrl(messageMaker) ){
                await launchUrl(messageMaker);
              }
            },
            icon: const Icon(Icons.message)),
        title: Text('${allContacts[index].displayName}'),
        subtitle: Text('${allContacts[index].phones.isEmpty ? '0' : allContacts[index].phones.first.normalizedNumber}'),
        trailing: IconButton(
            onPressed: () {
                FlutterPhoneDirectCaller.callNumber('${allContacts[index].phones.first.normalizedNumber}');
            },
            icon: const Icon(Icons.call)),
      );
    },itemCount: allContacts==null ? 0 : allContacts.length,
    );
  }
}
