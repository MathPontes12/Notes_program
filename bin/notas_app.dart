import 'dart:io';

void main() {
  List<String> notas= [];                                                       // lista vazia para "dar" para funçao adicionarnota
  print('');
  logoDoCabecalho();
  menu(notas);
}

String pegarComando(){                                                          // 'tipo do retorno da funçao' nomedafunçao() {}

  print('Digite o comando: 1- Adicionar Notas, 2- Listar Notas, 3- Sair');
  List <String> comandos = <String>['1','2','3'];
  String? entrada= '';
  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Opção Invalida');
    pegarComando();
  }

return entrada!;
}

List<String> adicionarNota(notas){                                // 'tipo do retorno da funçao' nomedafunçao('variavel que vai buscar de outra funçao')

  print('Digite uma nota:');
  String? notaNova = stdin.readLineSync();

  if (notaNova == null || notaNova.isEmpty) {                     // se a notaNova for nula OU notaNova estiver vazia...
    print('Não é possível adicionar uma nota vazia!');
    adicionarNota(notas);
  }

notas.add(notaNova!);                                              // adiciona notaNova na lista notas

return notas!;
}

void listarNotas(notas) {                                          // como a lista nao vai retornar nada, somente mostrar, o tipo é void ou vazio

  print('Suas notas são:');
  for (var i = 0; i < notas.length; i++) {

    print(notas[i]);
  }
}

void menu(notas) {
  
  print('');                                             // *adiciona espaçamento antes e depois, pra deixar o codigo visualmente melhor
  String comando = pegarComando();
  print('');                                             // *

  switch (comando) {
    case '1':
      adicionarNota(notas);
      menu(notas);
    
    case '2':
      listarNotas(notas);
      menu(notas);

    case '3':
      print('Até Breve!');
  }

}

void logoDoCabecalho() {                                                    // recurso de ASCII Art - modelo Banner3-D

print("'##::: ##::'#######::'########::::'###:::::'######::");
print(" ###:: ##:'##.... ##:... ##..::::'## ##:::'##... ##:");
print(" ####: ##: ##:::: ##:::: ##:::::'##:. ##:: ##:::..::");
print(" ## ## ##: ##:::: ##:::: ##::::'##:::. ##:. ######::");
print(" ##. ####: ##:::: ##:::: ##:::: #########::..... ##:");
print(" ##:. ###: ##:::: ##:::: ##:::: ##.... ##:'##::: ##:");
print(" ##::. ##:. #######::::: ##:::: ##:::: ##:. ######::");
print("..::::..:::.......::::::..:::::..:::::..:::......:::");

}