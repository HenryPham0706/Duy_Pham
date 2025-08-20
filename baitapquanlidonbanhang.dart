
import 'dart:io';

void main() {
String tenSanPham = stdin.readLineSync()!;
double soLuongMua = double.parse( stdin.readLineSync()!);
double donGia = double.parse(stdin.readLineSync()!);
double thanhTien = 0 ;
thanhTien = soLuongMua * donGia ;
thue = 0;
print ('tong tien la :$thanhTien');
if (thanhTien > 1_000_000){
print ('giam gia 10% la :${thanhTien/10}')
  thanhTien  = thanhTien  - thanhTien /10;
  thue = 8*thanhTien/100;
 print ('thue VAT :$thue');
}

else if (thanhTien  >= 500_000 && thanhTien <1_000_000){
 print ('giam gia 5% la :${thanhTien/20}')
  thanhTien = thanhTien - thanhTien/20;
  thue = 8*thanhTien/100;
  print ('thue VAT :$thue');
}

else {
  print ('khong giam gia');
  thue = 8*thanhTien/100;
  print ('thue VAT :$thue');
}
print ('thanh toan :$thanhTien');

print ('tong thanh toan cuoi cung :${thanhTien+thue} ');

}
