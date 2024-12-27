import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30, // 圓形邊框的寬度
                  height: 30, // 圓形邊框的高度
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: data['user_answer'] == data['correct_answer']
                        ? Colors.lightBlue[200]
                        : Colors.purple[300], // 背景顏色
                    // border: Border.all(color: Colors.black, width: 2), // 邊框樣式
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 20)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 189, 172, 221)),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.lightBlue[100]),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
