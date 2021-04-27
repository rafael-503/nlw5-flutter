import 'package:flutter/material.dart';

import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;

  QuestionIndicatorWidget({
    required this.currentPage,
    required this.length,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Questão $currentPage',
                  style: AppTextStyles.body,
                ),
                Text(
                  'de $length',
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(height: 16),
            ProgressIndicatorWidget(
              value: currentPage / length,
            )
          ],
        ),
      ),
    );
  }
}
