import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:monetariz/utilities/color.dart';
import 'package:monetariz/utilities/layout_builder.dart';
import 'package:monetariz/widgets/container/base_container.dart';
import 'package:monetariz/widgets/text/autosizetext.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayoutBuilder(mobile: TransactionMobileScreen());
  }
}

class TransactionMobileScreen extends StatelessWidget {
  const TransactionMobileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const MyAutoSizeText(
                  'Transaction History',
                  maxFontSize: 24,
                ),
                const SizedBox(height: 10),
                BaseContainer(
                  height: 50,
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: CustomColor.greyText,
                      ),
                      SizedBox(width: 10),
                      MyAutoSizeText(
                        'Search for transaction history',
                        maxFontSize: 14,
                        color: CustomColor.greyText,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const MyAutoSizeText(
                  'This Month',
                  maxFontSize: 18,
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange.withOpacity(0.3),
                        child: const Icon(
                          Icons.inbox,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Belanja Bulanan',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Shopping',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              '-Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple.withOpacity(0.3),
                        child: const Icon(
                          Icons.transform_outlined,
                          color: Colors.purple,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Pindahin Duid',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Transfer',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              'Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago -> CIMB',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.withOpacity(0.3),
                        child: const Icon(
                          Icons.monetization_on,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Gaji Bulanan',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Salary',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              '+Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const MyAutoSizeText(
                  'November 2022',
                  maxFontSize: 18,
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange.withOpacity(0.3),
                        child: const Icon(
                          Icons.inbox,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Belanja Bulanan',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Shopping',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              '-Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple.withOpacity(0.3),
                        child: const Icon(
                          Icons.transform_outlined,
                          color: Colors.purple,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Pindahin Duid',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Transfer',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              'Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago -> CIMB',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BaseContainer(
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      BaseContainer(
                        height: 44,
                        width: 44,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.withOpacity(0.3),
                        child: const Icon(
                          Icons.monetization_on,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyAutoSizeText(
                              'Gaji Bulanan',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              '27 Sept 2021 * Salary',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            MyAutoSizeText(
                              '+Rp400.000',
                              maxFontSize: 16,
                            ),
                            MyAutoSizeText(
                              'Jago',
                              maxFontSize: 14,
                              color: CustomColor.greyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Slidable(
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: const Color(0xFF21B7CA),
                        foregroundColor: Colors.white,
                        icon: Icons.share,
                        label: 'Share',
                      ),
                    ],
                  ),
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Title'),
                    subtitle: Text('Subtitle'),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add New Transaction',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
