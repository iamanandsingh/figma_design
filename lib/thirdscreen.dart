import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hmtextfield.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
            largeTitle: Text(
              'Date of activity',
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
                      formatType: false,
                      title: 'Start Date',
                      placeholder: 'Dec 02, 2020',
                    ),
                    HmTextField(
                      formatType: false,
                      title: 'End Date',
                      placeholder: 'Dec 03, 2020',
                      helpertext: "*End date should be greater than Start Date",
                      isHelperTextVisible: true,
                    ),
                    SizedBox(height: 260),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: 20,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: 20,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
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
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 5),
                                  child: Text(
                                    "OK",
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
