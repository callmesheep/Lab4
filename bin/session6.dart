import 'package:session6/session6.dart' as session6;

import 'dart:io';

void main() {
  
  stdout.write("Nhập tên của bạn: ");
  String? name = stdin.readLineSync();


  stdout.write("Nhập ngày sinh của bạn (dd/MM/yyyy): ");
  String? birthDayInput = stdin.readLineSync();
  DateTime birthDay = DateTime.parse(_convertToDate(birthDayInput!));


  DateTime today = DateTime.now();


  int age = today.year - birthDay.year;
  if (today.month < birthDay.month || (today.month == birthDay.month && today.day < birthDay.day)) {
    age--;
  }


  if (today.month == birthDay.month && today.day == birthDay.day) {
    print("Chúc mừng sinh nhật, $name!");
  } else {
    print("Hôm nay không phải là sinh nhật của bạn.");
  }


  print("Bạn hiện tại $age tuổi.");

  
  int yearsToHundred = 100 - age;
  if (yearsToHundred > 0) {
    print("Bạn sẽ tròn 100 tuổi sau $yearsToHundred năm nữa.");
  } else {
    print("Bạn đã vượt qua cột mốc 100 tuổi rồi!");
  }
}


String _convertToDate(String input) {
  List<String> parts = input.split('/');
  return '${parts[2]}-${parts[1]}-${parts[0]}';
}