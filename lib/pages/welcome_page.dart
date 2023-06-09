import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_btn.dart';

import '../misc/app_colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List img = ["welcome-one.jpg", "welcome-two.jpg", "welcome-three.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scrollDirection: Axis.vertical - 스크롤 수직 이동
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
              // 화면의 최대 넓이, 높이 취하기
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  // ignore: prefer_interpolation_to_compose_strings
                  image: AssetImage("images/" + img[index]),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AppLargeText(text: 'Trips'),
                            const SizedBox(width: 180),
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context).getData();
                              },
                              child: Container(
                                  width: 200,
                                  child: Row(
                                    children: [
                                      ResponsiveBtn(width: 100),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        AppText(text: 'Beach', size: 40),
                        const SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Beach travel give you an incredible sense of freedom",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          children: List.generate(
                            3,
                            (indexDots) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 4),
                                width: 8,
                                height: index == indexDots ? 50 : 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots
                                      ? Colors.yellowAccent
                                      : Colors.yellowAccent.withOpacity(0.4),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
