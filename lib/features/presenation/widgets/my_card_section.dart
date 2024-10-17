import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_dots_indicator.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card.dart';
import '../../../core/utils/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  List<Color> colors = [
    const Color(0xff4fb7f2),
    Colors.black54,
    Colors.black38,
  ];
  PageController pageController = PageController();

  int pageCurrentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageCurrentIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ExpandablePageView(
          controller: pageController,
          children: List.generate(
            3,
            (index) => Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(horizontal: 8)
                  : EdgeInsets.zero,
              child: MyCard(color: colors[index]),
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        CustomDotsIndicator(
          currentIndex: pageCurrentIndex,
        ),
        const Divider(
          indent: 1,
          height: 40,
          color: Color(0xFFF1F1F1),
        )
      ],
    );
  }
}
