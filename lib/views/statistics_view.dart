import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Statistics',
                style: AppStyles.styleBold16(context)
                    .copyWith(color: const Color(0xFF064061), fontSize: 28),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    _buildIncomeExpenseChart(context),
                    _buildCategoryChart(context),
                    _buildMonthlyTrendChart(context),
                    _buildPerformanceMetrics(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIncomeExpenseChart(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Income vs Expenses',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 5000,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const months = ['Jan', 'Feb', 'Mar', 'Apr'];
                        return Text(
                          months[value.toInt()],
                          style: AppStyles.styleRegular12(context),
                        );
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(
                        toY: 4000, color: const Color(0xFF4DB7F2), width: 15),
                    BarChartRodData(
                        toY: 3000, color: const Color(0xFF064061), width: 15),
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                        toY: 3500, color: const Color(0xFF4DB7F2), width: 15),
                    BarChartRodData(
                        toY: 2800, color: const Color(0xFF064061), width: 15),
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                        toY: 4200, color: const Color(0xFF4DB7F2), width: 15),
                    BarChartRodData(
                        toY: 3200, color: const Color(0xFF064061), width: 15),
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(
                        toY: 3800, color: const Color(0xFF4DB7F2), width: 15),
                    BarChartRodData(
                        toY: 2900, color: const Color(0xFF064061), width: 15),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChart(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spending by Category',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    color: const Color(0xFF4DB7F2),
                    value: 35,
                    title: 'Food\n35%',
                    radius: 60,
                    titleStyle: AppStyles.styleRegular12(context)
                        .copyWith(color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: const Color(0xFF064061),
                    value: 25,
                    title: 'Transport\n25%',
                    radius: 60,
                    titleStyle: AppStyles.styleRegular12(context)
                        .copyWith(color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: const Color(0xFF4DB7F2).withOpacity(0.7),
                    value: 20,
                    title: 'Entertainment\n20%',
                    radius: 60,
                    titleStyle: AppStyles.styleRegular12(context)
                        .copyWith(color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: const Color(0xFF064061).withOpacity(0.7),
                    value: 20,
                    title: 'Others\n20%',
                    radius: 60,
                    titleStyle: AppStyles.styleRegular12(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
                centerSpaceRadius: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMonthlyTrendChart(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monthly Trend',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: LineChart(
              duration: const Duration(seconds: 5), // بدل swapAnimationDuration
              curve: Curves.easeInOut, // بدل swapAnimationCurve
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value) => const FlLine(
                    color: Color(0xFFFAFAFA),
                    strokeWidth: 1,
                  ),
                ),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 1000),
                      FlSpot(1, 1500),
                      FlSpot(2, 1200),
                      FlSpot(3, 1800),
                      FlSpot(4, 2200),
                      FlSpot(5, 1900),
                    ],
                    isCurved: true,
                    color: const Color(0xFF4DB7F2),
                    barWidth: 3,
                    belowBarData: BarAreaData(
                      show: true,
                      color: const Color(0xFF4DB7F2).withOpacity(0.1),
                    ),
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 4,
                        color: const Color(0xFF4DB7F2),
                        strokeWidth: 2,
                        strokeColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPerformanceMetrics(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Performance Metrics',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMetricRow('Savings Rate', '22%', Icons.trending_up,
                    Colors.green, context),
                _buildMetricRow('Budget Usage', '78%', Icons.pie_chart,
                    const Color(0xFF4DB7F2), context),
                _buildMetricRow('Investment Growth', '12%', Icons.show_chart,
                    Colors.green, context),
                _buildMetricRow('Monthly Goal', '85%', Icons.flag,
                    const Color(0xFF064061), context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetricRow(String title, String value, IconData icon, Color color,
      BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
        ),
        Text(
          value,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: color, fontSize: 14),
        ),
      ],
    );
  }
}
