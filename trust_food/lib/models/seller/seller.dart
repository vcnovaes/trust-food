import 'package:trust_food/models/seller/workScale.dart';

class Seller {
  final int id;
  final String username;
  final String email;
  final String phone;
  final String profileImage;
  final bool? publicContact;
  final WorkScale workScale;

  Seller({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.profileImage,
    required this.workScale,
    this.publicContact
  });

  // Factory constructor to create a User from JSON
  factory Seller.fromJson(Map<String, dynamic> json) {
    return Seller(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      profileImage: json['profileImage'],
      publicContact: json['publicContact'],
      workScale: WorkScale.fromJson(json['workScale'])
    );
  }

  // Convert a User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'phone': phone,
      'profileImage': profileImage,
      'publicContact': publicContact,
      'workScale': workScale.toJson()
    };
  }
}
