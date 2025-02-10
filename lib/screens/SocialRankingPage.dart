import 'package:flutter/material.dart';
class SocialRankingPage extends StatefulWidget {
	const SocialRankingPage({super.key});
	@override
		SocialRankingPageState createState() => SocialRankingPageState();
	}
class SocialRankingPageState extends State<SocialRankingPage> {
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
														padding: const EdgeInsets.only( bottom: 188),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		color: Color(0xFFEFF6FF),
																		margin: const EdgeInsets.only( bottom: 68),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						padding: const EdgeInsets.symmetric(vertical: 6),
																						margin: const EdgeInsets.only( top: 24),
																						width: double.infinity,
																						child: Column(
																							children: [
																								Text(
																									"Social Ranking",
																									style: TextStyle(
																										color: Color(0xFF1F2937),
																										fontSize: 30,
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
																		child: Stack(
																			clipBehavior: Clip.none,
																			children: [
																				Column(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						IntrinsicHeight(
																							child: Container(
																								padding: const EdgeInsets.only( top: 8, bottom: 8, left: 16, right: 16),
																								width: double.infinity,
																								child: Column(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( top: 16),
																												margin: const EdgeInsets.only( bottom: 24),
																												width: double.infinity,
																												child: Row(
																													mainAxisAlignment: MainAxisAlignment.spaceBetween,
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																width: 114,
																																child: Stack(
																																	clipBehavior: Clip.none,
																																	children: [
																																		Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						decoration: BoxDecoration(
																																							border: Border.all(
																																								color: Color(0xFF7E22CE),
																																								width: 1,
																																							),
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
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								IntrinsicHeight(
																																									child: Container(
																																										margin: const EdgeInsets.only( top: 32),
																																										width: double.infinity,
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
																																																	"2nd Place",
																																																	style: TextStyle(
																																																		color: Color(0xFF4B5563),
																																																		fontSize: 12,
																																																	),
																																																),
																																															]
																																														),
																																													),
																																												),
																																												IntrinsicHeight(
																																													child: Container(
																																														padding: const EdgeInsets.symmetric(vertical: 5),
																																														width: double.infinity,
																																														child: Column(
																																															children: [
																																																Text(
																																																	"Sarah K.",
																																																	style: TextStyle(
																																																		color: Color(0xFF000000),
																																																		fontSize: 16,
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
																																														child: Column(
																																															children: [
																																																Text(
																																																	"2,890 pts",
																																																	style: TextStyle(
																																																		color: Color(0xFF2563EB),
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
																																			]
																																		),
																																		Positioned(
																																			top: 0,
																																			left: 41,
																																			width: 32,
																																			height: 32,
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(9999),
																																				),
																																				transform: Matrix4.translationValues(0, -16, 0),
																																				width: 32,
																																				height: 32,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(9999),
																																					child: Image.network(
																																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/14fff261-2a78-4f5c-8a5d-9b2a9077ab7a",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																		),
																																	]
																																),
																															),
																														),
																														IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( top: 8),
																																width: 82,
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
																																							"1st Place",
																																							style: TextStyle(
																																								color: Color(0xFF4B5563),
																																								fontSize: 12,
																																							),
																																						),
																																					]
																																				),
																																			),
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				padding: const EdgeInsets.symmetric(vertical: 5),
																																				width: double.infinity,
																																				child: Column(
																																					children: [
																																						Text(
																																							"John D.",
																																							style: TextStyle(
																																								color: Color(0xFF000000),
																																								fontSize: 16,
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
																																				child: Column(
																																					children: [
																																						Text(
																																							"3,456 pts",
																																							style: TextStyle(
																																								color: Color(0xFF2563EB),
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
																																width: 114,
																																child: Stack(
																																	clipBehavior: Clip.none,
																																	children: [
																																		Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				IntrinsicHeight(
																																					child: Container(
																																						decoration: BoxDecoration(
																																							border: Border.all(
																																								color: Color(0xFF7E22CE),
																																								width: 1,
																																							),
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
																																						width: double.infinity,
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								IntrinsicHeight(
																																									child: Container(
																																										margin: const EdgeInsets.only( top: 32),
																																										width: double.infinity,
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
																																																	"3rd Place",
																																																	style: TextStyle(
																																																		color: Color(0xFF4B5563),
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
																																														width: double.infinity,
																																														child: Column(
																																															children: [
																																																Text(
																																																	"Mike R.",
																																																	style: TextStyle(
																																																		color: Color(0xFF000000),
																																																		fontSize: 16,
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
																																														child: Column(
																																															children: [
																																																Text(
																																																	"2,654 pts",
																																																	style: TextStyle(
																																																		color: Color(0xFF2563EB),
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
																																			]
																																		),
																																		Positioned(
																																			top: 0,
																																			left: 41,
																																			width: 32,
																																			height: 32,
																																			child: Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(9999),
																																				),
																																				transform: Matrix4.translationValues(0, -16, 0),
																																				width: 32,
																																				height: 32,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(9999),
																																					child: Image.network(
																																						"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/481f34c3-d201-40e8-b2d5-8e7fc4b52d67",
																																						fit: BoxFit.fill,
																																					)
																																				)
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
																												margin: const EdgeInsets.only( bottom: 12),
																												width: double.infinity,
																												child: Row(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 153),
																																width: 157,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		Text(
																																			"4",
																																			style: TextStyle(
																																				color: Color(0xFF6B7280),
																																				fontSize: 16,
																																			),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(9999),
																																			),
																																			width: 40,
																																			height: 40,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(9999),
																																				child: Image.network(
																																					"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/a6e19e06-bb6f-40c2-8cf8-2c911a62ea61",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 82,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Text(
																																											"Emma W.",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																								child: Column(
																																									children: [
																																										Text(
																																											"2,345 points",
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
																																	]
																																),
																															),
																														),
																														Container(
																															width: 16,
																															height: 16,
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/32698d30-0ae2-41fa-961f-cc3f7b562d04",
																																fit: BoxFit.fill,
																															)
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
																												margin: const EdgeInsets.only( bottom: 12),
																												width: double.infinity,
																												child: Row(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( left: 1, right: 1),
																																margin: const EdgeInsets.only( right: 158),
																																width: 152,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		Text(
																																			"5",
																																			style: TextStyle(
																																				color: Color(0xFF6B7280),
																																				fontSize: 16,
																																			),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(9999),
																																			),
																																			width: 40,
																																			height: 40,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(9999),
																																				child: Image.network(
																																					"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/4dbb08c3-df9a-4bf3-9967-f283aa511bd5",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 79,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.only( top: 5, bottom: 5, left: 1, right: 1),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Text(
																																											"Alex M.",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																								child: Column(
																																									children: [
																																										Text(
																																											"2,100 points",
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
																																	]
																																),
																															),
																														),
																														Container(
																															width: 16,
																															height: 16,
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ae51c24c-bed7-4d2b-b3ce-7e069bbac4f6",
																																fit: BoxFit.fill,
																															)
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
																												margin: const EdgeInsets.only( bottom: 12),
																												width: double.infinity,
																												child: Row(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 154),
																																width: 154,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		Text(
																																			"6",
																																			style: TextStyle(
																																				color: Color(0xFF6B7280),
																																				fontSize: 16,
																																			),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(9999),
																																			),
																																			width: 40,
																																			height: 40,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(9999),
																																				child: Image.network(
																																					"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/0b88e548-1a02-41ad-9e09-6909094d0069",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 80,
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
																																											"Lisa P.",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Container(
																																											width: double.infinity,
																																											child: Text(
																																												"1,890 points",
																																												style: TextStyle(
																																													color: Color(0xFF6B7280),
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
																														Container(
																															width: 18,
																															height: 16,
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/abafd90e-a5e7-415e-af46-022ea6ddf8cc",
																																fit: BoxFit.fill,
																															)
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
																												width: double.infinity,
																												child: Row(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 156),
																																width: 152,
																																child: Row(
																																	mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																	children: [
																																		Text(
																																			"7",
																																			style: TextStyle(
																																				color: Color(0xFF6B7280),
																																				fontSize: 16,
																																			),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(9999),
																																			),
																																			width: 40,
																																			height: 40,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(9999),
																																				child: Image.network(
																																					"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/44c2b8eb-bc53-4a8d-ae1c-a1ad001a486a",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		IntrinsicHeight(
																																			child: Container(
																																				width: 79,
																																				child: Column(
																																					crossAxisAlignment: CrossAxisAlignment.start,
																																					children: [
																																						IntrinsicHeight(
																																							child: Container(
																																								padding: const EdgeInsets.symmetric(vertical: 5),
																																								width: double.infinity,
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Text(
																																											"Tom H.",
																																											style: TextStyle(
																																												color: Color(0xFF000000),
																																												fontSize: 16,
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
																																								child: Column(
																																									crossAxisAlignment: CrossAxisAlignment.start,
																																									children: [
																																										Container(
																																											width: double.infinity,
																																											child: Text(
																																												"1,654 points",
																																												style: TextStyle(
																																													color: Color(0xFF6B7280),
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
																														Container(
																															width: 18,
																															height: 16,
																															child: Image.network(
																																"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/4d256b32-aa2a-489c-97f8-4299d696aac0",
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
																				Positioned(
																					top: 0,
																					left: 175,
																					width: 40,
																					height: 40,
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(9999),
																						),
																						transform: Matrix4.translationValues(0, -16, 0),
																						width: 40,
																						height: 40,
																						child: ClipRRect(
																							borderRadius: BorderRadius.circular(9999),
																							child: Image.network(
																								"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/22a0dde7-7dd1-4d75-a223-c50fd3088dbf",
																								fit: BoxFit.fill,
																							)
																						)
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