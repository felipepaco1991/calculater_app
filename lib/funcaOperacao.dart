double dividir(double a, double b) {
  if (b == 0) {
    throw ArgumentError('Divisão por zero não é permitida.');
  }
  return a / b;
}

double multiplicar(double a, double b) {
  return a * b;
}

double subtrair(double a, double b) {
  return a - b;
}

double somar(double a, double b) {
  return a + b;
}

double operador(String operador, double n1, double n2) {
  if (operador == '+') {
    return somar(n1, n2);
  } else if (operador == '-') {
    return subtrair(n1, n2);
  } else if (operador == '*') {
    return multiplicar(n1, n2);
  } else if (operador == '/') {
    return dividir(n1, n2);
  } else {
    throw ArgumentError('Operador inválido: $operador');
  }
}
