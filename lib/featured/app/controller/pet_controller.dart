import 'dart:developer';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_app/components/loading.dart';
import 'package:pet_app/components/pick_image.dart';
import 'package:pet_app/database/product/product.dart';
import 'package:pet_app/featured/app/model/pet.dart';
import 'package:pet_app/featured/app/view/form/form_page.dart';

class PetController extends GetxController {
  final pets = <Pet>[].obs;
  final db = ProductDatabase();
  final nameCtr = TextEditingController();
  final typeCtr = TextEditingController();
  final priceCtr = TextEditingController();
  final qtyCtr = TextEditingController();
  final detailCtr = TextEditingController();

  final isUpdate = false.obs;
  int id = 0;
  var fileImage = Rx<File?>(null);

  @override
  void onInit() {
    refess();
    super.onInit();
  }

  void refess() async {
    pets.clear();
    pets.addAll(await db.getAllProducts());
  }

  Future<void> addOrUpdateProduct() async {
    if (nameCtr.text.isEmpty ||
        typeCtr.text.isEmpty ||
        priceCtr.text.isEmpty ||
        qtyCtr.text.isEmpty ||
        detailCtr.text.isEmpty ||
        fileImage.value == null) {
      Get.snackbar("Notification", "All fields are required");
      return;
    } else {
      openLoading();
      final tempPet = Pet(
        name: nameCtr.text.trim(),
        type: typeCtr.text.trim(),
        price: double.parse(priceCtr.text.trim()),
        qty: int.parse(qtyCtr.text.trim()),
        image: fileImage.value!.path,
        description: detailCtr.text.trim(),
      );
      if (!isUpdate.value) {
        if (await db.addProduct(tempPet)) {
          closeLoading();
          log("Successfully added the product");
          refess();
          clearInput();
        } else {
          closeLoading();
          log("Failed to add the product");
        }
      } else {
        if (await db.updateProduct(id, tempPet)) {
          closeLoading();
          log("Successfully update the product");
          refess();
          clearInput();
        } else {
          closeLoading();
          log("Failed to update the product");
        }
      }
    }
    update();
  }

  Future<void> selectImage() async {
    fileImage.value = await pickImage();
    update();
  }

  void clearInput() {
    nameCtr.clear();
    typeCtr.clear();
    priceCtr.clear();
    qtyCtr.clear();
    detailCtr.clear();
    fileImage.value = null;
  }

  Future<void> delete(int index) async {
    id = pets[index].id!;
    openLoading();
    if (await db.deleteProduct(id)) {
      closeLoading();
      log("Successfully deleted the product");
      pets.removeAt(index);
    } else {
      closeLoading();
      log("Failed to delete the product");
    }
    update();
  }

  void pushToUpdate(int index) {
    Get.to(() => FormPage());
    isUpdate.value = true;
    id = pets[index].id!;
    nameCtr.text = pets[index].name;
    typeCtr.text = pets[index].type;
    priceCtr.text = pets[index].price.toString();
    qtyCtr.text = pets[index].qty.toString();
    detailCtr.text = pets[index].description;
    fileImage.value = File(pets[index].image);
  }
}
