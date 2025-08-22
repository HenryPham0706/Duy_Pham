import 'dart:io';
void main() {
  List<sinhVien> sinhViens = [];
  while (true){
  String choice = stdin.readLineSync() ?? '' ;
  print ('enter 1 them sinh vien');
  print ('Enter 2 danh sach sinh vien');
  print ('Enter 3 tim sinh vien diem cao nhat');

  if(choice =='1'){

    print ('nhap ten sinh vien');
    String?name = stdin.readLineSync ();
    if (name ==null || name.isEmpty ){
    print ('name cannot be emty,please try again');
    continue;
  }
  print ('nhap diem Toan');
  double? diemToan = double.parse(stdin.readLineSync()??'');
  if (diemToan<0 || diemToan>10){
    print ('diem Toan loi,vui long nhap so tu 0 den 10');
    continue;
  }
  print ('nhap diem Ly');
double? diemLy = double.parse(stdin.readLineSync()??'');
  if (diemLy<0 || diemLy>10){
    print ('diem Ly loi,vui long nhap so tu 0 den 10');
    continue;
  }
  print ('Enter diem Hoa');
double? diemHoa = double.parse(stdin.readLineSync()??'');
  if (diemHoa<0 || diemHoa>10){
    print ('diem Hoa loi,vui long nhap so tu 0 den 10');
    continue;
  }
  sinhVien sinhVien = SinhVien(name,diemToan,diemLy,diemHoa);
  sinhVien.displayInfo();
  break;
  }
  else if (choice =='2'){
    if(sinhViens.isEmpty){
      print ('ko co sinh vien');
    }else {
      for (var sinhVien in sinhVien){
        sinhVien.displayInfo();
        print('-----------------');
      }
    }
  }
  else if (choice== '3'){
    if (sinhVien.isEmpty){
      print ('ko tim thay sinh vien');
    }else {
      sinhVien? topSinhVien;
      for (var sinhVien in sinhViens){
        if (topSinhVien == null ||
        (sinhVien.diemToan + sinhVien.diemLy + sinhVien.diemHoa)/3) > 
        (topSinhVien.diemToan + topSinhVien.diemLy + topSinhVien.diemHoa)/3{
          topsinhVien = sinhVien;
        }
      } if (topSinhVien! =null){
        print ('top sinh vien :');
        topSinhVien.displayInfo ();
      }
    }
  }else {
    print ('Invalid choice,vui long thu lai');
  }
  
    }
  }

}

class SinhVien {
  Sinhvien(String name, double diemToan, double diemLy, double diemHoa);
}

class sinhVien {
  String name;
  double diemToan;
  double diemLy;
  double diemHoa;
  sinhVien(this.name, this.diemToan, this.diemLy, this.diemHoa);

  void displayInfo () {
  print ('ten :$name');
  print ('Toan : $diemToan');
print ('Ly : $diemLy');
print ('Hoa :$diemHoa');
double diemTrungBinh = ((diemToan +diemLy +diemHoa)/3);
print ('diem trung binh :$diemTrungBinh');
if (diemTrungBinh >9){
  print ('sinh vien gioi');
}
else if (diemTrungBinh <=9 && diemTrungBinh >=7){
  print ('sinh vien kha');
}
else if (diemTrungBinh <7 && diemTrungBinh >=5){
  print ('sinh vien trung binh');
}else {
  print ('sinh vien kem');
}
}
}

  sinhVien InputsinhVien() {
    print('nhap ten :');
    String name = stdin.readLineSync()!;
    print('nhap diem Toan :');
    double diemToan = double.parse(stdin.readLineSync()!);
    print('nhap diem Ly :');
    double diemLy = double.parse(stdin.readLineSync()!);
    print('nhap diem Hoa :');
    double diemHoa = double.parse(stdin.readLineSync()!);
    return sinhVien(name, diemToan, diemLy, diemHoa);
  }



