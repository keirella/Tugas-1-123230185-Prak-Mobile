class Asset {
  // variabel public
  String name;
  String type;

  // variabel private
  int _size;

  // constructor untuk menginisialisasi variabel
  Asset(this.name, this.type, this._size);

  // fungsi public untuk mereturnkan value dari Size
  int getSize() {
    return _size;
  }

  // buat named function handleBos (public)
  String handleBos(String boss, bool isDefeat) {
    // logika parameter isDefeat 
    if (isDefeat) {
      return "$name mengalahkan $boss";
    } else {
      return "$name dikalahkan oleh $boss";
    }
  }
}
