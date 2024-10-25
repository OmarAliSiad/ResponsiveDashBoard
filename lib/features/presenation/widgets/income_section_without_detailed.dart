import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';

import '../../../core/utils/app_styles.dart';
import '../data/models/income_model.dart';

class IncomeSectionWithoutDetails extends StatefulWidget {
  const IncomeSectionWithoutDetails({super.key});
  @override
  State<IncomeSectionWithoutDetails> createState() =>
      _IncomeSectionWithoutDetailsState();
}

class _IncomeSectionWithoutDetailsState
    extends State<IncomeSectionWithoutDetails> {
  int activeIndex = -1;
  List<IncomeModel> incomes = [
    IncomeModel(
        color: const Color(0xFF064061),
        title: 'Design service',
        prectange: '40%'),
    IncomeModel(
        color: const Color(0xff208CC8),
        title: 'Design product',
        prectange: '25%'),
    IncomeModel(
        color: const Color(0xff4EB7F2),
        title: 'Product royalti',
        prectange: '20%'),
    IncomeModel(
      color: const Color(0xffE2DECD),
      title: 'Other',
      prectange: '22%',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      marginTop: 24,
      marginLeft: 24,
      marginRight: 32,
      marginBottom: 32,
      paddingHorizontal: 20,
      paddingVertical: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const AllExpensesHeader(
            title: 'Income',
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 60, top: 20, bottom: 20, right: 10),
                    child: PieChart(
                      getChartData(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 42,
              ),
            ],
          ),
        ],
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      centerSpaceRadius: 80,
      sectionsSpace: 0,
      pieTouchData: PieTouchData(touchCallback:
          (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
        if (pieTouchResponse!.touchedSection != null) {
          setState(
            () {
              activeIndex =
                  pieTouchResponse.touchedSection?.touchedSectionIndex ?? -1;
            },
          );
        }
      }, mouseCursorResolver:
          (FlTouchEvent e, PieTouchResponse? pieTouchResponse) {
        if (pieTouchResponse!.touchedSection != null &&
                pieTouchResponse.touchedSection!.touchedSectionIndex == 0 ||
            pieTouchResponse.touchedSection!.touchedSectionIndex == 1 ||
            pieTouchResponse.touchedSection!.touchedSectionIndex == 2 ||
            pieTouchResponse.touchedSection!.touchedSectionIndex == 3) {
          return SystemMouseCursors.click;
        } else {
          return SystemMouseCursors.basic;
        }
      }),
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          showTitle: true,
          value: 40,
          titleStyle: AppStyles.styleMedium16(context),
          radius: activeIndex == 0 ? 60 : 40,
          color: const Color(0xFFE2DECD),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.88 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(fontSize: 14),
          value: 25,
          radius: activeIndex == 1 ? 60 : 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.35 : null,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16(context),
          value: 20,
          radius: activeIndex == 2 ? 60 : 40,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle:
              AppStyles.styleMedium16(context).copyWith(color: Colors.black),
          value: 22,
          radius: activeIndex == 3 ? 60 : 40,
          color: const Color(0xFF064061),
        )
      ],
    );
  }
}
