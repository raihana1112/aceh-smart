String dayTranslator(String hari){
  String Hasil = "";
  switch(hari){
    case "Sunday":
      Hasil = "Minggu";
    break;
    case "Monday":
      Hasil = "Senin";
    break;
    case "Tuesday":
      Hasil = "Selasa";
    break;
    case "Wednesday":
      Hasil = "Rabu";
    break;
    case "Thursday":
      Hasil = "Kamis";
    break;
    case "Friday":
      Hasil = "Jumat";
    break;
    case "Saturday":
      Hasil = "Sabtu";
    break;
  }

  return Hasil;
}