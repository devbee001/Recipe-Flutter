import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:recipe_app/data/controllers/page_controller/page_view_controller.dart';
import 'package:recipe_app/data/provider/openai_provider.dart';
import 'package:recipe_app/data/provider/scan_provider.dart';
import 'package:recipe_app/data/provider/screen_provider.dart';
import 'package:recipe_app/view/theme/app_color.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  void initState() {
    controller = PageController(
        initialPage: ref.read(screenIndexProvider), keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenVm = ref.watch(screenProvider);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Answer"),
          TextButton(
            child: const Text("Ask Gpt"),
            onPressed: () async {
              final response = await ref
                  .read(openAiViewModel)
                  .getChatBotResponse(
                      message: "What is the best way to cook rice?");
              print(response);
            },
          )
        ],
      )),
    );
    // Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   body: SafeArea(
    //       child: PageView.builder(
    //           itemCount: screenVm.length,
    //           controller: controller,
    //           onPageChanged: (index) {
    //             if (index >= 2) {
    //               ref.read(screenIndexProvider.notifier).state = index + 1;
    //             } else {
    //               ref.read(screenIndexProvider.notifier).state = index;
    //             }
    //           },
    //           itemBuilder: (context, index) {
    //             return screenVm[index];
    //           })),
    //   bottomNavigationBar: BottomNavigationBar(
    //       type: BottomNavigationBarType.fixed,
    //       currentIndex: ref.watch(screenIndexProvider),
    //       onTap: (index) {
    //         ref.read(screenIndexProvider.notifier).state = index;
    //         if (index != 2) {
    //           ref.read(screenIndexProvider.notifier).state = index;
    //           controller.animateToPage(
    //             ref.watch(screenIndexProvider) >= 3
    //                 ? ref.read(screenIndexProvider.notifier).state - 1
    //                 : ref.watch(screenIndexProvider),
    //             duration: const Duration(milliseconds: 50),
    //             curve: Curves.easeInOut,
    //           );
    //         }
    //       },
    //       unselectedItemColor: grey,
    //       selectedItemColor: ref.watch(screenIndexProvider) == 2 ? grey : green,
    //       items: const [
    //         BottomNavigationBarItem(
    //           icon: Icon(IconlyBold.home),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(IconlyBold.chat),
    //           label: 'Chat Bot',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: SizedBox(
    //             height: 20,
    //             width: 20,
    //           ),
    //           label: 'Scan',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(IconlyBold.notification),
    //           label: 'Notification',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(IconlyBold.profile),
    //           label: 'Profile',
    //         ),
    //       ]),
    //   floatingActionButton: FloatingActionButton(
    //     backgroundColor: green,
    //     shape:
    //         ShapeBorder.lerp(const CircleBorder(), const StadiumBorder(), 1.0),
    //     onPressed: () {
    //       final result = ref.read(scanProvider).scanBarcode(mounted);
    //       // TODO figure out what to do with the result here
    //       // print(result);
    //       // Get.to(() => const ScanScreen());
    //     },
    //     child: Icon(
    //       IconlyBold.scan,
    //       color: white,
    //     ),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    // );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
