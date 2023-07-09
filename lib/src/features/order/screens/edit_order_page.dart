import 'package:flutter/material.dart';

import '../../../themes/colors.dart';
import '../../menu/widgets/semi_circle_clipper.dart';

class EditOrderPage extends StatefulWidget {
  const EditOrderPage({super.key});

  @override
  State<EditOrderPage> createState() => _EditOrderPageState();
}

class _EditOrderPageState extends State<EditOrderPage> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGradientDeep,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: AppColors.primaryGradientDeep,
      //   leading: GestureDetector(
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Icon(
      //       Icons.arrow_back,
      //       color: AppColors.black,
      //     ),
      //   ),
      //   title:
      //       Text('Your Order', style: Theme.of(context).textTheme.titleMedium),
      // ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Change Order',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Container(
                      // width: 150,
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: AppColors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Table Number 2',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: AppColors.white)),
                    )
                  ],
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipPath(
              clipper: SemiCircleClipper(
                bottom: 146,
                holeRadius: 100,
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.primaryGradientDeep),
                ),
                height: 650,
                child: Column(children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Bitiyani',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                        const SizedBox(width: 5),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: AppColors.activeRed)),
                                          child: const Center(
                                            child: Icon(
                                              Icons.fiber_manual_record,
                                              color: AppColors.activeRed,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text('₹ 200',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(fontSize: 12))
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment(1.00, 0.00),
                                          end: Alignment(-1, 0),
                                          colors: [
                                            AppColors.primaryGradientLight,
                                            AppColors.primaryGradientDeep,
                                          ],
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                if (itemCount > 0) {
                                                  setState(() {
                                                    itemCount = itemCount - 1;
                                                  });
                                                }
                                              },
                                              child: const Icon(Icons.remove)),
                                          Text(itemCount.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall),
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  itemCount = itemCount + 1;
                                                });
                                              },
                                              child: const Icon(Icons.add))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text('₹ 200',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(fontSize: 12))
                                  ],
                                ),
                              ],
                            ),
                            index == 3
                                ? Container()
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      height: 1,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 50,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              margin: const EdgeInsets.only(
                                                  left: 3),
                                              height: 1,
                                              width: 5,
                                              color: AppColors.black,
                                            );
                                          }),
                                    ),
                                  ),
                          ],
                        );
                      }),
                  const SizedBox(height: 23),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text('Add More',
                            style: Theme.of(context).textTheme.bodyMedium),
                        const Spacer()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 48),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 48),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 30, right: 30, bottom: 20),
                    child: SizedBox(
                      height: 1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 3),
                              height: 1,
                              width: 5,
                              color: AppColors.black,
                            );
                          }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text('₹600',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('GST',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text('₹150',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Restaurant charges',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text('₹150',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                    child: SizedBox(
                      height: 1,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 3),
                              height: 1,
                              width: 5,
                              color: AppColors.black,
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Grand Total',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Text('₹900',
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30)
                ]),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: AppColors.black,
                    thickness: 2,
                  ),
                ),
                Text('₹ 900', style: Theme.of(context).textTheme.titleMedium),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.activeGreen),
                  child: const Text(
                    'Change Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
