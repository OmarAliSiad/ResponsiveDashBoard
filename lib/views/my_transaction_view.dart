import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class MyTransactionView extends StatelessWidget {
  const MyTransactionView({super.key});

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
                'My Transactions',
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: const Color(0xFF064061),
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          _buildSpendingChart(context),
                          const SizedBox(height: 20),
                          _buildQuickStats(context),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: _buildTransactionList(context),
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

  Widget _buildSpendingChart(BuildContext context) {
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
            'Monthly Spending',
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 3),
                      FlSpot(1, 1),
                      FlSpot(2, 4),
                      FlSpot(3, 2),
                      FlSpot(4, 5),
                      FlSpot(5, 3),
                    ],
                    isCurved: true,
                    color: const Color(0xFF4DB7F2),
                    barWidth: 3,
                    belowBarData: BarAreaData(
                      show: true,
                      color: const Color(0xFF4DB7F2).withOpacity(0.1),
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickStats(BuildContext context) {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
              'Total Spent', '\$12,345', const Color(0xFF4DB7F2), context),
          _buildStatItem(
              'This Month', '\$2,180', const Color(0xFF064061), context),
          _buildStatItem('Avg/Day', '\$72', const Color(0xFF4DB7F2), context),
        ],
      ),
    );
  }

  Widget _buildStatItem(
      String title, String value, Color color, BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppStyles.styleBold16(context)
              .copyWith(color: color, fontSize: 20),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: AppStyles.styleRegular14(context).copyWith(
            color: const Color(0xFF064061).withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionList(BuildContext context) {
    final transactions = [
      {
        'title': 'Grocery Shopping',
        'amount': '-\$85.50',
        'date': 'Today',
        'category': 'Food'
      },
      {
        'title': 'Netflix Subscription',
        'amount': '-\$15.99',
        'date': 'Yesterday',
        'category': 'Entertainment'
      },
      {
        'title': 'Salary Deposit',
        'amount': '+\$3,200.00',
        'date': '2 days ago',
        'category': 'Income'
      },
      {
        'title': 'Coffee Shop',
        'amount': '-\$12.75',
        'date': '3 days ago',
        'category': 'Food'
      },
      {
        'title': 'Gas Station',
        'amount': '-\$45.20',
        'date': '4 days ago',
        'category': 'Transport'
      },
    ];

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
            'Recent Transactions',
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemCount: transactions.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                final isIncome = transaction['amount']!.startsWith('+');

                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFF4DB7F2).withOpacity(0.1),
                    child: Icon(
                      isIncome ? Icons.arrow_downward : Icons.arrow_upward,
                      color: isIncome ? Colors.green : const Color(0xFF4DB7F2),
                    ),
                  ),
                  title: Text(
                    transaction['title']!,
                    style: AppStyles.styleMedium16(context),
                  ),
                  subtitle: Text(
                    '${transaction['category']} • ${transaction['date']}',
                    style: AppStyles.styleRegular14(context).copyWith(
                      color: const Color(0xFF064061).withOpacity(0.7),
                    ),
                  ),
                  trailing: Text(
                    transaction['amount']!,
                    style: AppStyles.styleSemiBold16(context).copyWith(
                      color: isIncome ? Colors.green : const Color(0xFF064061),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
