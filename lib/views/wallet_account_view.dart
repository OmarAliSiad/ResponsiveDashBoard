import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class WalletAccountView extends StatelessWidget {
  const WalletAccountView({super.key});

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
                'Wallet Account',
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
                          _buildBalanceCard(context),
                          const SizedBox(height: 20),
                          _buildQuickActions(context),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          _buildAccountDetails(context),
                          const SizedBox(height: 20),
                          _buildRecentActivity(context),
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

  Widget _buildBalanceCard(BuildContext context) {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Balance',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const Icon(Icons.visibility, color: Colors.white, size: 20),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '\$24,580.50',
            style: AppStyles.styleBold16(context).copyWith(
              color: Colors.white,
              fontSize: 28
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.trending_up, color: Colors.green[300], size: 16),
              const SizedBox(width: 4),
              Text(
                '+12.5% from last month',
                style: AppStyles.styleRegular14(context).copyWith(
                  color: Colors.green[300],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildBalanceChart(),
        ],
      ),
    );
  }

  Widget _buildBalanceChart() {
    return SizedBox(
      height: 80,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 20000),
                FlSpot(1, 22000),
                FlSpot(2, 21500),
                FlSpot(3, 23000),
                FlSpot(4, 24580),
              ],
              isCurved: true,
              color: Colors.white,
              barWidth: 2,
              dotData: const FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
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
            'Quick Actions',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildActionButton(Icons.send, 'Send', const Color(0xFF4DB7F2),context),
              _buildActionButton(
                  Icons.call_received, 'Receive', const Color(0xFF064061),context),
              _buildActionButton(
                  Icons.swap_horiz, 'Exchange', const Color(0xFF4DB7F2),context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
      IconData icon, String label, Color color, BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: AppStyles.styleRegular12(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
      ],
    );
  }

  Widget _buildAccountDetails(BuildContext context) {
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
            'Account Details',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          const SizedBox(height: 20),
          _buildDetailRow('Account Number', '**** **** **** 1234',context),
          const SizedBox(height: 12),
          _buildDetailRow('Account Type', 'Premium Savings',context),
          const SizedBox(height: 12),
          _buildDetailRow('Bank Name', 'Digital Bank',context),
          const SizedBox(height: 12),
          _buildDetailRow('IBAN', 'GB82 WEST 1234 5698 7654 32',context),
          const SizedBox(height: 12),
          _buildDetailRow('Swift Code', 'DBANKGB2L',context),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppStyles.styleRegular14(context).copyWith(
            color: const Color(0xFF064061).withOpacity(0.7),
          ),
        ),
        Text(
          value,
          style: AppStyles.styleMedium15(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
      ],
    );
  }

  Widget _buildRecentActivity(BuildContext context) {
    final activities = [
      {
        'title': 'Money Received',
        'amount': '+\$1,250.00',
        'time': '2 hours ago',
        'type': 'credit'
      },
      {
        'title': 'Online Purchase',
        'amount': '-\$89.99',
        'time': '5 hours ago',
        'type': 'debit'
      },
      {
        'title': 'Bank Transfer',
        'amount': '-\$500.00',
        'time': '1 day ago',
        'type': 'debit'
      },
      {
        'title': 'Cashback Reward',
        'amount': '+\$25.50',
        'time': '2 days ago',
        'type': 'credit'
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
              'Recent Activity',
              style: AppStyles.styleSemiBold18(context).copyWith(
                color: const Color(0xFF064061),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: activities.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final activity = activities[index];
                  final isCredit = activity['type'] == 'credit';

                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor:
                          (isCredit ? Colors.green : const Color(0xFF4DB7F2))
                              .withOpacity(0.1),
                      child: Icon(
                        isCredit ? Icons.arrow_downward : Icons.arrow_upward,
                        color:
                            isCredit ? Colors.green : const Color(0xFF4DB7F2),
                        size: 20,
                      ),
                    ),
                    title: Text(
                      activity['title']!,
                      style: AppStyles.styleMedium15(context),
                    ),
                    subtitle: Text(
                      activity['time']!,
                      style: AppStyles.styleRegular12(context).copyWith(
                        color: const Color(0xFF064061).withOpacity(0.7),
                      ),
                    ),
                    trailing: Text(
                      activity['amount']!,
                      style: AppStyles.styleSemiBold16(context).copyWith(
                        fontSize: 14,
                        color:
                            isCredit ? Colors.green : const Color(0xFF064061),
                      ),
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
