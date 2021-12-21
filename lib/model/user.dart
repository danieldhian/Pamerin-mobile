import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:pamerin/common/constants.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String? phone;
  final DateTime? emailVerifiedAt;
  final String userType;

  User({
    required this.id,
    required this.name,
    required this.userType,
    required this.email,
    this.emailVerifiedAt,
    this.phone,
  });

  @override
  List<Object?> get props => [id];

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['id'],
      name: json['name'],
      userType: json['type'] == 1 ? 'admin' : (json['type'] == 2 ? "usertype" : "user"),
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'] == null ? null : DateTime.tryParse(json['email_verified_at']),
      phone: json['phone'],
    );
  }
}
