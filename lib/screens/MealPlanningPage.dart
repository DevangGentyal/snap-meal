import 'package:flutter/material.dart';
class MealPlanningPage extends StatefulWidget {
	const MealPlanningPage({super.key});
	@override
		MealPlanningPageState createState() => MealPlanningPageState();
	}
class MealPlanningPageState extends State<MealPlanningPage> {
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
																		margin: const EdgeInsets.only( bottom: 9),
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
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/1eab8044-f314-4d5e-9bf5-d2413823f844",
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
																									margin: const EdgeInsets.only( right: 124),
																									child: Text(
																										"Meal Plan",
																										style: TextStyle(
																											color: Color(0xFF000000),
																											fontSize: 18,
																										),
																									),
																								),
																								Container(
																									width: 15,
																									height: 18,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/003ce8c5-f5c3-4a02-9dba-88dd53b51e54",
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
																		padding: const EdgeInsets.only( top: 29, bottom: 29, left: 16, right: 16),
																		margin: const EdgeInsets.only( bottom: 28),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( bottom: 21),
																					child: Text(
																						"Today\'s Meals",
																						style: TextStyle(
																							color: Color(0xFF000000),
																							fontSize: 18,
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
																										padding: const EdgeInsets.all(16),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.only( top: 3, bottom: 3, left: 1, right: 1),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Expanded(
																																	child: Container(
																																		margin: const EdgeInsets.only( right: 4),
																																		width: double.infinity,
																																		child: Text(
																																			"Breakfast",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
																																			),
																																		),
																																	),
																																),
																																Text(
																																	"8:00 AM",
																																	style: TextStyle(
																																		color: Color(0xFF6B7280),
																																		fontSize: 14,
																																	),
																																),
																															]
																														),
																													),
																												),
																												Container(
																													padding: const EdgeInsets.only( top: 84, bottom: 84, left: 138, right: 138),
																													margin: const EdgeInsets.only( bottom: 16),
																													height: 192,
																													width: double.infinity,
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(8),
																														image: DecorationImage(
																															image: NetworkImage("https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/169f2fff-1d9b-4c7f-872e-574665168555"),
																															fit: BoxFit.cover
																														),
																													),
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Container(
																																width: double.infinity,
																																child: Text(
																																	"IMG\n326×192",
																																	style: TextStyle(
																																		color: Color(0xFF999999),
																																		fontSize: 12,
																																	),
																																),
																															),
																														]
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( bottom: 12),
																													child: Text(
																														"Eggs and Sausage",
																														style: TextStyle(
																															color: Color(0xFF000000),
																															fontSize: 16,
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 2),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 5),
																																	width: 10,
																																	height: 14,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c83d66bc-d103-44da-82a6-412074b06dbe",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Container(
																																	margin: const EdgeInsets.only( right: 14),
																																	child: Text(
																																		"320 kcal",
																																		style: TextStyle(
																																			color: Color(0xFF4B5563),
																																			fontSize: 14,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( right: 5),
																																	width: 17,
																																	height: 14,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b64150cf-f0bd-40b6-b725-d88f986fae20",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"18g protein",
																																			style: TextStyle(
																																				color: Color(0xFF4B5563),
																																				fontSize: 14,
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
																																InkWell(
																																	onTap: () { print('Pressed'); },
																																	child: IntrinsicWidth(
																																		child: IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(8),
																																					color: Color(0xFF2563EB),
																																				),
																																				padding: const EdgeInsets.only( top: 14, bottom: 14, left: 38, right: 38),
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						Text(
																																							"Consumed",
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
																										padding: const EdgeInsets.all(16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.only( top: 4, bottom: 4, left: 1, right: 1),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Expanded(
																																	child: Container(
																																		margin: const EdgeInsets.only( right: 4),
																																		width: double.infinity,
																																		child: Text(
																																			"Lunch",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
																																			),
																																		),
																																	),
																																),
																																Text(
																																	"1:00 PM",
																																	style: TextStyle(
																																		color: Color(0xFF6B7280),
																																		fontSize: 14,
																																	),
																																),
																															]
																														),
																													),
																												),
																												Container(
																													padding: const EdgeInsets.only( top: 84, bottom: 84, left: 138, right: 138),
																													margin: const EdgeInsets.only( bottom: 15),
																													height: 192,
																													width: double.infinity,
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(8),
																														image: DecorationImage(
																															image: NetworkImage("https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e6c6c8b9-4021-45c0-b34f-e0e33ddcefde"),
																															fit: BoxFit.cover
																														),
																													),
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Container(
																																width: double.infinity,
																																child: Text(
																																	"IMG\n326×192",
																																	style: TextStyle(
																																		color: Color(0xFF999999),
																																		fontSize: 12,
																																	),
																																),
																															),
																														]
																													),
																												),
																												Container(
																													margin: const EdgeInsets.only( bottom: 13),
																													child: Text(
																														"Chicken Quinoa Bowl",
																														style: TextStyle(
																															color: Color(0xFF000000),
																															fontSize: 16,
																														),
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 2),
																														margin: const EdgeInsets.only( bottom: 14),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 5),
																																	width: 10,
																																	height: 14,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/93df6d1e-7082-4104-b9fe-7b98fc40d9ba",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Container(
																																	margin: const EdgeInsets.only( right: 14),
																																	child: Text(
																																		"450 kcal",
																																		style: TextStyle(
																																			color: Color(0xFF4B5563),
																																			fontSize: 14,
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( right: 5),
																																	width: 17,
																																	height: 14,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0791bf46-9b85-4773-b1ff-66647073b1bc",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"32g protein",
																																			style: TextStyle(
																																				color: Color(0xFF4B5563),
																																				fontSize: 14,
																																			),
																																		),
																																	),
																																),
																															]
																														),
																													),
																												),
																												Container(
																													width: 326,
																													height: 42,
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															InkWell(
																																onTap: () { print('Pressed'); },
																																child: IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(8),
																																				color: Color(0xFF2563EB),
																																			),
																																			padding: const EdgeInsets.only( top: 14, bottom: 14, left: 38, right: 38),
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.start,
																																				children: [
																																					Text(
																																						"Consumed",
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
																															),
																														]
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
																		color: Color(0xFFF9FAFB),
																		padding: const EdgeInsets.only( left: 32, right: 32),
																		margin: const EdgeInsets.only( bottom: 28),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							border: Border.all(
																								color: Color(0xFFD1D5DB),
																								width: 1,
																							),
																							borderRadius: BorderRadius.circular(8),
																						),
																						padding: const EdgeInsets.only( left: 96, right: 96),
																						width: double.infinity,
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 22),
																									width: 14,
																									height: 16,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/cf939298-bb0d-4834-b858-b516c0aa7ab1",
																										fit: BoxFit.fill,
																									)
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											alignment: Alignment.center,
																											padding: const EdgeInsets.symmetric(vertical: 13),
																											width: double.infinity,
																											child: TextField(
																												style: TextStyle(
																													color: Color(0xFF000000),
																													fontSize: 16,
																												),
																												onChanged: (value) { 
																													setState(() { textField1 = value; });
																												},
																												decoration: InputDecoration(
																													hintText: "Regenerate",
																													isDense: true,
																													contentPadding: EdgeInsets.symmetric(vertical: 0),
																													border: InputBorder.none,
																												),
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
																IntrinsicHeight(
																	child: Container(
																		color: Color(0xFFFFFFFF),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.only( top: 12, bottom: 12, left: 57, right: 57),
																						margin: const EdgeInsets.only( top: 1),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								Container(
																									width: 22,
																									height: 20,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/4e859285-79da-4b07-a0a1-38500fab72f5",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									width: 17,
																									height: 20,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a3c7f874-e851-4d47-9b4e-2b1f25861666",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									width: 17,
																									height: 20,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/560eba65-cc43-4d98-9d02-818fcb6dae62",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									width: 17,
																									height: 20,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/451676b7-3c5a-4201-abec-40cfaa548093",
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