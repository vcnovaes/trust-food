import 'package:cloud_firestore/cloud_firestore.dart';

void getAllVendors() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  QuerySnapshot querySnapshot = await firestore.collection("vendors").get();

  if (querySnapshot.docs.isNotEmpty) {
    querySnapshot.docs.forEach((doc) {
      print("Dados do ambulante: ${doc.data()}");
    });
  } else {
    print("Nenhum ambulante encontrado!");
  }
}

void getAllConsumers() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  QuerySnapshot querySnapshot = await firestore.collection("consumers").get();

  if (querySnapshot.docs.isNotEmpty) {
    querySnapshot.docs.forEach((doc) {
      print("Dados do consumidor: ${doc.data()}");
    });
  } else {
    print("Nenhum consumidor encontrado!");
  }
}
