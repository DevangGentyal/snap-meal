import 'package:flutter/material.dart';
class MealDetailPage extends StatefulWidget {
	const MealDetailPage({super.key});
	@override
		MealDetailPageState createState() => MealDetailPageState();
	}
class MealDetailPageState extends State<MealDetailPage> {
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
														color: Color(0xFFFFFFFF),
														width: double.infinity,
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
																						margin: const EdgeInsets.only( bottom: 43),
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
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/59da9179-fc8b-411a-bbb9-edd7281c13a1",
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
																													margin: const EdgeInsets.only( right: 110),
																													child: Text(
																														"Meal Detail",
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
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ab88854f-c9d0-4db5-8d70-f9a5e1ae408f",
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
																						padding: const EdgeInsets.only( left: 16, right: 16),
																						margin: const EdgeInsets.only( bottom: 32, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									padding: const EdgeInsets.only( top: 99, bottom: 99, left: 137, right: 137),
																									margin: const EdgeInsets.only( top: 23),
																									height: 223,
																									width: double.infinity,
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(8),
																										image: DecorationImage(
																											image: NetworkImage("https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/f93b27d8-bd80-4550-9698-b54c14972c1f"),
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
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 3),
																						margin: const EdgeInsets.only( bottom: 32, left: 16, right: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 21, left: 1),
																									child: Text(
																										"Nutritional Information",
																										style: TextStyle(
																											color: Color(0xFF000000),
																											fontSize: 20,
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
																														child: Row(
																															mainAxisAlignment: MainAxisAlignment.spaceBetween,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(12),
																																			color: Color(0xFFF0FDF4),
																																		),
																																		padding: const EdgeInsets.all(16),
																																		width: 171,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						padding: const EdgeInsets.symmetric(vertical: 3),
																																						margin: const EdgeInsets.only( bottom: 8),
																																						width: double.infinity,
																																						child: Row(
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( right: 8),
																																									width: 14,
																																									height: 16,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/6b50d218-f82c-4df5-a591-ff0f7b53548b",
																																										fit: BoxFit.fill,
																																									)
																																								),
																																								Expanded(
																																									child: Container(
																																										width: double.infinity,
																																										child: Text(
																																											"Calories",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																						padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Text(
																																									"450 kcal",
																																									style: TextStyle(
																																										color: Color(0xFF000000),
																																										fontSize: 24,
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
																																		padding: const EdgeInsets.all(16),
																																		width: 171,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						padding: const EdgeInsets.symmetric(vertical: 3),
																																						margin: const EdgeInsets.only( bottom: 8),
																																						width: double.infinity,
																																						child: Row(
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( right: 9),
																																									width: 16,
																																									height: 16,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/b6a33425-e9ff-4d34-82b8-5f73ee8bc8eb",
																																										fit: BoxFit.fill,
																																									)
																																								),
																																								Expanded(
																																									child: Container(
																																										width: double.infinity,
																																										child: Text(
																																											"Protein",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																						padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Text(
																																									"32g",
																																									style: TextStyle(
																																										color: Color(0xFF000000),
																																										fontSize: 24,
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
																														width: double.infinity,
																														child: Row(
																															mainAxisAlignment: MainAxisAlignment.spaceBetween,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(12),
																																			color: Color(0xFFFEFCE8),
																																		),
																																		padding: const EdgeInsets.all(16),
																																		width: 171,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						padding: const EdgeInsets.symmetric(vertical: 4),
																																						margin: const EdgeInsets.only( bottom: 8),
																																						width: double.infinity,
																																						child: Row(
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( right: 8),
																																									width: 16,
																																									height: 16,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/18eaf738-9e0f-49b1-8fa6-5770de80be84",
																																										fit: BoxFit.fill,
																																									)
																																								),
																																								Expanded(
																																									child: Container(
																																										width: double.infinity,
																																										child: Text(
																																											"Carbs",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																						padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Text(
																																									"45g",
																																									style: TextStyle(
																																										color: Color(0xFF000000),
																																										fontSize: 24,
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
																																			color: Color(0xFFFAF5FF),
																																		),
																																		padding: const EdgeInsets.all(16),
																																		width: 171,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						padding: const EdgeInsets.symmetric(vertical: 4),
																																						margin: const EdgeInsets.only( bottom: 8),
																																						width: double.infinity,
																																						child: Row(
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( right: 9),
																																									width: 20,
																																									height: 16,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/343d5265-022d-4be3-9be7-ac473d430b10",
																																										fit: BoxFit.fill,
																																									)
																																								),
																																								Expanded(
																																									child: Container(
																																										width: double.infinity,
																																										child: Text(
																																											"Fats",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																						padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Text(
																																									"18g",
																																									style: TextStyle(
																																										color: Color(0xFF000000),
																																										fontSize: 24,
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
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(12),
																							color: Color(0xFFF9FAFB),
																						),
																						padding: const EdgeInsets.all(24),
																						margin: const EdgeInsets.symmetric(horizontal: 16),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Ingredients",
																													style: TextStyle(
																														color: Color(0xFF000000),
																														fontSize: 20,
																													),
																												),
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( bottom: 24),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 13),
																																	width: 16,
																																	height: 16,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/5300b87f-b572-41a0-b8b9-4693de9ceacf",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"2 cups mixed greens",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 13),
																																	width: 16,
																																	height: 16,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/62c59ef1-463a-44eb-977c-ead370d7c1f4",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"200g grilled chicken breast",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														margin: const EdgeInsets.only( bottom: 12),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 12),
																																	width: 16,
																																	height: 16,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c65cf931-9af5-40e3-9c18-578406e20911",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"1 ripe avocado",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: double.infinity,
																														child: Row(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( right: 13),
																																	width: 14,
																																	height: 16,
																																	child: Image.network(
																																		"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/32a4bdd7-be57-4054-b946-6ae2575548a8",
																																		fit: BoxFit.fill,
																																	)
																																),
																																Expanded(
																																	child: Container(
																																		width: double.infinity,
																																		child: Text(
																																			"2 tbsp olive oil",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																										padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Text(
																													"Instructions",
																													style: TextStyle(
																														color: Color(0xFF000000),
																														fontSize: 20,
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
																														padding: const EdgeInsets.only( right: 18),
																														margin: const EdgeInsets.only( bottom: 16),
																														width: double.infinity,
																														child: Row(
																															mainAxisAlignment: MainAxisAlignment.spaceBetween,
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(9999),
																																			color: Color(0xFFDBEAFE),
																																		),
																																		padding: const EdgeInsets.symmetric(vertical: 5),
																																		width: 24,
																																		child: Column(
																																			children: [
																																				Text(
																																					"1",
																																					style: TextStyle(
																																						color: Color(0xFF000000),
																																						fontSize: 16,
																																					),
																																				),
																																			]
																																		),
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( top: 8),
																																	width: 256,
																																	child: Text(
																																		"Prep: Wash and dry all vegetables thoroughly",
																																		style: TextStyle(
																																			color: Color(0xFF000000),
																																			fontSize: 16,
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
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(9999),
																																			color: Color(0xFFDBEAFE),
																																		),
																																		padding: const EdgeInsets.symmetric(vertical: 5),
																																		margin: const EdgeInsets.only( right: 12),
																																		width: 24,
																																		child: Column(
																																			children: [
																																				Text(
																																					"2",
																																					style: TextStyle(
																																						color: Color(0xFF000000),
																																						fontSize: 16,
																																					),
																																				),
																																			]
																																		),
																																	),
																																),
																																Expanded(
																																	child: Container(
																																		margin: const EdgeInsets.only( top: 8),
																																		width: double.infinity,
																																		child: Text(
																																			"Chop: Cut chicken into bite-sized pieces",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(9999),
																																			color: Color(0xFFDBEAFE),
																																		),
																																		padding: const EdgeInsets.symmetric(vertical: 5),
																																		margin: const EdgeInsets.only( right: 13),
																																		width: 24,
																																		child: Column(
																																			children: [
																																				Text(
																																					"3",
																																					style: TextStyle(
																																						color: Color(0xFF000000),
																																						fontSize: 16,
																																					),
																																				),
																																			]
																																		),
																																	),
																																),
																																Expanded(
																																	child: Container(
																																		margin: const EdgeInsets.only( top: 7),
																																		width: double.infinity,
																																		child: Text(
																																			"Mix: Combine all ingredients in a large bowl",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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
																														child: Row(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(9999),
																																			color: Color(0xFFDBEAFE),
																																		),
																																		padding: const EdgeInsets.symmetric(vertical: 5),
																																		margin: const EdgeInsets.only( right: 12),
																																		width: 24,
																																		child: Column(
																																			children: [
																																				Text(
																																					"4",
																																					style: TextStyle(
																																						color: Color(0xFF000000),
																																						fontSize: 16,
																																					),
																																				),
																																			]
																																		),
																																	),
																																),
																																Expanded(
																																	child: Container(
																																		margin: const EdgeInsets.only( top: 8),
																																		width: double.infinity,
																																		child: Text(
																																			"Dress: Drizzle with olive oil and season to taste",
																																			style: TextStyle(
																																				color: Color(0xFF000000),
																																				fontSize: 16,
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