import 'package:flutter/material.dart';
class ScannedMealPage extends StatefulWidget {
	const ScannedMealPage({super.key});
	@override
		ScannedMealPageState createState() => ScannedMealPageState();
	}
class ScannedMealPageState extends State<ScannedMealPage> {
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
														padding: const EdgeInsets.all(16),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Container(
																	decoration: BoxDecoration(
																		borderRadius: BorderRadius.circular(16),
																	),
																	margin: const EdgeInsets.only( bottom: 24),
																	height: 300,
																	width: double.infinity,
																	child: ClipRRect(
																		borderRadius: BorderRadius.circular(16),
																		child: Image.network(
																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/55db65cf-3c7b-4a97-bb3d-d883cb23c659",
																			fit: BoxFit.fill,
																		)
																	)
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
																						margin: const EdgeInsets.only( bottom: 12),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(12),
																											color: Color(0xFFEFF6FF),
																										),
																										padding: const EdgeInsets.all(16),
																										width: 173,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"Total Calories",
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
																														padding: const EdgeInsets.symmetric(vertical: 6),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"650 kcal",
																																	style: TextStyle(
																																		color: Color(0xFF1F2937),
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
																								IntrinsicHeight(
																									child: Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(12),
																											color: Color(0xFFF0FDF4),
																										),
																										padding: const EdgeInsets.all(16),
																										width: 173,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.only( top: 4, bottom: 4, left: 1, right: 1),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"Protein",
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
																														padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"35g",
																																	style: TextStyle(
																																		color: Color(0xFF1F2937),
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
																										width: 173,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"Carbs",
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
																														padding: const EdgeInsets.symmetric(vertical: 6),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"75g",
																																	style: TextStyle(
																																		color: Color(0xFF1F2937),
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
																								IntrinsicHeight(
																									child: Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(12),
																											color: Color(0xFFFAF5FF),
																										),
																										padding: const EdgeInsets.all(16),
																										width: 173,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.only( top: 4, bottom: 4, left: 1, right: 1),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"Fat",
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
																														padding: const EdgeInsets.only( top: 6, bottom: 6, left: 1, right: 1),
																														width: double.infinity,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Text(
																																	"22g",
																																	style: TextStyle(
																																		color: Color(0xFF1F2937),
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
																			color: Color(0xFFDCFCE7),
																		),
																		padding: const EdgeInsets.symmetric(vertical: 16),
																		margin: const EdgeInsets.only( bottom: 24),
																		width: double.infinity,
																		child: Row(
																			mainAxisAlignment: MainAxisAlignment.center,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( right: 12),
																					width: 24,
																					height: 24,
																					child: Image.network(
																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e2347824-320c-4075-95fa-ea2f8822e79b",
																						fit: BoxFit.fill,
																					)
																				),
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 3),
																						width: 288,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									margin: const EdgeInsets.only( bottom: 7),
																									child: Text(
																										"Good Calorie Range",
																										style: TextStyle(
																											color: Color(0xFF166534),
																											fontSize: 16,
																										),
																									),
																								),
																								Container(
																									width: double.infinity,
																									child: Text(
																										"This meal fits within your daily calorie goals",
																										style: TextStyle(
																											color: Color(0xFF15803D),
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
																IntrinsicHeight(
																	child: Container(
																		padding: const EdgeInsets.symmetric(vertical: 5),
																		margin: const EdgeInsets.only( bottom: 32),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( bottom: 21),
																					child: Text(
																						"Similar Healthy Options",
																						style: TextStyle(
																							color: Color(0xFF1F2937),
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
																										padding: const EdgeInsets.all(12),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Row(
																											children: [
																												Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(8),
																													),
																													margin: const EdgeInsets.only( right: 16),
																													width: 96,
																													height: 96,
																													child: ClipRRect(
																														borderRadius: BorderRadius.circular(8),
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/51dd6345-d616-4548-b265-4bbd757c842a",
																															fit: BoxFit.fill,
																														)
																													)
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 3),
																														width: 155,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 4),
																																	width: double.infinity,
																																	child: Text(
																																		"Grilled Salmon Bowl",
																																		style: TextStyle(
																																			color: Color(0xFF1F2937),
																																			fontSize: 16,
																																		),
																																		textAlign: TextAlign.center,
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 15),
																																	width: double.infinity,
																																	child: Text(
																																		"580 kcal | High Protein",
																																		style: TextStyle(
																																			color: Color(0xFF4B5563),
																																			fontSize: 14,
																																		),
																																		textAlign: TextAlign.center,
																																	),
																																),
																																InkWell(
																																	onTap: () { print('Pressed'); },
																																	child: IntrinsicWidth(
																																		child: IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(9999),
																																					color: Color(0xFF3B82F6),
																																				),
																																				padding: const EdgeInsets.only( top: 10, bottom: 10, left: 16, right: 16),
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						Text(
																																							"View Recipe",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																										padding: const EdgeInsets.all(12),
																										width: double.infinity,
																										child: Row(
																											children: [
																												Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(8),
																													),
																													margin: const EdgeInsets.only( right: 16),
																													width: 96,
																													height: 96,
																													child: ClipRRect(
																														borderRadius: BorderRadius.circular(8),
																														child: Image.network(
																															"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ce7640bb-7c55-48c8-aac8-a50808d1d5d6",
																															fit: BoxFit.fill,
																														)
																													)
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 3),
																														width: 161,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 4),
																																	width: double.infinity,
																																	child: Text(
																																		"Quinoa Buddha Bowl",
																																		style: TextStyle(
																																			color: Color(0xFF1F2937),
																																			fontSize: 16,
																																		),
																																		textAlign: TextAlign.center,
																																	),
																																),
																																Container(
																																	margin: const EdgeInsets.only( bottom: 15, left: 1),
																																	child: Text(
																																		"520 kcal | Plant Based",
																																		style: TextStyle(
																																			color: Color(0xFF4B5563),
																																			fontSize: 14,
																																		),
																																	),
																																),
																																InkWell(
																																	onTap: () { print('Pressed'); },
																																	child: IntrinsicWidth(
																																		child: IntrinsicHeight(
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(9999),
																																					color: Color(0xFF3B82F6),
																																				),
																																				padding: const EdgeInsets.only( top: 10, bottom: 10, left: 16, right: 16),
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						Text(
																																							"View Recipe",
																																							style: TextStyle(
																																								color: Color(0xFFFFFFFF),
																																								fontSize: 14,
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
																		padding: const EdgeInsets.only( left: 67, right: 67),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(9999),
																							color: Color(0xFF3B82F6),
																							boxShadow: [
																								BoxShadow(
																									color: Color(0x1A000000),
																									blurRadius: 6,
																									offset: Offset(0, 4),
																								),
																							],
																						),
																						padding: const EdgeInsets.symmetric(vertical: 14),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.center,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 8),
																										width: 14,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( top: 2),
																													height: 16,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9a507d6e-d280-4be4-a9e6-37acac09dc39",
																														fit: BoxFit.fill,
																													)
																												),
																											]
																										),
																									),
																								),
																								Text(
																									"Add to Food Journal",
																									style: TextStyle(
																										color: Color(0xFFFFFFFF),
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