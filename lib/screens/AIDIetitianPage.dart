import 'package:flutter/material.dart';

class AIDIetitianPage extends StatefulWidget {
  const AIDIetitianPage({super.key});
  @override
  AIDIetitianPageState createState() => AIDIetitianPageState();
}

class AIDIetitianPageState extends State<AIDIetitianPage> {
  String textField1 = '';
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
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicHeight(
                                  child: Container(
                                    color: Color(0xFFFFFFFF),
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    margin: const EdgeInsets.only(bottom: 15),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 12),
                                              width: double.infinity,
                                              child: Row(children: [
                                                IntrinsicHeight(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 192),
                                                    width: 161,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                              width: 17,
                                                              height: 20,
                                                              child:
                                                                  Image.network(
                                                                "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f9607941-5242-4e56-b416-e07cba3d61d3",
                                                                fit:
                                                                    BoxFit.fill,
                                                              )),
                                                          IntrinsicHeight(
                                                            child: Container(
                                                              width: 131,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    IntrinsicHeight(
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(9999),
                                                                          color:
                                                                              Color(0xFFDCFCE7),
                                                                        ),
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            left:
                                                                                10,
                                                                            right:
                                                                                10),
                                                                        width:
                                                                            40,
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  margin: const EdgeInsets.only(top: 12),
                                                                                  height: 16,
                                                                                  width: double.infinity,
                                                                                  child: Image.network(
                                                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/04d797e6-b0f4-433c-bc5e-53d60c890127",
                                                                                    fit: BoxFit.fill,
                                                                                  )),
                                                                            ]),
                                                                      ),
                                                                    ),
                                                                    IntrinsicHeight(
                                                                      child:
                                                                          Container(
                                                                        padding: const EdgeInsets
                                                                            .symmetric(
                                                                            vertical:
                                                                                4),
                                                                        width:
                                                                            83,
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                margin: const EdgeInsets.only(bottom: 5),
                                                                                width: double.infinity,
                                                                                child: Text(
                                                                                  "AI Dietitian",
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF000000),
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: const EdgeInsets.only(left: 1),
                                                                                child: Text(
                                                                                  "Online",
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF16A34A),
                                                                                    fontSize: 12,
                                                                                  ),
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
                                                Container(
                                                    width: 5,
                                                    height: 20,
                                                    child: Image.network(
                                                      "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/7f054f8e-7f99-4671-a4b4-0dc662ce1a03",
                                                      fit: BoxFit.fill,
                                                    )),
                                              ]),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xFFF0FDF4),
                                    ),
                                    padding: const EdgeInsets.all(16),
                                    margin: const EdgeInsets.only(
                                        bottom: 24, left: 16, right: 16),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              margin: const EdgeInsets.only(
                                                  bottom: 8),
                                              width: double.infinity,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Your Health Summary",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                          IntrinsicHeight(
                                            child: Container(
                                              width: double.infinity,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(bottom: 12),
                                                        width: double.infinity,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    color: Color(
                                                                        0xFFFFFFFF),
                                                                  ),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          12),
                                                                  width: 157,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 4),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "Weight",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF4B5563),
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 5),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "68 kg",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF000000),
                                                                                  fontSize: 16,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ),
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    color: Color(
                                                                        0xFFFFFFFF),
                                                                  ),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          12),
                                                                  width: 157,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding: const EdgeInsets.only(
                                                                                top: 4,
                                                                                bottom: 4,
                                                                                left: 1,
                                                                                right: 1),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "Height",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF4B5563),
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 5),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "175 cm",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF000000),
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
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    color: Color(
                                                                        0xFFFFFFFF),
                                                                  ),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          12),
                                                                  width: 157,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding: const EdgeInsets.only(
                                                                                top: 4,
                                                                                bottom: 4,
                                                                                left: 1,
                                                                                right: 1),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "BMI",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF4B5563),
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 5),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "22.2",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF000000),
                                                                                  fontSize: 16,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ),
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    color: Color(
                                                                        0xFFFFFFFF),
                                                                  ),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          12),
                                                                  width: 157,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 4),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "Goal",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF4B5563),
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                          ),
                                                                        ),
                                                                        IntrinsicHeight(
                                                                          child:
                                                                              Container(
                                                                            padding: const EdgeInsets.only(
                                                                                top: 4,
                                                                                bottom: 4,
                                                                                left: 1,
                                                                                right: 1),
                                                                            width:
                                                                                double.infinity,
                                                                            child:
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text(
                                                                                "Maintain",
                                                                                style: TextStyle(
                                                                                  color: Color(0xFF000000),
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
                                                  ]),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    margin: const EdgeInsets.only(bottom: 15),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 16),
                                              width: double.infinity,
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                          color:
                                                              Color(0xFFDCFCE7),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 7,
                                                                right: 7),
                                                        margin: const EdgeInsets
                                                            .only(right: 8),
                                                        width: 32,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              9),
                                                                  height: 14,
                                                                  width: double
                                                                      .infinity,
                                                                  child: Image
                                                                      .network(
                                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f980da0c-5ea6-4317-bc2a-b86102059c20",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE5E7EB),
                                                            width: 1,
                                                          ),
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x0D000000),
                                                              blurRadius: 2,
                                                              offset:
                                                                  Offset(0, 1),
                                                            ),
                                                          ],
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 17,
                                                                right: 17),
                                                        width: 286,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          5),
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              17),
                                                                  width: double
                                                                      .infinity,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          margin: const EdgeInsets
                                                                              .only(
                                                                              bottom: 8),
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Hello! I\'m your AI Dietitian. Based",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                              fontSize: 16,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: const EdgeInsets
                                                                              .only(
                                                                              bottom: 8),
                                                                          child:
                                                                              Text(
                                                                            "on your health data, I can help",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: const EdgeInsets
                                                                              .only(
                                                                              bottom: 8),
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "you maintain a healthy diet. What",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF000000),
                                                                              fontSize: 16,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          "would you like to know?",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF000000),
                                                                            fontSize:
                                                                                16,
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
                                          IntrinsicHeight(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 31),
                                              margin: const EdgeInsets.only(
                                                  bottom: 16),
                                              width: double.infinity,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF22C55E),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x0D000000),
                                                              blurRadius: 2,
                                                              offset:
                                                                  Offset(0, 1),
                                                            ),
                                                          ],
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 16,
                                                                right: 16),
                                                        width: 286,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      top: 4,
                                                                      bottom: 4,
                                                                      left: 1,
                                                                      right: 1),
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              16),
                                                                  width: double
                                                                      .infinity,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Text(
                                                                            "Am I consuming right amount of protein everyday?",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFFFFFFFF),
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                          color:
                                                              Color(0xFFE5E7EB),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 9,
                                                                right: 9),
                                                        width: 32,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              9),
                                                                  height: 14,
                                                                  width: double
                                                                      .infinity,
                                                                  child: Image
                                                                      .network(
                                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f768a728-3aae-49b2-97ae-44eb926445d6",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                          IntrinsicHeight(
                                            child: Container(
                                              width: double.infinity,
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                          color:
                                                              Color(0xFFDCFCE7),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 7,
                                                                right: 7),
                                                        margin: const EdgeInsets
                                                            .only(right: 8),
                                                        width: 32,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              9),
                                                                  height: 14,
                                                                  width: double
                                                                      .infinity,
                                                                  child: Image
                                                                      .network(
                                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/6eff19c9-f822-449b-9ab8-6b9cc2b4e1ac",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE5E7EB),
                                                            width: 1,
                                                          ),
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x0D000000),
                                                              blurRadius: 2,
                                                              offset:
                                                                  Offset(0, 1),
                                                            ),
                                                          ],
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 17,
                                                                bottom: 72,
                                                                left: 17,
                                                                right: 17),
                                                        width: 286,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              5),
                                                                  width: double
                                                                      .infinity,
                                                                  child: Stack(
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              IntrinsicHeight(
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  child: Stack(clipBehavior: Clip.none, children: [
                                                                                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                      Container(
                                                                                        width: double.infinity,
                                                                                        child: Text(
                                                                                          "Your body weight is 68kg. As per science a person must consume n gram of protein for n kg body weight. So you need to consume around 60-68 grams of Protein each day. But as per records you are consuming only 40 grams of protein on average. Please go for High Protein Meals",
                                                                                          style: TextStyle(
                                                                                            color: Color(0xFF000000),
                                                                                            fontSize: 16,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ]),
                                                                                    Positioned(
                                                                                      bottom: 1,
                                                                                      left: 0,
                                                                                      width: 252,
                                                                                      height: 108,
                                                                                      child: Container(
                                                                                        width: 252,
                                                                                        height: 108,
                                                                                        child: SizedBox(),
                                                                                      ),
                                                                                    ),
                                                                                  ]),
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              0,
                                                                          width:
                                                                              252,
                                                                          height:
                                                                              48,
                                                                          child:
                                                                              Container(
                                                                            transform: Matrix4.translationValues(
                                                                                0,
                                                                                -5,
                                                                                0),
                                                                            width:
                                                                                252,
                                                                            height:
                                                                                48,
                                                                            child:
                                                                                SizedBox(),
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
                                        ]),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    color: Color(0xFFFFFFFF),
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 17),
                                              width: double.infinity,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 12,
                                                                right: 12),
                                                        width: 38,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              12),
                                                                  height: 16,
                                                                  width: double
                                                                      .infinity,
                                                                  child: Image
                                                                      .network(
                                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/95ec9a35-ddf2-43ca-bd2d-7db70a10ef68",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                          color:
                                                              Color(0xFFF3F4F6),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 16,
                                                                right: 16),
                                                        width: 264,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    IntrinsicHeight(
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            8),
                                                                    width: double
                                                                        .infinity,
                                                                    child:
                                                                        TextField(
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFADAEBC),
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                      onChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          textField1 =
                                                                              value;
                                                                        });
                                                                      },
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "Type your message...",
                                                                        isDense:
                                                                            true,
                                                                        contentPadding:
                                                                            EdgeInsets.symmetric(vertical: 0),
                                                                        border:
                                                                            InputBorder.none,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              8,
                                                                          right:
                                                                              8),
                                                                  width: 28,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            margin:
                                                                                const EdgeInsets.only(top: 8),
                                                                            height: 16,
                                                                            width: double.infinity,
                                                                            child: Image.network(
                                                                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e07df677-34c0-4bc9-b8d2-03d87b13fc5f",
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ]),
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                    IntrinsicHeight(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      9999),
                                                          color:
                                                              Color(0xFF22C55E),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 12,
                                                                right: 12),
                                                        width: 40,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              IntrinsicHeight(
                                                                child:
                                                                    Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10),
                                                                  width: double
                                                                      .infinity,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            margin:
                                                                                const EdgeInsets.only(top: 2),
                                                                            height: 16,
                                                                            width: double.infinity,
                                                                            child: Image.network(
                                                                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/35926cf0-09fe-487d-b60d-3feb8ca2e843",
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ]),
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
                              ]),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
