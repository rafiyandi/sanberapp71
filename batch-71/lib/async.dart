//Uncompleted
//Completed => Success
//Completed => Error

void main(List<String> args) async {
  var person = Person();
  person
      .login('rafi@gmail.com', 'password')
      .then((value) {
        print('Lempar ke halaman home');
      })
      .catchError((err) {
        print('Keluarkan Message');
        print(err);
      });
  // person.register().
}

class Person {
  String name = "Dafault Name";
  String email = "rafi@gmail.com";
  String password = "password";

  void register() {
    try {} catch (e) {
      print('object');
    }
  }

  Future<String> login(String emailParams, String passwordParams) async {
    if (email == emailParams && password == passwordParams) {
      return 'Xwowojfaoow';
    } else {
      throw 'Periksa email & password Anda';
    }
  }

  Future<String> orderQty(int qtyOrder) async {
    int stok = 5;
    if (stok >= qtyOrder) {
      return "Pembelian Berhasil";
    } else {
      throw "Pembelian Gagal";
    }
  }

  Future<void> fetchUser() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'Rafiyandi';
  }

  void fetchDataBanner() async {
    //Network
    //Jumlah Data
    await Future.delayed(Duration(seconds: 3));
    print('Fetch Data Success');
  }
}
