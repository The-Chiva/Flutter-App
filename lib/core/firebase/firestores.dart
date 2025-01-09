import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/core/models/product_model.dart';

class Firestores {
  // --- | ---
  final products = FirebaseFirestore.instance.collection("/products");
  final productSnapshot = FirebaseFirestore.instance.collection("/products").snapshots();

  Future<bool> save(ProductModel model) async {
    try {
      final drl = await products.add(model.toJson());
      log("Product save with ID : ${drl.id}");
    }on FirebaseException catch (e) {
      log("Error saving product to Firestore : ${e.message}");
    }
    return false;
  }

  Future<bool> update(String docId, ProductModel model) async {
    try {
      await products.doc(docId).update(model.toJson());
      log("Product updated with ID: $docId");
      return true;
    } on FirebaseException catch (e) {
      log("Exception in update on Firebase : ${e.message}");
    }
    return false;
  }

  Future<bool> delete(String docId) async {
    return false;
  }

  // --- | ---
  final carts = FirebaseFirestore.instance.collection("/carts");
  final cartsSnapshot = FirebaseFirestore.instance.collection("/products").snapshots();
}