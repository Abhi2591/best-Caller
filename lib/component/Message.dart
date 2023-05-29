import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  var mobile = '';
  var message = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // makecall();
  }


  void makecall(){
      Timer.periodic(const Duration(seconds: 40), (timer) {
        FlutterPhoneDirectCaller.callNumber('+918429639226');
      });
}

  @override
  Widget build(BuildContext context) {
    print('this is mobile State ${mobile}');
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Icon(Icons.message,size: 60,),
            const SizedBox(height: 20,),
            Text('Find On WhatsApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green.shade700),),
            const SizedBox(height: 20,),
            TextField(
              onChanged: (value) {
                setState(() {
                  mobile = value;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  label: const Text('Mobile Number'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2,color: Colors.blue.shade700),
                  ),
                helperText: mobile.length==10 ? 'send to : +91${mobile}' : 'Enter Your Mobile Number'
              ),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            const SizedBox(height: 20,),
            TextField(
              maxLines: 3,
              onChanged: (value) {
                setState(() {
                  message = value;
                });
              },
              decoration: InputDecoration(
                helperMaxLines: 3,
                hintText: 'Message',
                label: const Text('Message'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2,color: Colors.blue.shade700),
                ),
                helperText: message.length==0 ? 'Enter Your Message here' : 'Message : $message'
              ),
              maxLength: 100,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () async {
                var url = Uri.parse('whatsapp://send?phone=+91$mobile&text=$message');
                if(await canLaunchUrl(url) ){
                  launchUrl(url);
                }
              }, child: const Text('WhatsApp')),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () async {
                FlutterPhoneDirectCaller.callNumber('+91$mobile');
                // var url = Uri.parse('tel://+91${mobile}');
                //if(await canLaunchUrl(url) ){
                  //launchUrl(url);
                //}
              }, child: Text('Call :  ${mobile.length==10 ? '+91${mobile}' : ''}')),
            ),
          ],
        ),
      ),
    );
  }
}
