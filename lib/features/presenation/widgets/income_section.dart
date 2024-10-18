import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/features/presenation/data/models/income_model.dart';
import 'package:responsive_dash_board/features/presenation/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/presenation/widgets/custom_container_back_%20ground.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});
  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
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
                flex: 1,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    getChartData(),
                  ),
                ),
              ),
              const SizedBox(
                width: 42,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    4,
                    (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            color: incomes[index].color,
                            shape: const OvalBorder(),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Text(
                            incomes[index].title,
                            style: AppStyles.styleRegular16(),
                          ),
                        ),
                        trailing: Text(
                          incomes[index].prectange,
                          style: AppStyles.styleMedium16().copyWith(
                            color: const Color(0xFF208CC8),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      centerSpaceRadius: 60,
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
          (FlTouchEvent, PieTouchResponse? pieTouchResponse) {
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
          radius: activeIndex == 0 ? 60 : 40,
          color: const Color(0xFFE2DECD),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 40,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 40,
          color: const Color(0xFF064061),
        )
      ],
    );
  }
}
