import 'package:flutter/material.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({super.key});
  @override
  CompleteProfilePageState createState() => CompleteProfilePageState();
}

class CompleteProfilePageState extends State<CompleteProfilePage> {
  String textField1 = '';
  String textField2 = '';
  String textField3 = '';
  String textField4 = '';
  String textField5 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFCED4DA),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFFFFFF),
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(clipBehavior: Clip.none, children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IntrinsicHeight(
                              child: Container(
                                width: 386,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 966,
                                        width: double.infinity,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  color: Color(0xFFFFFFFF),
                                                  width: double.infinity,
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        IntrinsicHeight(
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 12,
                                                                    bottom: 12,
                                                                    left: 16,
                                                                    right: 16),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                      width: 15,
                                                                      height:
                                                                          18,
                                                                      child: Image
                                                                          .network(
                                                                        "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/896e8054-5a56-4060-bfec-057c056dec85",
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      )),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          SizedBox(),
                                                                    ),
                                                                  ),
                                                                  IntrinsicHeight(
                                                                    child:
                                                                        Container(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                              6),
                                                                      margin: const EdgeInsets
                                                                          .only(
                                                                          right:
                                                                              83),
                                                                      width:
                                                                          144,
                                                                      child: Column(
                                                                          children: [
                                                                            Text(
                                                                              "Complete Profile",
                                                                              style: TextStyle(
                                                                                color: Color(0xFF111827),
                                                                                fontSize: 18,
                                                                              ),
                                                                            ),
                                                                          ]),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 32,
                                                                    height: 1,
                                                                    child:
                                                                        SizedBox(),
                                                                  ),
                                                                ]),
                                                          ),
                                                        ),
                                                      ]),
                                                ),
                                              ),
                                            ]),
                                      ),
                                      IntrinsicHeight(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              top: 24,
                                              bottom: 122,
                                              left: 8,
                                              right: 8),
                                          transform: Matrix4.translationValues(
                                              0, -902, 0),
                                          width: double.infinity,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                IntrinsicHeight(
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7,
                                                            bottom: 7,
                                                            left: 1,
                                                            right: 1),
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 644),
                                                    width: double.infinity,
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    bottom: 25),
                                                            width:
                                                                double.infinity,
                                                            child: Text(
                                                              "Let\'s personalize your experience!",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF111827),
                                                                fontSize: 24,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            child: Text(
                                                              "Fill out your details to let us know about you!",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF4B5563),
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    print('Pressed');
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: Color(0xFF22C55E),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 20),
                                                    width: 358,
                                                    height: 56,
                                                    child: Column(children: [
                                                      Text(
                                                        "Complete Profile",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ]),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        )),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
