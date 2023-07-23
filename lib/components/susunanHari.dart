String susunanHari(String currentDay, int index){
  String Hasil = '';
   switch(currentDay){
    case "Sunday":
      switch(index){
        case 1 : 
        Hasil = "Senin";
        break;
        case 2 : 
        Hasil = "Selasa";
        break;
        case 3 : 
        Hasil = "Rabu";
        break;
        case 4 : 
        Hasil = "Kamis";
        break;
        case 5 : 
        Hasil = "Jumat";
        break;
        case 6 : 
        Hasil = "Sabtu";
        break;
        case 7 : 
        Hasil = "Minggu";
        break;
      }
    break;
    case "Monday":
      switch(index){
        case 1 : 
        Hasil = "Selasa";
        break;
        case 2 : 
        Hasil = "Rabu";
        break;
        case 3 : 
        Hasil = "Kamis";
        break;
        case 4 : 
        Hasil = "Jumat";
        break;
        case 5 : 
        Hasil = "Sabtu";
        break;
        case 6 : 
        Hasil = "Minggu";
        break;
        case 7 : 
        Hasil = "Senin";
        break;
      }
    break;
    case "Tuesday":
      switch(index){
        case 1 : 
        Hasil = "Rabu";
        break;
        case 2 : 
        Hasil = "Kamis";
        break;
        case 3 : 
        Hasil = "Jumat";
        break;
        case 4 : 
        Hasil = "Sabtu";
        break;
        case 5 : 
        Hasil = "Minggu";
        break;
        case 6 : 
        Hasil = "Senin";
        break;
        case 7 : 
        Hasil = "Selasa";
        break;
      }
    break;
    case "Wednesday":
      switch(index){
        case 1 : 
        Hasil = "Kamis";
        break;
        case 2 : 
        Hasil = "Jumat";
        break;
        case 3 : 
        Hasil = "Sabtu";
        break;
        case 4 : 
        Hasil = "Minggu";
        break;
        case 5 : 
        Hasil = "Senin";
        break;
        case 6 : 
        Hasil = "Selasa";
        break;
        case 7 : 
        Hasil = "Rabu";
        break;
      }
    break;
    case "Thursday":
      switch(index){
        case 1 : 
        Hasil = "Jumat";
        break;
        case 2 : 
        Hasil = "Sabtu";
        break;
        case 3 : 
        Hasil = "Minggu";
        break;
        case 4 : 
        Hasil = "Senin";
        break;
        case 5 : 
        Hasil = "Selasa";
        break;
        case 6 : 
        Hasil = "Rabu";
        break;
        case 7 : 
        Hasil = "Kamis";
        break;
      }
    break;
    case "Friday":
      switch(index){
        case 1 : 
        Hasil = "Sabtu";
        break;
        case 2 : 
        Hasil = "Minggu";
        break;
        case 3 : 
        Hasil = "Senin";
        break;
        case 4 : 
        Hasil = "Selasa";
        break;
        case 5 : 
        Hasil = "Rabu";
        break;
        case 6 : 
        Hasil = "Kamis";
        break;
        case 7 : 
        Hasil = "Jumat";
        break;
      }
    break;
    case "Saturday":
      switch(index){
        case 1 : 
        Hasil = "Minggu";
        break;
        case 2 : 
        Hasil = "Senin";
        break;
        case 3 : 
        Hasil = "Selasa";
        break;
        case 4 : 
        Hasil = "Rabu";
        break;
        case 5 : 
        Hasil = "Kamis";
        break;
        case 6 : 
        Hasil = "Jumat";
        break;
        case 7 : 
        Hasil = "Sabtu";
        break;
      }
    break;
  }

  return Hasil;
}