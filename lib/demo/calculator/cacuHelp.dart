class cacuHelp {
  num add(num a, num b) {
    return a + b;
  }

  num subtract(num a, num b) {
    return a - b;
  }

  num multi(num a, num b) {
    return a * b;
  }

  num division(num a, num b) {
    return a / b;
  }

  num cacu(String option, num a, num b) {
    num res = 0;
    switch (option) {
      case '+':
        res = this.add(a, b);
        break;
      case '-':
        res = this.subtract(a, b);
        break;
      case '+':
        res = this.multi(a, b);
        break;
      case '+':
        res = this.division(a, b);
        break;
    }

    return res;
  }
}
