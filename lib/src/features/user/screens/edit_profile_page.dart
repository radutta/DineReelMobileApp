import 'dart:io';

import 'package:dinereel/src/common_widgets/primary_regular_action_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../themes/colors.dart';
import '../widgets/custom_bottom_sheet.dart';
import '../widgets/custom_textfield.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final ImagePicker _picker = ImagePicker();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController dateController;
  int selected = 0;
  File? imageFile;
  bool isValid = false;
  bool isTyping = false;
  int remainchar = 64;

  void pickGprofilePic() async {
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    }
  }

  void pickCprofilePic() async {
    // Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        imageFile = File(photo.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    dateController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        title: Text('Profile', style: Theme.of(context).textTheme.titleMedium),
      ),
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Stack(
                    children: [
                      imageFile != null
                          ? SizedBox(
                              height: 132,
                              width: 132,
                              child: CircleAvatar(
                                radius: 68,
                                backgroundColor: AppColors.grey,
                                backgroundImage:
                                    FileImage(File(imageFile!.path)),
                              ),
                            )
                          : Container(
                              height: 132,
                              width: 132,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(100)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                      Positioned(
                        top: 100,
                        right: 10,
                        child: InkWell(
                          onTap: () {
                            //showing bottom model sheet to upload image
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                builder: (context) {
                                  return CustomBottomModelSheet(
                                    cameraClick: () {
                                      pickCprofilePic();
                                    },
                                    galleryClick: () {
                                      pickGprofilePic();
                                    },
                                  );
                                });
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: const LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [
                                  AppColors.primaryGradientLight,
                                  AppColors.primaryGradientDeep,
                                ],
                              ),
                            ),
                            child: const Icon(Icons.edit_outlined, size: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextField(
                  title: 'Name',
                  hinttext: 'Your Name',
                  controller: nameController,
                  onTap: () {},
                ),
                CustomTextField(
                  title: 'Age',
                  hinttext: '08/10/1998',
                  controller: dateController,
                  iscalender: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(
                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(
                          formattedDate); //formatted date output using intl package =>  2022-07-04
                      //You can format date as per your need

                      setState(() {
                        dateController.text =
                            formattedDate; //set foratted date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
                Text('Phone Number',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 10),
                IntlPhoneField(
                  initialCountryCode: 'IN',
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    hintText: 'phone_no'.tr(),
                    hintStyle: Theme.of(context).textTheme.displaySmall,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: AppColors.primaryGradientLight, width: 2),
                    ),
                  ),
                  onChanged: (phone) {},
                  onCountryChanged: (country) {},
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  title: 'Email',
                  hinttext: 'jeetg16@gmail.com',
                  controller: emailController,
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(21),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gender',
                          style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 83,
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 10);
                            },
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Container(
                                  width: 95,
                                  height: 83,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selected == index
                                            ? AppColors.primaryGradientDeep
                                            : AppColors.grey),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: selected == index
                                                ? AppColors.primaryGradientDeep
                                                : AppColors.grey),
                                        child: index == 0
                                            ? const Icon(
                                                Icons.male_rounded,
                                                color: AppColors.white,
                                              )
                                            : index == 1
                                                ? const Icon(
                                                    Icons.female_rounded,
                                                    color: AppColors.white,
                                                  )
                                                : Container(),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        index == 0
                                            ? 'Man'
                                            : index == 1
                                                ? "Woman"
                                                : 'Other',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                color: selected == index
                                                    ? AppColors
                                                        .primaryGradientDeep
                                                    : AppColors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 90)
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: PrimaryRegularActionButton(
            text: 'SAVE PROFILE', action: () {}, disable: false),
      ),
    );
  }
}
