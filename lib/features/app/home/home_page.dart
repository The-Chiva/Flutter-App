import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/common/styles/colors.dart';
import 'package:firebase/common/styles/text_style.dart';
import 'package:firebase/common/widgets/home_header.dart';
import 'package:firebase/common/widgets/search_bar.dart';
import 'package:firebase/common/widgets/vertical_cart.dart';
import 'package:firebase/core/models/product_model.dart';
import 'package:firebase/features/app/form/form_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final vm = Get.put(FormViewModel());

  @override
  Widget build(BuildContext context) {
    int count = 0;
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.grey[50],
          width: double.infinity,
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: Column(
            children: [
              HomeHeader(count: count),
              const SizedBox(height: 24),
              HomeSearchBar(controller: controller),
              const SizedBox(height: 32),
              StreamBuilder<QuerySnapshot>(
                stream: vm.firestore.products.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.error,
                            size: 48,
                            color: AppColor.error,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error: ${snapshot.error}',
                            style: textStyle(color: AppColor.error),
                          ),
                        ],
                      ),
                    );
                  } else if (!snapshot.hasData) {
                    return Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.now_widgets_outlined,
                            size: 48,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No data available',
                            style: textStyle(),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data?.docs.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 9 / 16,
                      ),
                      itemBuilder: (context, index) => VerticalCard(
                        onTap: () => vm.gotoUpdate(
                          snapshot.data?.docs[index].id,
                          ProductModel.fromJson(
                            snapshot.data!.docs[index].data()
                                as Map<String, dynamic>,
                          ),
                        ),
                        onLongPress: () =>
                            vm.delete(snapshot.data?.docs[index].id),
                        product: ProductModel.fromJson(
                          (snapshot.data!.docs[index].data()
                              as Map<String, dynamic>),
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
