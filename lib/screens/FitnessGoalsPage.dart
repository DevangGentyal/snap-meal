import 'package:flutter/material.dart';
class FitnessGoalsPage extends StatefulWidget {
	const FitnessGoalsPage({super.key});
	@override
		FitnessGoalsPageState createState() => FitnessGoalsPageState();
	}
class FitnessGoalsPageState extends State<FitnessGoalsPage> {
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
														color: Color(0xFFF9FAFB),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		width: double.infinity,
																		child: Stack(
																			clipBehavior: Clip.none,
																			children: [
																				Column(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						IntrinsicHeight(
																							child: Container(
																								padding: const EdgeInsets.only( bottom: 80),
																								width: double.infinity,
																								child: Column(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										IntrinsicHeight(
																											child: Container(
																												color: Color(0xFFFFFFFF),
																												margin: const EdgeInsets.only( bottom: 11),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( top: 17, bottom: 17, left: 16, right: 16),
																																width: double.infinity,
																																child: Row(
																																	children: [
																																		Container(
																																			width: 15,
																																			height: 18,
																																			child: Image.network(
																																				"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/32748e4c-f7e7-48b8-82e5-aff5a253a61d",
																																				fit: BoxFit.fill,
																																			)
																																		),
																																		Expanded(
																																			child: Container(
																																				width: double.infinity,
																																				child: SizedBox(),
																																			),
																																		),
																																		Container(
																																			margin: const EdgeInsets.only( right: 104),
																																			child: Text(
																																				"Fitness Goals",
																																				style: TextStyle(
																																					color: Color(0xFF000000),
																																					fontSize: 18,
																																				),
																																			),
																																		),
																																		Container(
																																			width: 18,
																																			height: 18,
																																			child: Image.network(
																																				"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d7858372-a162-4c36-9470-5060a9752118",
																																				fit: BoxFit.fill,
																																			)
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(12),
																													color: Color(0xFFFFFFFF),
																													boxShadow: [
																														BoxShadow(
																															color: Color(0x0D000000),
																															blurRadius: 2,
																															offset: Offset(0, 1),
																														),
																													],
																												),
																												padding: const EdgeInsets.all(16),
																												margin: const EdgeInsets.only( bottom: 24, left: 16, right: 16),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.symmetric(vertical: 4),
																																margin: const EdgeInsets.only( bottom: 8),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"Your Fitness Goal",
																																			style: TextStyle(
																																				color: Color(0xFF4B5563),
																																				fontSize: 14,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																width: double.infinity,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				alignment: Alignment.center,
																																				decoration: BoxDecoration(
																																					border: Border.all(
																																						color: Color(0xFFE5E7EB),
																																						width: 1,
																																					),
																																					borderRadius: BorderRadius.circular(8),
																																					color: Color(0xFFFFFFFF),
																																				),
																																				padding: const EdgeInsets.only( top: 22, bottom: 22, left: 13, right: 13),
																																				width: 236,
																																				child: TextField(
																																					style: TextStyle(
																																						color: Color(0xFFADAEBC),
																																						fontSize: 14,
																																					),
																																					onChanged: (value) { 
																																						setState(() { textField1 = value; });
																																					},
																																					decoration: InputDecoration(
																																						hintText: "Loose 5kg weight",
																																						isDense: true,
																																						contentPadding: EdgeInsets.symmetric(vertical: 0),
																																						border: InputBorder.none,
																																					),
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(8),
																																					color: Color(0xFF3B82F6),
																																				),
																																				padding: const EdgeInsets.symmetric(vertical: 14),
																																				width: 82,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						Container(
																																							margin: const EdgeInsets.only( bottom: 4),
																																							width: double.infinity,
																																							child: Text(
																																								"Change",
																																								style: TextStyle(
																																									color: Color(0xFFFFFFFF),
																																									fontSize: 14,
																																								),
																																								textAlign: TextAlign.center,
																																							),
																																						),
																																						Container(
																																							width: double.infinity,
																																							child: Text(
																																								"Goal",
																																								style: TextStyle(
																																									color: Color(0xFFFFFFFF),
																																									fontSize: 14,
																																								),
																																								textAlign: TextAlign.center,
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(12),
																													color: Color(0xFFEFF6FF),
																												),
																												padding: const EdgeInsets.only( top: 16, bottom: 32, left: 16, right: 16),
																												margin: const EdgeInsets.only( bottom: 24, left: 16, right: 16),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.symmetric(vertical: 4),
																																margin: const EdgeInsets.only( bottom: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"AI Nutrition Plan",
																																			style: TextStyle(
																																				color: Color(0xFF4B5563),
																																				fontSize: 14,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																width: double.infinity,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 98,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 6),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"1,800",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 20,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 3),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"Daily Calories",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 98,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 6),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"120g",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 20,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 3),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"Protein",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 98,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 6),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"60g",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 20,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 3),
																																								width: double.infinity,
																																								child: Column(
																																									children: [
																																										Text(
																																											"Fat",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(12),
																													color: Color(0xFFFFFFFF),
																													boxShadow: [
																														BoxShadow(
																															color: Color(0x0D000000),
																															blurRadius: 2,
																															offset: Offset(0, 1),
																														),
																													],
																												),
																												padding: const EdgeInsets.all(16),
																												margin: const EdgeInsets.only( bottom: 24, left: 16, right: 16),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( top: 4, bottom: 4, left: 1, right: 1),
																																margin: const EdgeInsets.only( bottom: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"Progress Tracking",
																																			style: TextStyle(
																																				color: Color(0xFF4B5563),
																																				fontSize: 14,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				margin: const EdgeInsets.only( bottom: 16),
																																				width: double.infinity,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.all(1),
																																								margin: const EdgeInsets.only( bottom: 4),
																																								width: double.infinity,
																																								child: Row(
																																									mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																									children: [
																																										Text(
																																											"Daily Goal",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																										Text(
																																											"75%",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(9999),
																																									color: Color(0xFFF3F4F6),
																																								),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Container(
																																											decoration: BoxDecoration(
																																												borderRadius: BorderRadius.circular(9999),
																																												color: Color(0xFF3B82F6),
																																											),
																																											width: 244,
																																											height: 8,
																																											child: SizedBox(),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				margin: const EdgeInsets.only( bottom: 16),
																																				width: double.infinity,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 1),
																																								margin: const EdgeInsets.only( bottom: 4),
																																								width: double.infinity,
																																								child: Row(
																																									mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																									children: [
																																										Text(
																																											"Weekly Goal",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																										Text(
																																											"60%",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(9999),
																																									color: Color(0xFFF3F4F6),
																																								),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Container(
																																											decoration: BoxDecoration(
																																												borderRadius: BorderRadius.circular(9999),
																																												color: Color(0xFF3B82F6),
																																											),
																																											width: 195,
																																											height: 8,
																																											child: SizedBox(),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: double.infinity,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.all(1),
																																								margin: const EdgeInsets.only( bottom: 4),
																																								width: double.infinity,
																																								child: Row(
																																									mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																									children: [
																																										Text(
																																											"Monthly Goal",
																																											style: TextStyle(
																																												color: Color(0xFF6B7280),
																																												fontSize: 12,
																																											),
																																										),
																																										Text(
																																											"45%",
																																											style: TextStyle(
																																												color: Color(0xFF2563EB),
																																												fontSize: 12,
																																											),
																																										),
																																									]
																																								),
																																							),
																																						),
																																						IntrinsicHeight(
																																							child: Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(9999),
																																									color: Color(0xFFF3F4F6),
																																								),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Container(
																																											decoration: BoxDecoration(
																																												borderRadius: BorderRadius.circular(9999),
																																												color: Color(0xFF3B82F6),
																																											),
																																											width: 146,
																																											height: 8,
																																											child: SizedBox(),
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.symmetric(horizontal: 16),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( bottom: 16),
																																width: double.infinity,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																					color: Color(0xFFFFFFFF),
																																					boxShadow: [
																																						BoxShadow(
																																							color: Color(0x0D000000),
																																							blurRadius: 2,
																																							offset: Offset(0, 1),
																																						),
																																					],
																																				),
																																				padding: const EdgeInsets.only( left: 16, right: 16),
																																				width: 171,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								margin: const EdgeInsets.only( top: 16),
																																								width: double.infinity,
																																								child: Row(
																																									children: [
																																										IntrinsicHeight(
																																											child: Container(
																																												margin: const EdgeInsets.only( right: 34),
																																												width: 85,
																																												child: Column(
																																													crossAxisAlignment: CrossAxisAlignment.start,
																																													children: [
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.symmetric(vertical: 3),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Container(
																																																			width: double.infinity,
																																																			child: Text(
																																																				"Current Weight",
																																																				style: TextStyle(
																																																					color: Color(0xFF6B7280),
																																																					fontSize: 12,
																																																				),
																																																				textAlign: TextAlign.center,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Text(
																																																			"68.5 kg",
																																																			style: TextStyle(
																																																				color: Color(0xFF000000),
																																																				fontSize: 20,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																													]
																																												),
																																											),
																																										),
																																										Container(
																																											width: 20,
																																											height: 20,
																																											child: Image.network(
																																												"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/86c35280-286f-44ca-b466-9839d0f12129",
																																												fit: BoxFit.fill,
																																											)
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																					color: Color(0xFFFFFFFF),
																																					boxShadow: [
																																						BoxShadow(
																																							color: Color(0x0D000000),
																																							blurRadius: 2,
																																							offset: Offset(0, 1),
																																						),
																																					],
																																				),
																																				padding: const EdgeInsets.only( left: 16, right: 16),
																																				width: 171,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								margin: const EdgeInsets.only( top: 16),
																																								width: double.infinity,
																																								child: Row(
																																									children: [
																																										IntrinsicHeight(
																																											child: Container(
																																												margin: const EdgeInsets.only( right: 31),
																																												width: 90,
																																												child: Column(
																																													crossAxisAlignment: CrossAxisAlignment.start,
																																													children: [
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.symmetric(vertical: 3),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Container(
																																																			width: double.infinity,
																																																			child: Text(
																																																				"Calories Burned",
																																																				style: TextStyle(
																																																					color: Color(0xFF6B7280),
																																																					fontSize: 12,
																																																				),
																																																				textAlign: TextAlign.center,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.symmetric(vertical: 6),
																																																width: double.infinity,
																																																child: Column(
																																																	children: [
																																																		Text(
																																																			"385 kcal",
																																																			style: TextStyle(
																																																				color: Color(0xFF000000),
																																																				fontSize: 20,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																													]
																																												),
																																											),
																																										),
																																										Container(
																																											width: 17,
																																											height: 20,
																																											child: Image.network(
																																												"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8eb7f5f3-387e-4bf9-9e26-9f330c462217",
																																												fit: BoxFit.fill,
																																											)
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																width: double.infinity,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																					color: Color(0xFFFFFFFF),
																																					boxShadow: [
																																						BoxShadow(
																																							color: Color(0x0D000000),
																																							blurRadius: 2,
																																							offset: Offset(0, 1),
																																						),
																																					],
																																				),
																																				padding: const EdgeInsets.only( left: 16, right: 16),
																																				width: 171,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								margin: const EdgeInsets.only( top: 16),
																																								width: double.infinity,
																																								child: Row(
																																									children: [
																																										IntrinsicHeight(
																																											child: Container(
																																												margin: const EdgeInsets.only( right: 50),
																																												width: 71,
																																												child: Column(
																																													crossAxisAlignment: CrossAxisAlignment.start,
																																													children: [
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.symmetric(vertical: 3),
																																																width: double.infinity,
																																																child: Column(
																																																	children: [
																																																		Text(
																																																			"Meals Today",
																																																			style: TextStyle(
																																																				color: Color(0xFF6B7280),
																																																				fontSize: 12,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Text(
																																																			"3/5",
																																																			style: TextStyle(
																																																				color: Color(0xFF000000),
																																																				fontSize: 20,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																													]
																																												),
																																											),
																																										),
																																										Container(
																																											width: 17,
																																											height: 20,
																																											child: Image.network(
																																												"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/79796722-72be-48ac-a122-1db462ed5945",
																																												fit: BoxFit.fill,
																																											)
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(12),
																																					color: Color(0xFFFFFFFF),
																																					boxShadow: [
																																						BoxShadow(
																																							color: Color(0x0D000000),
																																							blurRadius: 2,
																																							offset: Offset(0, 1),
																																						),
																																					],
																																				),
																																				padding: const EdgeInsets.only( left: 16, right: 16),
																																				width: 171,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								margin: const EdgeInsets.only( top: 16),
																																								width: double.infinity,
																																								child: Row(
																																									children: [
																																										IntrinsicHeight(
																																											child: Container(
																																												margin: const EdgeInsets.only( right: 53),
																																												width: 71,
																																												child: Column(
																																													crossAxisAlignment: CrossAxisAlignment.start,
																																													children: [
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.symmetric(vertical: 3),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Container(
																																																			width: double.infinity,
																																																			child: Text(
																																																				"Water Intake",
																																																				style: TextStyle(
																																																					color: Color(0xFF6B7280),
																																																					fontSize: 12,
																																																				),
																																																				textAlign: TextAlign.center,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																														IntrinsicHeight(
																																															child: Container(
																																																padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																																width: double.infinity,
																																																child: Column(
																																																	crossAxisAlignment: CrossAxisAlignment.start,
																																																	children: [
																																																		Text(
																																																			"1.8L",
																																																			style: TextStyle(
																																																				color: Color(0xFF000000),
																																																				fontSize: 20,
																																																			),
																																																		),
																																																	]
																																																),
																																															),
																																														),
																																													]
																																												),
																																											),
																																										),
																																										Container(
																																											width: 15,
																																											height: 20,
																																											child: Image.network(
																																												"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/98ec1d63-aa62-483d-8f5d-8a77c09645fe",
																																												fit: BoxFit.fill,
																																											)
																																										),
																																									]
																																								),
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																									]
																								),
																							),
																						),
																					]
																				),
																				Positioned(
																					bottom: 0,
																					left: 0,
																					right: 0,
																					height: 45,
																					child: Container(
																						color: Color(0xFFFFFFFF),
																						transform: Matrix4.translationValues(0, 40, 0),
																						height: 45,
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.only( top: 12, bottom: 12, left: 29, right: 29),
																										margin: const EdgeInsets.only( top: 1),
																										width: double.infinity,
																										child: Row(
																											children: [
																												Container(
																													width: 22,
																													height: 20,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ef51a50b-b98c-4489-9d74-46850d03ce1c",
																														fit: BoxFit.fill,
																													)
																												),
																												Expanded(
																													child: Container(
																														width: double.infinity,
																														child: SizedBox(),
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 59),
																													width: 17,
																													height: 20,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/50895ef2-e785-488f-92da-4f61feef8ce3",
																														fit: BoxFit.fill,
																													)
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 59),
																													width: 20,
																													height: 20,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/61367f26-1067-4eb8-a492-886914d911f7",
																														fit: BoxFit.fill,
																													)
																												),
																												Container(
																													margin: const EdgeInsets.only( right: 60),
																													width: 17,
																													height: 20,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8323c9a2-da04-40d2-b7e8-a69143846e7e",
																														fit: BoxFit.fill,
																													)
																												),
																												Container(
																													width: 17,
																													height: 20,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d0d9d3c2-13bf-4ab2-b84a-b78bd799055d",
																														fit: BoxFit.fill,
																													)
																												),
																											]
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
															]
														),
													),
												),
											],
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}