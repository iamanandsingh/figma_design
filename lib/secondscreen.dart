import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hmtextfield.dart';
import 'thirdscreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
          child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: Material(
                child: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
            largeTitle: Text(
              'Create an activity',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Form(
              key: formKey,
              child: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 70,
                    ),
                    HmTextField(
                      formatType: true,
                      title: 'Activity Name',
                      placeholder: 'Ex: Cooking Class',
                    ),
                    HmTextField(
                      formatType: true,
                      title: 'Activity Type',
                      placeholder: 'Ex: Cooking Class',
                      helpertext: "Type should be maximum 120 characters",
                      isHelperTextVisible: true,
                    ),
                    SizedBox(height: 260),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                width: 60,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.black38,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                width: 20,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.black38,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: Colors.black38,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.save();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdScreen()),
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 5),
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
