import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/faq_cubit.dart';

class FAQScreen extends StatelessWidget {
  final List<Map<String, String>> faqItems = [
    {
      'question': 'What is Lorem Ipsum?',
      'answer': '',
    },
    {
      'question': 'Why do we use Lorem Ipsum?',
      'answer':
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Using Lorem Ipsum ensures a more-or-less normal distribution of letters.',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': '',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': '',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': '',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': '',
    },
  ];

   FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FaqCubit(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              // Custom AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 16),
                    Text(
                      'FAQ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // FAQ List
              Expanded(
                child: BlocBuilder<FaqCubit, int?>(
                  builder: (context, expandedIndex) {
                    return ListView.builder(
                      itemCount: faqItems.length,
                      itemBuilder: (context, index) {
                        final isExpanded = expandedIndex == index;
                        return GestureDetector(
                          onTap: () => context.read<FaqCubit>().toggle(index),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.grey.shade800),
                                bottom: BorderSide(color: Colors.grey.shade800),
                              ),
                              color: Colors.black,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        faqItems[index]['question']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      isExpanded ? Icons.expand_less : Icons.expand_more,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                if (isExpanded && faqItems[index]['answer']!.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Text(
                                      faqItems[index]['answer']!,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
