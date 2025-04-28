import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.SummeryData, {super.key});

  final List<Map<String, Object>> SummeryData;

  Color getCircleColor(Map<String, Object> data) {
    return data['correct_answer'] == data['user_answer']
        ? const Color.fromARGB(255, 6, 238, 13)
        : const Color.fromARGB(255, 170, 51, 38);
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children:
              SummeryData.map((data) {
                return Row(
                  spacing: 20,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: getCircleColor(data),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 10, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 170, 51, 38),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // const SizedBox(height: 5,),
                          Text(
                            data['user_answer'] as String,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 6, 238, 13),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
