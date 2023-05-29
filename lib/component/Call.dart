import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {

  var mobile = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
            Container(
              height: 100,
              width: double.infinity,
              //color: Colors.pinkAccent.shade100,
              decoration: BoxDecoration(
                //color: Colors.pinkAccent.shade100,
                border: Border.all(width: 1,color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(20))

              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      height: double.infinity,
                      //color: Colors.lightBlueAccent.shade100,
                      alignment: Alignment.centerLeft,
                      child: Text(mobile,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: double.infinity,
                     // color: Colors.red.shade100,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            mobile = mobile.substring(0,mobile.length-1);
                          });
                        },
                          icon: const Icon(Icons.backspace_outlined,size: 30,color: Colors.blue,)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
            child: SizedBox(
              height: 200,
              width: double.infinity,
              //color: Colors.blue.shade100,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        //color: Colors.green,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.grey,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'1';
                                  });
                                }, child: const Text('1',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.yellow,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'2';
                                  });
                                }, child: const Text('2',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.cyan,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'3';
                                  });
                                }, child: const Text('3',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                       // color: Colors.pink,
                        child: Row(
                          children: [
                            // Contains '4'
                            Expanded(
                                child: SizedBox(
                                  height: double.infinity,
                                  width: 100,
                                  //color: Colors.yellow,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      mobile = mobile+'4';
                                    });
                                  }, child: const Text('4',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                                ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.grey,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'5';
                                  });
                                }, child: const Text('5',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.blue,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'6';
                                  });
                                }, child: const Text('6',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        //color: Colors.pink,
                        child: Row(
                          children: [
                            // Contains '7'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                width: 100,
                                //color: Colors.yellow,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'7';
                                  });
                                }, child: const Text('7',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            // Contains '8'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.grey,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'8';
                                  });

                                }, child: const Text('8',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            // Contains '9'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.cyan,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'9';
                                  });

                                }, child: const Text('9',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        //color: Colors.pink,
                        child: Row(
                          children: [
                            // Contains '*'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                width: 100,
                                //color: Colors.cyan,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'*';
                                  });

                                }, child: const Text('*',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            // Contains '0'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                               // color: Colors.grey,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'0';
                                  });

                                }, child: const Text('0',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            // Contains '#'
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                //color: Colors.yellow,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    mobile = mobile+'#';
                                  });

                                }, child: const Text('#',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(backgroundColor: Colors.green,
                        radius: 38,child: IconButton(
                        onPressed: () {
                          FlutterPhoneDirectCaller.callNumber(mobile);
                        },
                          icon: const Icon(Icons.call,size: 35,color: Colors.white,)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
