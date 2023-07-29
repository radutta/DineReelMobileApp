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
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
              controller: controller,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                  hintText: 'Write instructions',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  border: const OutlineInputBorder())),
          SizedBox(height: 20.h),
          GestureDetector(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  context
                      .read<InstructionCubit>()
                      .addInstruction(controller.text);
                  // controller.clear();
                  Navigator.pop(context);
                }
              },
              child: Container(
                  width: 90.w,
                  height: 30.h,
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
