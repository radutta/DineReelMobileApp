import 'package:dinereel/src/features/user/widgets/outlet_popup.dart';
import 'package:dinereel/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubit/cubit/navigationcontroller_cubit.dart';
import '../../../routing/routing_function.dart';
import '../screens/edit_profile_page.dart';

class UserDetailsCard extends StatefulWidget {
  const UserDetailsCard({super.key, this.type});
  final String? type;
  @override
  State<UserDetailsCard> createState() => _UserDetailsCardState();
}

class _UserDetailsCardState extends State<UserDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.read<NavigationcontrollerCubit>().state != 0) {
          setState(() {
            context.read<NavigationcontrollerCubit>().changescreen(0);
          });
          return false;
        }
        return true;
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.91, -0.43),
              end: Alignment(-0.91, 0.43),
              colors: [
                AppColors.usercardGradientLight,
                AppColors.usercardGradienrDeep
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg",
                        fit: BoxFit.contain,
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(Routes().createRoute(const EditProfilePage()));
                    },
                    child: const Icon(Icons.edit_outlined))
              ],
            ),
            Text('Shyamantak Ghosh',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w400)),
            Text(
              '+91 xxxxx-xxxxx',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'jeetg16@gmail.com',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            widget.type == "admin"
                ? GestureDetector(
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return const OutletPopupWidget();
                          });
                    },
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: Container(
                        width: 150.w,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Outlet',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                              ),
                              TextSpan(
                                text: ' - Park street',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
