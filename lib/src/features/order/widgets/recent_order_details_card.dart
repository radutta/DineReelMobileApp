import 'package:dinereel/src/features/menu/widgets/aniamted_add_button.dart';
import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/add_order/add_order_cubit.dart';
import '../cubit/instruction_cubit.dart';
import '../../user/widgets/add_instruction_dialog.dart';

class RecentOrderDetailsCard extends StatefulWidget {
  const RecentOrderDetailsCard({super.key});

  @override
  State<RecentOrderDetailsCard> createState() => _RecentOrderDetailsCardState();
}

class _RecentOrderDetailsCardState extends State<RecentOrderDetailsCard> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var cubit = context.watch<AddOrderCubit>().state.orderlist;
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primaryGradientDeep)),
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: context.watch<AddOrderCubit>().state.orderlist.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            cubit[index].images[0],
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
                                SizedBox(
                                  width: 80,
                                  child: Text(cubit[index].productname,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w500)),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  height: 15.w,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: AppColors.activeRed)),
                                  child: Center(
                                    child: Icon(
                                      Icons.fiber_manual_record,
                                      color: AppColors.activeRed,
                                      size: 13.r,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text('₹ ${cubit[index].price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 12))
                          ],
                        ),
                        const Spacer(),
                        AniamatedAddButton(index: index),
                        // Container(
                        //   padding:
                        //       const EdgeInsets.symmetric(horizontal: 10),
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(10),
                        //       gradient: const LinearGradient(
                        //           begin: Alignment(1.00, 0.00),
                        //           end: Alignment(-1, 0),
                        //           colors: [
                        //             AppColors.primaryGradientDeep,
                        //             AppColors.primaryGradientLight
                        //           ])),
                        //   child: Row(
                        //     mainAxisAlignment:
                        //         MainAxisAlignment.spaceAround,
                        //     children: [
                        //       Icon(Icons.remove,
                        //           color: AppColors.black, size: 12.r),
                        //       Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 10),
                        //           child: Text(cubit[index].count.toString(),
                        //               style: Theme.of(context)
                        //                   .textTheme
                        //                   .bodyMedium!
                        //                   .copyWith(fontSize: 16.r))),
                        //       Icon(Icons.add,
                        //           color: AppColors.black,
                        //           size: 12.r,
                        //           weight: 100)
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    index == cubit.length - 1
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                              height: 1,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: width > 450 ? 150 : 50,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        margin: const EdgeInsets.only(left: 3),
                                        height: 1,
                                        width: 5,
                                        color: AppColors.grey);
                                  }),
                            ),
                          ),
                  ],
                );
              }),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0))),
                  context: context,
                  builder: (context) {
                    return AddCookingInstructionDialog(controller: controller);
                  });
            },
            child: Container(
              width: 356.w,
              height: context.watch<InstructionCubit>().state == '' ? 30 : 50,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: AppColors.lightgrey,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Icon(Icons.edit_note_outlined,
                      color: Color.fromARGB(255, 59, 59, 59)),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cooking Instruction',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 12)),
                      context.watch<InstructionCubit>().state == ''
                          ? Container()
                          : SizedBox(
                              width: 200.w,
                              child: Text(
                                  context.watch<InstructionCubit>().state,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 12)),
                            ),
                    ],
                  ),
                  const Spacer(),
                  context.watch<InstructionCubit>().state == ''
                      ? const Icon(Icons.arrow_forward_ios,
                          color: AppColors.greytextcolor, size: 18)
                      : GestureDetector(
                          onTap: () {
                            context.read<InstructionCubit>().clearInstruction();
                            controller.clear();
                          },
                          child: const Icon(
                            Icons.delete_outline,
                            color: AppColors.greytextcolor,
                            size: 18,
                          ),
                        )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
            child: SizedBox(
              height: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: width > 450 ? 150 : 50,
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bitiyani',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500)),
                    Text('₹600',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500))
                  ])),
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
                  ])),
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
                            .copyWith(fontWeight: FontWeight.w500))
                  ])),
          Padding(
              padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
              child: SizedBox(
                  height: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: width > 450 ? 150 : 50,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: const EdgeInsets.only(left: 3),
                            height: 1,
                            width: 5,
                            color: AppColors.grey);
                      }))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Restaurant charges',
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text('₹900', style: Theme.of(context).textTheme.bodyMedium)
                  ])),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
