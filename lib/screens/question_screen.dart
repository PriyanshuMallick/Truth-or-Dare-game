import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:truthordare/module/questions.dart';
import 'package:truthordare/theme/app_colors.dart';
import 'package:truthordare/theme/app_styles.dart';
import 'package:truthordare/utils/app_layout.dart';
import 'package:truthordare/widgets/circular_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/incremental_text.dart';

class QuestionScreen extends StatefulWidget {
  final bool isTruth;
  const QuestionScreen({super.key, required this.isTruth});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    Random rand = Random();
    int index = rand.nextInt(Questions.length);
    return Scaffold(
      backgroundColor: widget.isTruth ? AppColors.truthBG : AppColors.dareBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: const Icon(
                        FontAwesomeIcons.chevronLeft,
                        color: AppColors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(80)),
              Text(
                widget.isTruth ? "Truth" : "Dare",
                style: AppStyles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(30)),

              IncrementalText(
                text: widget.isTruth ? Questions.truth[index] : Questions.dare[index],
              ),

              Expanded(child: Container()),

              //? ----------------------------------- Next and Skip buttons -----------------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularButton(
                    icon: FontAwesomeIcons.arrowRotateLeft,
                    bgColor: AppColors.darkBlue,
                    color: AppColors.white,
                    onTap: () => setState(() {
                      index = rand.nextInt(Questions.length);
                    }),
                  ),
                  CircularButton(
                    icon: FontAwesomeIcons.chevronRight,
                    bgColor: AppColors.darkBlue,
                    color: AppColors.white,
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
