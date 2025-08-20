

import 'dart:io';

void main(){
String name = stdin.readLineSync()!;
double hour = double.parse( stdin.readLineSync()!);
double salary = double.parse(stdin.readLineSync()!);
double totalSalary = 0;
totalSalary = hour * salary ;
print ('nhan vien : $name');

if (hour > 40){
  totalSalary = totalSalary + totalSalary/5;
}
print ('tong luong truoc thue :$totalSalary');

if (totalSalary > 10_000_000){
  print ('thue thu nhap :${totalSalary/10}');
  totalSalary = totalSalary - totalSalary/10;
}

else if ( totalSalary <10000000 && totalSalary >7000000 ){
  print ('thue thu nhap :${totalSalary/20}');
  totalSalary = totalSalary - totalSalary/20;
}
else {
  print ('thue thu nhap :ko bi tinh thue');
}

print ('luong thuc lanh :$totalSalary');

}




