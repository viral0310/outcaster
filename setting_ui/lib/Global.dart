import 'package:flutter/material.dart';

class Global {
  static List<Map> common = [
    {'icon': Icons.language, 'name': 'Language', 'description': 'English'},
    {
      'icon': Icons.cloud_outlined,
      'name': 'Environment',
      'description': 'Production'
    },
  ];
  static List<Map> account = [
    {
      'icon': Icons.phone,
      'name': 'Phone number',
    },
    {
      'icon': Icons.email,
      'name': 'Email',
    },
    {
      'icon': Icons.exit_to_app,
      'name': 'Sign out',
    },
  ];
  static List<Map> security = [
    {
      'icon': Icons.app_blocking,
      'name': 'Lock app in background',
      'switch': true,
    },
    {
      'icon': Icons.fingerprint,
      'name': 'Use fingerprint',
      'switch': false,
    },
    {
      'icon': Icons.lock,
      'name': 'Change password',
      'switch': true,
    },
  ];
  static List<Map> misc = [
    {
      'icon': Icons.document_scanner,
      'name': 'Terms of Service',
    },
    {
      'icon': Icons.copy_outlined,
      'name': 'Open source licences',
    },
  ];
}
