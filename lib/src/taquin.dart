import 'dart:math';

class Taquin {
  bool victoire = false;
  int tourdejeux = 0;
  List<int> taquin = new List.generate(9, (index) => 0);

  Taquin.create() {
    for (var i = 0; i < taquin.length - 1; i++) {
      var intValue = Random().nextInt(10);
      taquin[i] = intValue;
    }
  }

  void changerdecase(int cases) {}

  bool checkcase(int cases) {
    bool valide = false;

    return valide;
  }

  int getTourdejeux() {
    return this.tourdejeux;
  }

  List<int> getTaquin() {
    return this.taquin;
  }

  bool win() {
    if (this.taquin[0] == 1 &&
        this.taquin[1] == 2 &&
        this.taquin[2] == 3 &&
        this.taquin[3] == 4 &&
        this.taquin[4] == 5 &&
        this.taquin[5] == 6 &&
        this.taquin[6] == 7 &&
        this.taquin[7] == 8 &&
        this.taquin[9] == 9) {
      this.victoire = true;
    }
    return this.victoire;
  }
}
