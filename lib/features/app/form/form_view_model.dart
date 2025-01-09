import 'dart:developer';

import 'package:firebase/core/firebase/firestores.dart';
import 'package:firebase/core/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_view_model.dart';

class FormViewModel extends GetxController {
  // -- ? --
  final imageCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final qtyCtrl = TextEditingController();
  final imgUrl = ''.obs;

  final updating = false.obs;
  // -- ! --

  final firestore = Firestores();
  String? docId;

  // -- X --
  void enteredImageUrl(String value) {
    try {
      imgUrl.value = value;
    } catch (e) {
      imgUrl.value = "";
    }
    update();
  }

  void clears() {
    imageCtrl.text = "";
    nameCtrl.text = "";
    priceCtrl.text = "";
    qtyCtrl.text = "";
    imgUrl.value = "";
    update();
  }

  void actions() async {
    if (imageCtrl.text.isEmpty ||
        nameCtrl.text.isEmpty ||
        priceCtrl.text.isEmpty ||
        qtyCtrl.text.isEmpty) {
      Get.snackbar("Notification", "Please fill out all fields");
      return;
    } else if (updating.value &&
        await firestore.update(
            docId!,
            ProductModel(
                name: nameCtrl.text,
                price: double.parse(priceCtrl.text),
                qty: int.parse(qtyCtrl.text),
                image: imageCtrl.text))) {
      clears();
      updating.value = false;
      docId = null;
      viewModel.page.value = 0;
      Get.snackbar("Notification", "Product updated successfully");
    }
    update();
  }
  void delete(String? id) async {
    if (id == null) {
      return;
    } else if (await firestore.delete(id)) {
      log("message deleted from firestore for $id");
    }
  }

   void gotoUpdate(String? id, ProductModel model) {
    updating.value = true;
    imageCtrl.text = model.image;
    nameCtrl.text = model.name;
    priceCtrl.text = model.price.toString();
    qtyCtrl.text = model.qty.toString();
    imgUrl.value = model.image;
    docId = id;
    log(docId ?? "not found");
    viewModel.page.value = 2;
  }
}
