import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class MyInvestmentsView extends StatelessWidget {
  const MyInvestmentsView({super.key});

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
                'My Investments',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: const Color(0xFF064061), fontSize: 28),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          _buildPortfolioOverview(context),
                          const SizedBox(height: 20),
                          _buildPerformanceChart(context),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          _buildAssetAllocation(context),
                          const SizedBox(height: 20),
                          _buildInvestmentsList(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPortfolioOverview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF4DB7F2), Color(0xFF064061)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4DB7F2).withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio Value',
            style: AppStyles.styleRegular16(context).copyWith(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '\$125,480.75',
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.trending_up, color: Colors.green[300], size: 16),
              const SizedBox(width: 4),
              Text(
                '+18.5% (+\$19,650)',
                style: AppStyles.styleRegular14(context).copyWith(
                  color: Colors.green[300],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPortfolioMetric(
                  'Today\'s P&L', '+\$2,480', Colors.green[300]!,context),
              _buildPortfolioMetric(
                  'Total Return', '18.5%', Colors.green[300]!,context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPortfolioMetric(String label, String value, Color color,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.styleRegular12(context).copyWith(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: AppStyles.styleSemiBold16(context).copyWith(color: color),
        ),
      ],
    );
  }

  Widget _buildPerformanceChart(BuildContext context) {
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
            'Performance (6M)',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: LineChart(
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
                      FlSpot(0, 100000),
                      FlSpot(1, 105000),
                      FlSpot(2, 102000),
                      FlSpot(3, 110000),
                      FlSpot(4, 115000),
                      FlSpot(5, 125480),
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

  Widget _buildAssetAllocation(BuildContext context) {
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
            'Asset Allocation',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 120,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: const Color(0xFF4DB7F2),
                          value: 45,
                          title: '',
                          radius: 40,
                        ),
                        PieChartSectionData(
                          color: const Color(0xFF064061),
                          value: 30,
                          title: '',
                          radius: 40,
                        ),
                        PieChartSectionData(
                          color: const Color(0xFF4DB7F2).withOpacity(0.7),
                          value: 15,
                          title: '',
                          radius: 40,
                        ),
                        PieChartSectionData(
                          color: const Color(0xFF064061).withOpacity(0.7),
                          value: 10,
                          title: '',
                          radius: 40,
                        ),
                      ],
                      centerSpaceRadius: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLegendItem('Stocks', '45%', const Color(0xFF4DB7F2),context),
                    _buildLegendItem('Bonds', '30%', const Color(0xFF064061),context),
                    _buildLegendItem('ETFs', '15%',
                        const Color(0xFF4DB7F2).withOpacity(0.7),context),
                    _buildLegendItem('Crypto', '10%',
                        const Color(0xFF064061).withOpacity(0.7),context),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, String percentage, Color color,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: AppStyles.styleRegular12(context),
          ),
          const Spacer(),
          Text(
            percentage,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xFF064061),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInvestmentsList(BuildContext context) {
    final investments = [
      {
        'name': 'Apple Inc.',
        'symbol': 'AAPL',
        'value': '\$45,230',
        'change': '+2.4%',
        'positive': true
      },
      {
        'name': 'Microsoft Corp.',
        'symbol': 'MSFT',
        'value': '\$32,180',
        'change': '+1.8%',
        'positive': true
      },
      {
        'name': 'Tesla Inc.',
        'symbol': 'TSLA',
        'value': '\$18,540',
        'change': '-0.9%',
        'positive': false
      },
      {
        'name': 'Amazon.com Inc.',
        'symbol': 'AMZN',
        'value': '\$15,220',
        'change': '+3.2%',
        'positive': true
      },
      {
        'name': 'Alphabet Inc.',
        'symbol': 'GOOGL',
        'value': '\$14,310',
        'change': '+1.1%',
        'positive': true
      },
    ];

    return Expanded(
      child: Container(
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
              'Top Holdings',
              style: AppStyles.styleSemiBold18(context).copyWith(
                color: const Color(0xFF064061),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: investments.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final investment = investments[index];
                  final isPositive = investment['positive'] as bool;

                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: const Color(0xFF4DB7F2).withOpacity(0.1),
                      child: Text(
                        investment['symbol']!.toString().substring(0, 2),
                        style: AppStyles.styleSemiBold16(context).copyWith(
                          color: const Color(0xFF4DB7F2),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    title: Text(
                      investment['name']!.toString(),
                      style: AppStyles.styleMedium15(context),
                    ),
                    subtitle: Text(
                      investment['symbol']!.toString(),
                      style: AppStyles.styleRegular12(context).copyWith(
                        color: const Color(0xFF064061).withOpacity(0.7),
                      ),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          investment['value']!.toString(),
                          style: AppStyles.styleSemiBold16(context).copyWith(
                            color: const Color(0xFF064061),
                            fontSize: 14
                          ),
                        ),
                        Text(
                          investment['change']!.toString(),
                          style: AppStyles.styleRegular12(context).copyWith(
                            color: isPositive ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
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
