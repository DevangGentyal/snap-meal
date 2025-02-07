import 'package:flutter/material.dart';
class SignupPage extends StatefulWidget {
	const SignupPage({super.key});
	@override
		SignupPageState createState() => SignupPageState();
	}
class SignupPageState extends State<SignupPage> {
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
														child: Stack(
															clipBehavior: Clip.none,
															children: [
																Column(
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
																								padding: const EdgeInsets.only( bottom: 13),
																								width: double.infinity,
																								child: Column(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										Container(
																											margin: const EdgeInsets.only( bottom: 12),
																											height: 52,
																											width: double.infinity,
																											child: SizedBox(),
																										),
																										IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(24),
																													gradient: LinearGradient(
																														begin: Alignment(-1, -1),
																														end: Alignment(-1, 1),
																														colors: [
																															Color(0xFFD9D9D9),
																															Color(0xFF000000),
																														],
																													),
																												),
																												padding: const EdgeInsets.only( top: 264, bottom: 35, left: 25, right: 25),
																												margin: const EdgeInsets.only( bottom: 48, left: 24, right: 24),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 9),
																															width: double.infinity,
																															child: Text(
																																"Welcome to SnapMeal!",
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 30,
																																),
																															),
																														),
																														Container(
																															width: double.infinity,
																															child: Text(
																																"Simplify your meal planning with AI-powered insights.",
																																style: TextStyle(
																																	color: Color(0xFFFFFFFF),
																																	fontSize: 18,
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																										IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.symmetric(horizontal: 24),
																												width: double.infinity,
																												child: Stack(
																													clipBehavior: Clip.none,
																													children: [
																														Column(
																															crossAxisAlignment: CrossAxisAlignment.start,
																															children: [
																																Container(
																																	height: 200,
																																	width: double.infinity,
																																	child: SizedBox(),
																																),
																															]
																														),
																														Positioned(
																															top: 0,
																															left: 0,
																															right: 0,
																															height: 108,
																															child: Container(
																																transform: Matrix4.translationValues(0, -33, 0),
																																height: 108,
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		InkWell(
																																			onTap: () { print('Pressed'); },
																																			child: IntrinsicHeight(
																																				child: Container(
																																					decoration: BoxDecoration(
																																						borderRadius: BorderRadius.circular(12),
																																						color: Color(0xFF3B82F6),
																																					),
																																					padding: const EdgeInsets.symmetric(vertical: 16),
																																					margin: const EdgeInsets.only( bottom: 12),
																																					width: double.infinity,
																																					child: Column(
																																						children: [
																																							Text(
																																								"Sign Up",
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
																																		InkWell(
																																			onTap: () { print('Pressed'); },
																																			child: IntrinsicHeight(
																																				child: Container(
																																					decoration: BoxDecoration(
																																						borderRadius: BorderRadius.circular(12),
																																						color: Color(0xFFF3F4F6),
																																					),
																																					padding: const EdgeInsets.symmetric(vertical: 17),
																																					width: double.infinity,
																																					child: Column(
																																						children: [
																																							Text(
																																								"Log In",
																																								style: TextStyle(
																																									color: Color(0xFF1F2937),
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
																	left: 24,
																	width: 342,
																	height: 210,
																	child: Container(
																		transform: Matrix4.translationValues(0, 95, 0),
																		width: 342,
																		height: 210,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( top: 2, bottom: 20),
																					width: double.infinity,
																					child: Text(
																						"Or continue with",
																						style: TextStyle(
																							color: Color(0xFF6B7280),
																							fontSize: 14,
																						),
																						textAlign: TextAlign.center,
																					),
																				),
																				InkWell(
																					onTap: () { print('Pressed'); },
																					child: IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								border: Border.all(
																									color: Color(0xFFE5E7EB),
																									width: 1,
																								),
																								borderRadius: BorderRadius.circular(12),
																							),
																							padding: const EdgeInsets.symmetric(vertical: 15),
																							width: double.infinity,
																							child: Row(
																								mainAxisAlignment: MainAxisAlignment.center,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( right: 13),
																										width: 19,
																										height: 20,
																										child: Image.network(
																											"https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/ef0da9cb-d2e3-4466-aece-d7bff2c1266d",
																											fit: BoxFit.fill,
																										)
																									),
																									Text(
																										"Continue with Google",
																										style: TextStyle(
																											color: Color(0xFF374151),
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