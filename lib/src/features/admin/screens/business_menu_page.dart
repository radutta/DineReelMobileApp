import 'package:flutter/material.dart';
import '../../../routing/routing_function.dart';
import '../../../themes/colors.dart';
import '../../menu/screens/menu_page.dart';
import '../widgets/primary_regular_action_button.dart';

class BusinessMenuPage extends StatefulWidget {
  const BusinessMenuPage({super.key});

  @override
  State<BusinessMenuPage> createState() => _BusinessMenuPageState();
}

class _BusinessMenuPageState extends State<BusinessMenuPage> {
  int selected = 0;
  List<String> menutypes = ['Non-Veg', 'Vegetarian', 'Vegan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/54x54"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Oudh 1590',
                            style: TextStyle(
                              color: Color(0xFF3D405B),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                      Text(
                        'Traditional Awadhi dishes ',
                        style: TextStyle(
                          color: Color(0xFF3D405B),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/admin/filter.png'),
                  const SizedBox(width: 10),
                  Image.asset('assets/admin/profile.png')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child:
                  Text('Menu', style: Theme.of(context).textTheme.titleLarge),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 28,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menutypes.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 28,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 9),
                                  decoration: BoxDecoration(
                                      color: selected == index
                                          ? const Color(0xFF303136)
                                          : const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(20),
                                      border:
                                          Border.all(color: AppColors.black)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    menutypes[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selected == index
                                          ? Colors.white
                                          : const Color(0xFF303136),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 127,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(.3),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: AppColors.grey)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'biriyani ',
                                        style: TextStyle(
                                          color: Color(0xFF303136),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: AppColors.black)),
                                        alignment: Alignment.center,
                                        child: const Center(
                                          child: Icon(
                                            Icons.fiber_manual_record,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 150),
                                      const Text(
                                        '₹ 550',
                                        style: TextStyle(
                                          color: Color(0xFF303136),
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'It is made with Indian spices, vegetables, rice, and\nusually some type of meat (chicken, beef, goat,\nlamb, prawn, ',
                                          style: TextStyle(
                                            color: Color(0xFF303136),
                                            fontSize: 11.5,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'See more.',
                                          style: TextStyle(
                                            color: Color(0xFF303136),
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Spacer(),
                              SizedBox(
                                width: 75,
                                height: 16,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      left: 30,
                                      top: 2,
                                      child: SizedBox(
                                        width: 45,
                                        child: Text(
                                          'available',
                                          style: TextStyle(
                                            color: Color(0xFF303136),
                                            fontSize: 10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 5,
                                      child: Container(
                                        width: 25,
                                        height: 7,
                                        decoration: ShapeDecoration(
                                          color: const Color(0x99D9D9D9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3.50),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF00FF47),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryRegularActionButton(
                text: "Select table",
                action: () {
                  Navigator.of(context)
                      .push(Routes().createRoute(const MenuHome(
                    type: 'admin',
                  )));
                  // await storeValue('user', 'partner');
                },
                disable: false,
              ),
            ),
            const SizedBox(height: 45)
          ],
        ),
      ),
    );
  }
}
