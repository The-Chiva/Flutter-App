import 'package:aceleda_bank/common/styles/colors/appcolor.dart';
import 'package:aceleda_bank/common/widgets/button.dart';
import 'package:aceleda_bank/common/widgets/text.dart';
import 'package:aceleda_bank/featured/app/home/conponents/app_bar.dart';
import 'package:aceleda_bank/featured/app/home/conponents/card.dart';
import 'package:aceleda_bank/featured/app/home/conponents/dashboard.dart';
import 'package:aceleda_bank/featured/app/home/controller/scroll_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final ScrollNavigation scrollCtr = Get.find<ScrollNavigation>();
//   final List<String> otpInputs = List.generate(6, (index) => '');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size(0, 60),
//         child: HomeAppBar(),
//       ),
//       body: SingleChildScrollView(
//         controller: scrollCtr.scrollController,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DashBoard(
//               onTab: () {
//                 showCupertinoDialog(
//                   context: context,
//                   builder: (context) => Dialog.fullscreen(
//                     backgroundColor: Appcolors.primary.withOpacity(0.7),
//                     child: Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           // ===== Arrow back button =====
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: AppButton(
//                               icon: "assets/images/svg/menu.svg",
//                               iconSize: 24,
//                               width: 50,
//                               iconColor: Appcolors.light,
//                               onTab: () => Navigator.pop(context),
//                             ),
//                           ),
//                           const SizedBox(height: 30.0),
//                           //===== profile =====
//                           Container(
//                             width: 90,
//                             height: 90,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Appcolors.gold),
//                               borderRadius: BorderRadius.circular(50),
//                               color: Appcolors.primaryLight,
//                               image: const DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: NetworkImage(
//                                     "https://i.pinimg.com/736x/6e/58/b7/6e58b75150c447673afca5d2f16f163c.jpg"),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 4.0),
//                           // ===== Name =====
//                           const AppText(
//                             text: "THE CHIVA",
//                             color: Appcolors.gold,
//                           ),
//                           const SizedBox(height: 4.0),
//                           // ===== Phone Number =====
//                           const AppText(
//                             text: "069 496 048",
//                             color: Appcolors.light,
//                           ),
//                           const SizedBox(height: 4.0),
//                           // ===== Phone Number =====
//                           const AppText(
//                             text: "Please Enter PIN",
//                             color: Appcolors.light,
//                           ),
//                           const SizedBox(height: 2.0),
//                           // ===== OTP input field =====
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: List.generate(
//                               6,
//                               (index) {
//                                 return Container(
//                                   width: 30,
//                                   height: 30,
//                                   margin: const EdgeInsets.all(6.0),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: Appcolors.light,
//                                     ),
//                                     borderRadius: BorderRadius.circular(100.0),
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       otpInputs[index],
//                                       style: const TextStyle(
//                                         fontSize: 24,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           const SizedBox(height: 32.0),
//                           // ===== Number input field =====
//                           Expanded(
//                             child: GridView.builder(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 50.0),
//                               shrinkWrap: true,
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 mainAxisSpacing: 20,
//                                 crossAxisSpacing: 32,
//                               ),
//                               itemCount:
//                                   11, // Correct number of items for the layout
//                               itemBuilder: (context, index) {
//                                 if (index == 9) {
//                                   // Empty slot (leave space)
//                                   return const SizedBox.shrink();
//                                 } else if (index == 10) {
//                                   // Display number 0
//                                   return numberButton(context, '0');
//                                 } else {
//                                   // Display numbers 1–9
//                                   return numberButton(
//                                       context, (index + 1).toString());
//                                 }
//                               },
//                             ),
//                           ),
//                           // ===== Forgot Pin and Cancel
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 100),
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   child: AppButton(
//                                     text: "Forgot PIN",
//                                     customPadding: EdgeInsets.only(right: 40),
//                                     textStyle: const TextStyle(
//                                         color: Appcolors.light, fontSize: 16),
//                                     onTab: () {},
//                                   ),
//                                 ),
//                                 const SizedBox(width: 16.0),
//                                 Expanded(
//                                   child: AppButton(
//                                     text: "Cancel",
//                                     customPadding:
//                                         const EdgeInsets.only(left: 40),
//                                     textStyle: const TextStyle(
//                                         color: Appcolors.light, fontSize: 16),
//                                     onTab: () {
//                                       Navigator.pop(context);
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const CardSevices(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget numberButton(BuildContext context, String number) {
//     return InkWell(
//       onTap: () {
//         int index = otpInputs.indexWhere((otp) => otp.isEmpty);
//         if (index != -1) {
//           otpInputs[index] = number;
//         }
//         (context as Element)
//             .markNeedsBuild(); // Rebuild widget with updated OTP
//       },
//       child: Container(
//         margin: const EdgeInsets.all(4),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           border: Border.all(color: Appcolors.light),
//           borderRadius: BorderRadius.circular(50.0),
//         ),
//         child: Text(
//           number,
//           style: const TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// derm
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollNavigation scrollCtr = Get.find<ScrollNavigation>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 60),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: scrollCtr.scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashBoard(
              onTap: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => Dialog.fullscreen(
                    backgroundColor: Appcolors.primary.withOpacity(0.7),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ===== Arrow back button =====
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppButton(
                              icon: "assets/images/svg/menu.svg",
                              iconSize: 24,
                              width: 50,
                              iconColor: Appcolors.light,
                              onTab: () => Navigator.pop(context),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          //===== profile =====
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Appcolors.gold),
                              borderRadius: BorderRadius.circular(50),
                              color: Appcolors.primaryLight,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://i.pinimg.com/736x/6e/58/b7/6e58b75150c447673afca5d2f16f163c.jpg"),
                              ),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Name =====
                          const AppText(
                            text: "THE CHIVA",
                            color: Appcolors.gold,
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Phone Number =====
                          const AppText(
                            text: "069 496 048",
                            color: Appcolors.light,
                          ),
                          const SizedBox(height: 4.0),
                          // ===== Phone Number =====
                          const AppText(
                            text: "Please Enter PIN",
                            color: Appcolors.light,
                          ),
                          const SizedBox(height: 2.0),
                          // ===== OTP input field =====
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              6,
                              (index) {
                                return Container(
                                  width: 30,
                                  height: 30,
                                  margin: const EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Appcolors.light,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          // ===== Number input field =====
                          Expanded(
                            child: GridView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 32,
                              ),
                              itemCount:
                                  11, // Correct number of items for the layout
                              itemBuilder: (context, index) {
                                if (index == 9) {
                                  // Empty slot (leave space)
                                  return const SizedBox.shrink();
                                } else if (index == 10) {
                                  // Display number 0
                                  return Container(
                                    margin: const EdgeInsets.all(4),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Appcolors.light),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: const Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                } else {
                                  // Display numbers 1–9
                                  return Container(
                                    margin: const EdgeInsets.all(4),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Appcolors.light),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      (index + 1).toString(),
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          // ===== Forgot Pin and Cancel
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppButton(
                                    text: "Forgot PIN",
                                    customPadding: EdgeInsets.only(right: 40),
                                    textStyle: const TextStyle(
                                        color: Appcolors.light, fontSize: 16),
                                    onTab: () {},
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: AppButton(
                                    text: "Cancel",
                                    customPadding:
                                        const EdgeInsets.only(left: 40),
                                    // padding: 0,
                                    textStyle: const TextStyle(
                                        color: Appcolors.light, fontSize: 16),
                                    onTab: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const CardSevices(),
          ],
        ),
      ),
    );
  }
}
