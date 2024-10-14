import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';
import 'package:myapp/presentation/widgets/circle_container.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'widgets/custom_vertical_divider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              HexColor(AppColors.primary),
              HexColor(AppColors.secondary),
            ])),
        child: Center(child: Image.asset("assets/icons/chatIcon.png")),
      ),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 360),
        child: Container(
          padding: const EdgeInsets.fromLTRB(28.0, 40, 28, 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleContainer(
                        icon: Icons.person,
                        size: Size(30, 30),
                        iconColor: Colors.black,
                        borderColor: Colors.black,
                      ),
                      Text(
                        'Welcome, Sam 👋',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      const CircleContainer(
                        icon: Icons.notifications,
                        size: Size(30, 30),
                        iconColor: Colors.black,
                        borderColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          HexColor(AppColors.primary),
                          HexColor(AppColors.secondary),
                        ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WalletCard(
                          balance: 'NGN 50,000',
                          cashback: ' NGN341.20',
                        ),
                        CustomVerticalDivider(
                          height: 80,
                          thickness: 1,
                          useGradient: true,
                        ),
                        AccountCard(
                          accountNumber: '8192017482',
                          depositFee: 'Deposit Fee: NGN20',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionButton(icon: Icons.add, label: 'Top up'),
                      CustomVerticalDivider(
                        height: 30,
                        useGradient: false,
                        color: Colors.grey,
                      ),
                      ActionButton(icon: Icons.send, label: 'Transfer'),
                      CustomVerticalDivider(
                        height: 30,
                        useGradient: false,
                        color: Colors.grey,
                      ),
                      ActionButton(icon: Icons.history, label: 'History'),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quick Actions',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    childAspectRatio: 2.5 / 3,
                    children: const [
                      QuickActionButton(icon: Icons.data_usage, label: 'Data'),
                      QuickActionButton(
                          icon: Icons.phone_android, label: 'Airtime'),
                      QuickActionButton(icon: Icons.tv, label: 'Showmax'),
                      QuickActionButton(
                          icon: Icons.card_giftcard, label: 'Giftcards'),
                      QuickActionButton(
                          icon: Icons.sports_esports, label: 'Betting'),
                      QuickActionButton(
                          icon: Icons.electrical_services,
                          label: 'Electricity'),
                      QuickActionButton(icon: Icons.tv, label: 'TV/Cable'),
                      QuickActionButton(icon: Icons.pin, label: 'E-Pin'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'News & Update',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...List.generate(
                            2,
                            (index) => Container(
                                  height: 120,
                                  clipBehavior: Clip.hardEdge,
                                  width: MediaQuery.sizeOf(context).width / 1.3,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset(
                                    index == 0
                                        ? 'assets/images/slideone.jpeg'
                                        : "assets/images/slidetwo.jpeg",
                                    fit: BoxFit.fitWidth,
                                  ),
                                )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Statistics'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Referrals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class WalletCard extends StatelessWidget {
  final String balance;
  final String cashback;

  const WalletCard({super.key, required this.balance, required this.cashback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 137,
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Wallet Balance'.toUpperCase(),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  )),
          const SizedBox(height: 1),
          Text(balance,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
          const SizedBox(height: 4),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text.rich(
                  TextSpan(
                    text: "Cashback",
                    children: [
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: GradientText(
                            cashback,
                            gradientType: GradientType.linear,
                            stops: const [
                              1.0,
                              .25,
                            ],
                            colors: [
                              HexColor(AppColors.primary),
                              HexColor(AppColors.secondary),
                            ],
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                          )),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ))),
        ],
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  final String accountNumber;
  final String depositFee;

  const AccountCard(
      {super.key, required this.accountNumber, required this.depositFee});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      height: 89,
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.3),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('MONIEPOINT',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
          const SizedBox(height: 2),
          Text(accountNumber,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
          const SizedBox(height: 0),
          Text(depositFee,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          child: Icon(icon, color: Colors.black, size: 23),
        ),
        const SizedBox(height: 10),
        Text(label,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
      ],
    );
  }
}

class QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 79,
      margin: const EdgeInsets.only(top: 19, left: 5, right: 5),
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: HexColor(AppColors.holderBackColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientIcon(
              icon: icon,
              gradient: LinearGradient(colors: [
                HexColor(AppColors.primary),
                HexColor(AppColors.secondary),
              ]),
              size: 25),
          const SizedBox(height: 20),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
