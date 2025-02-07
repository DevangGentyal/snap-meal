import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
	const HomePage({super.key});
	@override
		HomePageState createState() => HomePageState();
	}
class HomePageState extends State<HomePage> {
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
																		color: Color(0xFFFFFFFF),
																		padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																		width: double.infinity,
																		child: Row(
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 5),
																						margin: const EdgeInsets.only( right: 257),
																						width: 27,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									width: double.infinity,
																									child: Text(
																										"9:41",
																										style: TextStyle(
																											color: Color(0xFF000000),
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
																						width: 74,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								Container(
																									width: 20,
																									height: 16,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/837805f8-dd65-4665-8cbf-4cd619bff04d",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									width: 20,
																									height: 16,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d265d8dc-507e-43ef-83b7-13058222357d",
																										fit: BoxFit.fill,
																									)
																								),
																								Container(
																									width: 18,
																									height: 16,
																									child: Image.network(
																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/26d97dd6-fbcf-4a41-bcc1-794432be8780",
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
																			color: Color(0xFFFFFFFF),
																			boxShadow: [
																				BoxShadow(
																					color: Color(0x0D000000),
																					blurRadius: 2,
																					offset: Offset(0, 1),
																				),
																			],
																		),
																		padding: const EdgeInsets.only( top: 16, bottom: 16, left: 24, right: 24),
																		width: double.infinity,
																		child: Row(
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						margin: const EdgeInsets.only( right: 114),
																						width: 198,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(9999),
																									),
																									width: 40,
																									height: 40,
																									child: ClipRRect(
																										borderRadius: BorderRadius.circular(9999),
																										child: Image.network(
																											"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/22d2306c-55f1-448c-a9f2-b8a9ff664116",
																											fit: BoxFit.fill,
																										)
																									)
																								),
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																										width: 146,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 7),
																													child: Text(
																														"Hi, Devang",
																														style: TextStyle(
																															color: Color(0xFF000000),
																															fontSize: 18,
																														),
																													),
																												),
																												Text(
																													"Let\'s track your meals",
																													style: TextStyle(
																														color: Color(0xFF6B7280),
																														fontSize: 14,
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
																							borderRadius: BorderRadius.circular(9999),
																							color: Color(0xFFF3F4F6),
																						),
																						padding: const EdgeInsets.only( left: 8, right: 8),
																						width: 30,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( top: 6),
																										width: double.infinity,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( top: 2),
																													height: 16,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/d42bc7c3-b4a9-4e1b-98fb-9c8353f78b77",
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
																		padding: const EdgeInsets.all(24),
																		margin: const EdgeInsets.only( bottom: 83),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(16),
																							color: Color(0xFFFFFFFF),
																							boxShadow: [
																								BoxShadow(
																									color: Color(0x0D000000),
																									blurRadius: 2,
																									offset: Offset(0, 1),
																								),
																							],
																						),
																						padding: const EdgeInsets.all(24),
																						margin: const EdgeInsets.only( bottom: 24),
																						width: double.infinity,
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.symmetric(vertical: 5),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Row(
																											children: [
																												Expanded(
																													child: Container(
																														margin: const EdgeInsets.only( right: 4),
																														width: double.infinity,
																														child: Text(
																															"Today\'s Progress",
																															style: TextStyle(
																																color: Color(0xFF000000),
																																fontSize: 18,
																															),
																														),
																													),
																												),
																												Text(
																													"On Track!",
																													style: TextStyle(
																														color: Color(0xFF22C55E),
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
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: 64,
																														child: Column(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 5),
																																	child: Text(
																																		"1,248",
																																		style: TextStyle(
																																			color: Color(0xFF22C55E),
																																			fontSize: 24,
																																		),
																																	),
																																),
																																Text(
																																	"Calories",
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
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: 45,
																														child: Column(
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 5),
																																	child: Text(
																																		"32g",
																																		style: TextStyle(
																																			color: Color(0xFF3B82F6),
																																			fontSize: 24,
																																		),
																																	),
																																),
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
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: 46,
																														child: Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	margin: const EdgeInsets.only( bottom: 5),
																																	width: double.infinity,
																																	child: Text(
																																		"45g",
																																		style: TextStyle(
																																			color: Color(0xFFEAB308),
																																			fontSize: 24,
																																		),
																																		textAlign: TextAlign.center,
																																	),
																																),
																																Container(
																																	width: double.infinity,
																																	child: Text(
																																		"Fats",
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
																														width: 56,
																														child: Stack(
																															clipBehavior: Clip.none,
																															children: [
																																Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		IntrinsicHeight(
																																			child: Container(
																																				padding: const EdgeInsets.only( top: 33, bottom: 3),
																																				width: double.infinity,
																																				child: Column(
																																					children: [
																																						Text(
																																							"Carbs",
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
																																Positioned(
																																	top: 4,
																																	right: 0,
																																	width: 55,
																																	height: 24,
																																	child: Container(
																																		transform: Matrix4.translationValues(1, 0, 0),
																																		child: Text(
																																			"165g",
																																			style: TextStyle(
																																				color: Color(0xFFA855F7),
																																				fontSize: 24,
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
																				IntrinsicHeight(
																					child: Container(
																						margin: const EdgeInsets.only( bottom: 24),
																						width: double.infinity,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(12),
																											gradient: LinearGradient(
																												begin: Alignment(-1, -1),
																												end: Alignment(-1, 1),
																												colors: [
																													Color(0xFF70FFA4),
																													Color(0xFF00A33C),
																												],
																											),
																										),
																										padding: const EdgeInsets.symmetric(vertical: 16),
																										width: 163,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 8, left: 69, right: 69),
																													height: 24,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/e462fa17-ee4f-4b20-bb72-5b6292ee7f1d",
																														fit: BoxFit.fill,
																													)
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														margin: const EdgeInsets.symmetric(horizontal: 46),
																														width: double.infinity,
																														child: Column(
																															children: [
																																Text(
																																	"Scan Meal",
																																	style: TextStyle(
																																		color: Color(0xFFFFFFFF),
																																		fontSize: 14,
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
																											gradient: LinearGradient(
																												begin: Alignment(-1, -1),
																												end: Alignment(-1, 1),
																												colors: [
																													Color(0xFF3B82F6),
																													Color(0xFF223A90),
																												],
																											),
																										),
																										padding: const EdgeInsets.symmetric(vertical: 16),
																										width: 163,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 8, left: 71, right: 71),
																													height: 24,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/c73483b6-0154-44b3-9dcd-bd1fa24a9a4f",
																														fit: BoxFit.fill,
																													)
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														margin: const EdgeInsets.symmetric(horizontal: 41),
																														width: double.infinity,
																														child: Column(
																															children: [
																																Text(
																																	"Add Manual",
																																	style: TextStyle(
																																		color: Color(0xFFFFFFFF),
																																		fontSize: 14,
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
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.symmetric(vertical: 4),
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Row(
																											mainAxisAlignment: MainAxisAlignment.spaceBetween,
																											children: [
																												Text(
																													"Suggested Meals",
																													style: TextStyle(
																														color: Color(0xFF000000),
																														fontSize: 18,
																													),
																												),
																												IntrinsicHeight(
																													child: Container(
																														padding: const EdgeInsets.symmetric(vertical: 4),
																														width: 45,
																														child: Column(
																															children: [
																																Text(
																																	"See All",
																																	style: TextStyle(
																																		color: Color(0xFF22C55E),
																																		fontSize: 14,
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
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												IntrinsicHeight(
																													child: Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(12),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.all(16),
																														margin: const EdgeInsets.only( bottom: 16),
																														width: double.infinity,
																														child: Row(
																															mainAxisAlignment: MainAxisAlignment.spaceBetween,
																															children: [
																																Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(8),
																																	),
																																	width: 64,
																																	height: 64,
																																	child: ClipRRect(
																																		borderRadius: BorderRadius.circular(8),
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/61f8fdd1-882e-4031-a7e5-7b8c3c7b170e",
																																			fit: BoxFit.fill,
																																		)
																																	)
																																),
																																IntrinsicHeight(
																																	child: Container(
																																		padding: const EdgeInsets.symmetric(vertical: 4),
																																		width: 184,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 6),
																																					child: Text(
																																						"Greek Yogurt Bowl",
																																						style: TextStyle(
																																							color: Color(0xFF000000),
																																							fontSize: 16,
																																						),
																																					),
																																				),
																																				Container(
																																					margin: const EdgeInsets.only( left: 1),
																																					child: Text(
																																						"320 cal • 15g protein",
																																						style: TextStyle(
																																							color: Color(0xFF6B7280),
																																							fontSize: 14,
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
																																			borderRadius: BorderRadius.circular(9999),
																																			color: Color(0xFFF3F4F6),
																																		),
																																		padding: const EdgeInsets.only( left: 8, right: 8),
																																		width: 30,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						margin: const EdgeInsets.only( top: 6),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( top: 2),
																																									height: 16,
																																									width: double.infinity,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/8dfc6533-4e34-40ad-a181-628029b85106",
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
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(12),
																															color: Color(0xFFFFFFFF),
																														),
																														padding: const EdgeInsets.all(16),
																														width: double.infinity,
																														child: Row(
																															mainAxisAlignment: MainAxisAlignment.spaceBetween,
																															children: [
																																Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(8),
																																	),
																																	width: 64,
																																	height: 64,
																																	child: ClipRRect(
																																		borderRadius: BorderRadius.circular(8),
																																		child: Image.network(
																																			"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/fb02d4df-358f-45eb-ba93-98d9146afa62",
																																			fit: BoxFit.fill,
																																		)
																																	)
																																),
																																IntrinsicHeight(
																																	child: Container(
																																		padding: const EdgeInsets.symmetric(vertical: 3),
																																		width: 184,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Container(
																																					margin: const EdgeInsets.only( bottom: 7),
																																					width: double.infinity,
																																					child: Text(
																																						"Chicken Avocado Salad",
																																						style: TextStyle(
																																							color: Color(0xFF000000),
																																							fontSize: 16,
																																						),
																																						textAlign: TextAlign.center,
																																					),
																																				),
																																				Text(
																																					"420 cal • 32g protein",
																																					style: TextStyle(
																																						color: Color(0xFF6B7280),
																																						fontSize: 14,
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
																																		padding: const EdgeInsets.only( left: 8, right: 8),
																																		width: 30,
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						margin: const EdgeInsets.only( top: 6),
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Container(
																																									margin: const EdgeInsets.only( top: 2),
																																									height: 16,
																																									width: double.infinity,
																																									child: Image.network(
																																										"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/28e2bd98-388b-45ff-8358-a1e0ed76174c",
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
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		color: Color(0xFFFFFFFF),
																		padding: const EdgeInsets.only( left: 24, right: 24),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						margin: const EdgeInsets.only( top: 17),
																						width: double.infinity,
																						child: Row(
																							children: [
																								IntrinsicHeight(
																									child: Container(
																										padding: const EdgeInsets.only( left: 1, right: 1),
																										margin: const EdgeInsets.only( right: 66),
																										width: 33,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 5),
																													height: 20,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0f26da6f-7dd6-4912-86e6-6d5a0938f992",
																														fit: BoxFit.fill,
																													)
																												),
																												Text(
																													"Home",
																													style: TextStyle(
																														color: Color(0xFF22C55E),
																														fontSize: 12,
																													),
																												),
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 67),
																										width: 28,
																										child: Stack(
																											clipBehavior: Clip.none,
																											children: [
																												Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( left: 6, right: 6),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			height: 20,
																																			width: double.infinity,
																																			child: Image.network(
																																				"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/71918ee2-e9ab-4ff1-aac1-217b4e697990",
																																				fit: BoxFit.fill,
																																			)
																																		),
																																	]
																																),
																															),
																														),
																													]
																												),
																												Positioned(
																													bottom: 3,
																													left: 1,
																													width: 28,
																													height: 12,
																													child: Text(
																														"Stats",
																														style: TextStyle(
																															color: Color(0xFF9CA3AF),
																															fontSize: 12,
																														),
																													),
																												),
																											]
																										),
																									),
																								),
																								IntrinsicHeight(
																									child: Container(
																										margin: const EdgeInsets.only( right: 66),
																										width: 45,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 5, left: 11, right: 11),
																													height: 20,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ba6d10cd-c89c-41c2-aa49-e4345567754f",
																														fit: BoxFit.fill,
																													)
																												),
																												Container(
																													width: double.infinity,
																													child: Text(
																														"Ranking",
																														style: TextStyle(
																															color: Color(0xFF9CA3AF),
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
																										padding: const EdgeInsets.only( left: 2, right: 2),
																										width: 36,
																										child: Column(
																											crossAxisAlignment: CrossAxisAlignment.start,
																											children: [
																												Container(
																													margin: const EdgeInsets.only( bottom: 4),
																													height: 20,
																													width: double.infinity,
																													child: Image.network(
																														"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9e9fbcad-f7b7-40bb-bae8-2f3b79e222fa",
																														fit: BoxFit.fill,
																													)
																												),
																												Text(
																													"Profile",
																													style: TextStyle(
																														color: Color(0xFF9CA3AF),
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