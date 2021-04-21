import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final int score;
  const ChartWidget({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                backgroundColor: AppColors.chartSecondary,
                value: score / 100,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              "$score%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
