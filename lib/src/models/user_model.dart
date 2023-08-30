import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String email; 
  final String imgAvatar;
  final String birthday;

  const UserModel({
    super.key,
    required this.name,
    required this.email, 
    required this.imgAvatar,
    required this.birthday,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name || email != oldWidget.email || imgAvatar != oldWidget.imgAvatar || birthday != oldWidget.birthday;
  }

  static UserModel of(BuildContext context) {
    var useModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(useModel != null, 'No UserModel found in context');
    return useModel!;
  }
}
