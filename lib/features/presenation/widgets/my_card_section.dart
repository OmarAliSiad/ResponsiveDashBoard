import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_dots_indicator.dart';
import 'package:responsive_dash_board/features/presenation/widgets/my_card.dart';
import '../../../core/utils/app_styles.dart';
import '../data/models/transaction_model.dart';
import 'my_transaction_history_header.dart';
import 'my_transactions_list_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  List<TransactionModel> myTransactions = [
    TransactionModel(
        title: 'Cash Withdrawal',
        subTitle: '13 Apr, 2022',
        price: r'$20,129',
        color: const Color(0xFFF3735E)),
    TransactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$2,000',
      color: const Color(0xFF7dd97b),
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$20,129',
      color: const Color(0xFF7dd97b),
    )
  ];
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
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CustomBackGroundContainer(
            marginTop: 40,
            marginRight: 32,
            marginLeft: 24,
            marginBottom: 0,
            paddingHorizontal: 24,
            paddingVertical: 24,
            child: Column(
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
                ),
                const MyTransactionHistoryHeader(),
                const SizedBox(
                  height: 20,
                ),
                Text('13 April 2022', style: AppStyles.styleMedium15()),
                const SizedBox(
                  height: 16,
                ),
                MyTransactionsListView(
                  myTransactions: myTransactions,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
