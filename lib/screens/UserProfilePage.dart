import 'package:flutter/material.dart';
class UserProfilePage extends StatefulWidget {
	const UserProfilePage({super.key});
	@override
		UserProfilePageState createState() => UserProfilePageState();
	}
class UserProfilePageState extends State<UserProfilePage> {
	String textField1 = '';
	String textField2 = '';
	String textField3 = '';
	String textField4 = '';
	String textField5 = '';
	String textField6 = '';
	String textField7 = '';
	String textField8 = '';
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
																		margin: const EdgeInsets.only( bottom: 15),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 22, bottom: 22, left: 16, right: 16),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									width: 17,
																									height: 20,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2d90ed47-36b4-4ec4-902d-1f0916c7edad",
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
																										"User Profile",
																										style: TextStyle(
																											color: Color(0xFF000000),
																											fontSize: 18,
																										),
																									),
																								),
																								Container(
																									width: 32,
																									height: 1,
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
																		padding: const EdgeInsets.only( left: 131, right: 131),
																		margin: const EdgeInsets.only( bottom: 32, left: 16, right: 16),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					decoration: BoxDecoration(
																						borderRadius: BorderRadius.circular(9999),
																					),
																					height: 96,
																					width: double.infinity,
																					child: ClipRRect(
																						borderRadius: BorderRadius.circular(9999),
																						child: Image.network(
																							"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/6bfd19cf-8081-4c79-a5cb-86008e00218c",
																							fit: BoxFit.fill,
																						)
																					)
																				),
																			]
																		),
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		margin: const EdgeInsets.only( bottom: 23, left: 16, right: 16),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						margin: const EdgeInsets.only( bottom: 24),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.symmetric(vertical: 1),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																															margin: const EdgeInsets.only( bottom: 10),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Text(
																																		"Full Name",
																																		style: TextStyle(
																																			color: Color(0xFF374151),
																																			fontSize: 14,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
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
																														padding: const EdgeInsets.only( top: 19, bottom: 19, left: 17, right: 17),
																														width: double.infinity,
																														child: TextField(
																															style: TextStyle(
																																color: Color(0xFFADAEBC),
																																fontSize: 16,
																															),
																															onChanged: (value) { 
																																setState(() { textField1 = value; });
																															},
																															decoration: InputDecoration(
																																hintText: "Enter your name",
																																isDense: true,
																																contentPadding: EdgeInsets.symmetric(vertical: 0),
																																border: InputBorder.none,
																															),
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
																										child: Row(
																											mainAxisAlignment: MainAxisAlignment.spaceBetween,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 1),
																														width: 171,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		padding: const EdgeInsets.symmetric(vertical: 3),
																																		margin: const EdgeInsets.only( bottom: 10),
																																		width: double.infinity,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					width: double.infinity,
																																					child: Text(
																																						"Age",
																																						style: TextStyle(
																																							color: Color(0xFF374151),
																																							fontSize: 14,
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
																																		alignment: Alignment.center,
																																		decoration: BoxDecoration(
																																			border: Border.all(
																																				color: Color(0xFFE5E7EB),
																																				width: 1,
																																			),
																																			borderRadius: BorderRadius.circular(8),
																																			color: Color(0xFFFFFFFF),
																																		),
																																		padding: const EdgeInsets.only( top: 19, bottom: 19, left: 16, right: 16),
																																		width: double.infinity,
																																		child: TextField(
																																			style: TextStyle(
																																				color: Color(0xFFADAEBC),
																																				fontSize: 16,
																																			),
																																			onChanged: (value) { 
																																				setState(() { textField2 = value; });
																																			},
																																			decoration: InputDecoration(
																																				hintText: "Years",
																																				isDense: true,
																																				contentPadding: EdgeInsets.symmetric(vertical: 0),
																																				border: InputBorder.none,
																																			),
																																		),
																																	),
																																),
																															]
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 1),
																														width: 171,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		padding: const EdgeInsets.symmetric(vertical: 3),
																																		margin: const EdgeInsets.only( bottom: 10),
																																		width: double.infinity,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					width: double.infinity,
																																					child: Text(
																																						"Gender",
																																						style: TextStyle(
																																							color: Color(0xFF374151),
																																							fontSize: 14,
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
																																		decoration: BoxDecoration(
																																			border: Border.all(
																																				color: Color(0xFFE5E7EB),
																																				width: 1,
																																			),
																																			borderRadius: BorderRadius.circular(8),
																																			color: Color(0xFFFFFFFF),
																																		),
																																		padding: const EdgeInsets.only( left: 12, right: 12),
																																		width: double.infinity,
																																		child: Row(
																																			children: [
																																				Expanded(
																																					child: IntrinsicHeight(
																																						child: Container(
																																							alignment: Alignment.center,
																																							padding: const EdgeInsets.symmetric(vertical: 18),
																																							margin: const EdgeInsets.only( right: 4),
																																							width: double.infinity,
																																							child: TextField(
																																								style: TextStyle(
																																									color: Color(0xFF000000),
																																									fontSize: 16,
																																								),
																																								onChanged: (value) { 
																																									setState(() { textField3 = value; });
																																								},
																																								decoration: InputDecoration(
																																									hintText: "Select",
																																									isDense: true,
																																									contentPadding: EdgeInsets.symmetric(vertical: 0),
																																									border: InputBorder.none,
																																								),
																																							),
																																						),
																																					),
																																				),
																																				Container(
																																					width: 16,
																																					height: 9,
																																					child: Image.network(
																																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/595f0ab4-8cf8-43e6-a85c-ea24b3c76a88",
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
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Row(
																											mainAxisAlignment: MainAxisAlignment.spaceBetween,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 1),
																														width: 171,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		padding: const EdgeInsets.symmetric(vertical: 3),
																																		margin: const EdgeInsets.only( bottom: 10),
																																		width: double.infinity,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					width: double.infinity,
																																					child: Text(
																																						"Weight",
																																						style: TextStyle(
																																							color: Color(0xFF374151),
																																							fontSize: 14,
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
																																		alignment: Alignment.center,
																																		decoration: BoxDecoration(
																																			border: Border.all(
																																				color: Color(0xFFE5E7EB),
																																				width: 1,
																																			),
																																			borderRadius: BorderRadius.circular(8),
																																			color: Color(0xFFFFFFFF),
																																		),
																																		padding: const EdgeInsets.only( top: 19, bottom: 19, left: 17, right: 17),
																																		width: double.infinity,
																																		child: TextField(
																																			style: TextStyle(
																																				color: Color(0xFFADAEBC),
																																				fontSize: 16,
																																			),
																																			onChanged: (value) { 
																																				setState(() { textField4 = value; });
																																			},
																																			decoration: InputDecoration(
																																				hintText: "kg",
																																				isDense: true,
																																				contentPadding: EdgeInsets.symmetric(vertical: 0),
																																				border: InputBorder.none,
																																			),
																																		),
																																	),
																																),
																															]
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 1),
																														width: 171,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																																			margin: const EdgeInsets.only( bottom: 10),
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.start,
																																				children: [
																																					Text(
																																						"Height",
																																						style: TextStyle(
																																							color: Color(0xFF374151),
																																							fontSize: 14,
																																						),
																																					),
																																				]
																																			),
																																		),
																																	),
																																),
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			border: Border.all(
																																				color: Color(0xFFE5E7EB),
																																				width: 1,
																																			),
																																			borderRadius: BorderRadius.circular(8),
																																			color: Color(0xFFFFFFFF),
																																		),
																																		padding: const EdgeInsets.only( top: 22, bottom: 12, left: 16, right: 16),
																																		width: double.infinity,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Text(
																																					"cm",
																																					style: TextStyle(
																																						color: Color(0xFFADAEBC),
																																						fontSize: 16,
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
																										padding: const EdgeInsets.symmetric(vertical: 1),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 3),
																														margin: const EdgeInsets.only( bottom: 10),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	width: double.infinity,
																																	child: Text(
																																		"Activity Level",
																																		style: TextStyle(
																																			color: Color(0xFF374151),
																																			fontSize: 14,
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
																														decoration: BoxDecoration(
																															border: Border.all(
																																color: Color(0xFFE5E7EB),
																																width: 1,
																															),
																															borderRadius: BorderRadius.circular(8),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.only( left: 12, right: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			alignment: Alignment.center,
																																			padding: const EdgeInsets.symmetric(vertical: 18),
																																			margin: const EdgeInsets.only( right: 4),
																																			width: double.infinity,
																																			child: TextField(
																																				style: TextStyle(
																																					color: Color(0xFF000000),
																																					fontSize: 16,
																																				),
																																				onChanged: (value) { 
																																					setState(() { textField5 = value; });
																																				},
																																				decoration: InputDecoration(
																																					hintText: "Select activity level",
																																					isDense: true,
																																					contentPadding: EdgeInsets.symmetric(vertical: 0),
																																					border: InputBorder.none,
																																				),
																																			),
																																		),
																																	),
																																),
																																Container(
																																	width: 16,
																																	height: 9,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/db158b7e-e758-4783-a1df-b5f2988b2c59",
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
																										padding: const EdgeInsets.symmetric(vertical: 1),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																															margin: const EdgeInsets.only( bottom: 10),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Text(
																																		"Fitness Goal",
																																		style: TextStyle(
																																			color: Color(0xFF374151),
																																			fontSize: 14,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														decoration: BoxDecoration(
																															border: Border.all(
																																color: Color(0xFFE5E7EB),
																																width: 1,
																															),
																															borderRadius: BorderRadius.circular(8),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.only( left: 12, right: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			alignment: Alignment.center,
																																			padding: const EdgeInsets.symmetric(vertical: 18),
																																			margin: const EdgeInsets.only( right: 4),
																																			width: double.infinity,
																																			child: TextField(
																																				style: TextStyle(
																																					color: Color(0xFF000000),
																																					fontSize: 16,
																																				),
																																				onChanged: (value) { 
																																					setState(() { textField6 = value; });
																																				},
																																				decoration: InputDecoration(
																																					hintText: "Select your goal",
																																					isDense: true,
																																					contentPadding: EdgeInsets.symmetric(vertical: 0),
																																					border: InputBorder.none,
																																				),
																																			),
																																		),
																																	),
																																),
																																Container(
																																	width: 16,
																																	height: 9,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/bb8e4fc6-1040-41d6-98d6-6052c0c8ab04",
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
																						padding: const EdgeInsets.symmetric(vertical: 1),
																						margin: const EdgeInsets.only( bottom: 24),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																											margin: const EdgeInsets.only( bottom: 10),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Text(
																														"Daily Meals",
																														style: TextStyle(
																															color: Color(0xFF374151),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																								),
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
																										padding: const EdgeInsets.only( top: 18, bottom: 18, left: 17, right: 17),
																										width: double.infinity,
																										child: TextField(
																											style: TextStyle(
																												color: Color(0xFFADAEBC),
																												fontSize: 16,
																											),
																											onChanged: (value) { 
																												setState(() { textField7 = value; });
																											},
																											decoration: InputDecoration(
																												hintText: "Number of meals per day",
																												isDense: true,
																												contentPadding: EdgeInsets.symmetric(vertical: 0),
																												border: InputBorder.none,
																											),
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
																										padding: const EdgeInsets.symmetric(vertical: 1),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																															margin: const EdgeInsets.only( bottom: 10),
																															child: Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	Text(
																																		"Dietary Preferences",
																																		style: TextStyle(
																																			color: Color(0xFF374151),
																																			fontSize: 14,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														decoration: BoxDecoration(
																															border: Border.all(
																																color: Color(0xFFE5E7EB),
																																width: 1,
																															),
																															borderRadius: BorderRadius.circular(8),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.only( left: 12, right: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Expanded(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			alignment: Alignment.center,
																																			padding: const EdgeInsets.symmetric(vertical: 17),
																																			margin: const EdgeInsets.only( right: 4),
																																			width: double.infinity,
																																			child: TextField(
																																				style: TextStyle(
																																					color: Color(0xFF000000),
																																					fontSize: 16,
																																				),
																																				onChanged: (value) { 
																																					setState(() { textField8 = value; });
																																				},
																																				decoration: InputDecoration(
																																					hintText: "Select preference",
																																					isDense: true,
																																					contentPadding: EdgeInsets.symmetric(vertical: 0),
																																					border: InputBorder.none,
																																				),
																																			),
																																		),
																																	),
																																),
																																Container(
																																	width: 16,
																																	height: 9,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/cda7dd5b-9c29-4088-b035-b1b760e62dac",
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
																										padding: const EdgeInsets.symmetric(vertical: 1),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 3),
																														margin: const EdgeInsets.only( bottom: 10),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	width: double.infinity,
																																	child: Text(
																																		"Allergies",
																																		style: TextStyle(
																																			color: Color(0xFF374151),
																																			fontSize: 14,
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
																														decoration: BoxDecoration(
																															border: Border.all(
																																color: Color(0xFFE5E7EB),
																																width: 1,
																															),
																															borderRadius: BorderRadius.circular(8),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.only( top: 17, bottom: 65, left: 17, right: 17),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"List any food allergies...",
																																	style: TextStyle(
																																		color: Color(0xFFADAEBC),
																																		fontSize: 16,
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
																		color: Color(0xFFFFFFFF),
																		padding: const EdgeInsets.only( left: 16, right: 16),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				InkWell(
																					onTap: () { print('Pressed'); },
																					child: IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(8),
																								color: Color(0xFF3B82F6),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 21),
																							margin: const EdgeInsets.only( top: 17),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Text(
																										"Save Changes",
																										style: TextStyle(
																											color: Color(0xFFFFFFFF),
																											fontSize: 16,
																										),
																									),
																								]
																							),
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