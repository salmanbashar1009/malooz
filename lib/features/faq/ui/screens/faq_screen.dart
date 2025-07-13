import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';

import '../../cubit/faq_cubit.dart';

class FAQScreen extends StatelessWidget {
  final List<Map<String, String>> faqItems = [
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'Why do we use Lorem Ipsum?',
      'answer':
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Using Lorem Ipsum ensures a more-or-less normal distribution of letters.',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
    {
      'question': 'What is Lorem Ipsum?',
      'answer': 'It is a long established fact that a reader will be distracted by the readable content of a page ',
    },
  ];

   FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FaqCubit(),
      child: Scaffold(
        appBar: Utils.appBar(context: context,title: 'FAQ'),
        body: Column(
          children: [
            const SizedBox(height: 70),
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
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          padding: AppPadding.padding16,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: AppColors.white50),
                              bottom:  BorderSide(color:  index == faqItems.length - 1 ? AppColors.white50 : Colors.transparent),
                            ),
                            // color: Colors.black,
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
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
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
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
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
    );
  }
}
