import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/colors.dart';
import '../../order/cubit/instruction_cubit.dart';

class AddCookingInstructionDialog extends StatelessWidget {
  const AddCookingInstructionDialog({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Special cooking instruction"),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close))
              ],
            ),
          ),
          const Divider(height: 0, thickness: 1, color: AppColors.grey),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
                controller: controller,
                style: Theme.of(context).textTheme.bodyMedium,
                autofocus: true,
                minLines: 1,
                maxLines: 3,
                maxLength: 100,
                decoration: InputDecoration(
                    hintText: 'Write instructions',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5),
                    border: const UnderlineInputBorder(),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.primaryGradientDeep)))),
          ),
          const SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  context
                      .read<InstructionCubit>()
                      .addInstruction(controller.text);

                  Navigator.pop(context);
                }
              },
              child: Container(
                  width: 290,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        AppColors.primaryGradientDeep,
                        AppColors.primaryGradientLight
                      ],
                    ),
                  ),
                  child: Text('Add',
                      style: Theme.of(context).textTheme.bodyMedium)))
        ],
      ),
    );
  }
}
