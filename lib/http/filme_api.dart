// Importando as bibliotecas necessárias
import 'dart:convert'; // Biblioteca para lidar com codificação e decodificação de JSON.
import '../model/filme.dart'; // Importando a classe Filme do seu modelo.
import 'package:http/http.dart' as http;

class FilmeApi {
  final String url =
      'https://my-json-server.typicode.com/GabrielAraujo90/my_api_json/filmes';
  Future<List<Filme>> getFilmes() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Falhou na busca da API');
    }

    final json = jsonDecode(response.body);
    final mapsFilmes = json.cast<Map<String, dynamic>>();
    List<Filme> listFilmes = [];

    // Converte cada mapa de personagem em um objeto Personagem
    for (var map in mapsFilmes) {
      // Cria um objeto Personagem usando o método fromJson
      Filme objfilme = Filme.fromJson(map);
      // Adiciona o personagem à lista
      listFilmes.add(objfilme);
    }
    // Retorna a lista de personagens obtida da API
    return listFilmes;
  }
}

// Definindo a classe FilmeApi
//class FilmeApi {
// Uma string que simula a resposta da API em formato JSON.
// String respostaApi =
//     '''
//   [
//      {
//          "id": 1,
//          "titulo": "Senhor dos anéis",
//          "resumo":"Querem Destruir o anel",
//          "atores":"Orlando Bloom",
//          "capa":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-mClXXZnkO87cqM8FHN-Nbk1LX-UlKC9PQ&usqp=CAU",
//          "duracao":250
//      },
//    {
//          "id": 2,
//          "titulo": "Clube da luta",
//          "resumo":"tiro porrada e bomba",
//          "atores":"Brad pitt",
//         "capa":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvAqRwWx71pstK06pRfjCtnu0DU2C7uVWLaA&usqp=CAU",
//         "duracao":270
//      },
//    {
//          "id": 3,
//          "titulo": "American PIE",
//          "resumo":"nheco nheco",
//          "atores":"Camisinha prudence sabor morango",
//          "capa":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9l4q8l_swT6LqxRhNtH59R2CCd7xmyJSCCA&usqp=CAU",
//          "duracao":100
//      },
//    {
//          "id": 4,
//          "titulo": "Frozen",
//          "resumo":"Ta gelado",
//          "atores":"Boneco de desenho animado",
//         "capa":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAIPvs8wXy80Fo8OtsQsSruFcDUwYBD7e0oQ&usqp=CAU",
//          "duracao":210
//    }
//     
//    ]
//    ''';
  // Definindo um método assíncrono para buscar filmes offline.
//  Future<List<Filme>> getFilmesOffline() async {
    // Decodificando a string JSON para um objeto Dart.
//    final json = jsonDecode(respostaApi);

    // Convertendo os objetos JSON em List<Map<String, dynamic>>.
//    final mapsFilme = json.cast<Map<String, dynamic>>();

    // Criando uma lista vazia para armazenar os objetos Filme.
//    List<Filme> listFilmes = [];

    // Iterando por cada mapa de filme e convertendo em objetos Filme.
//    for (var map in mapsFilme) {
//      Filme filme = Filme.fromJson(map);
//      listFilmes.add(filme);
//    }

    // Delay simulado de 1 segundo (para simular o tempo de resposta da API).
//    await Future.delayed(const Duration(seconds: 1));

    // Retornando a lista de filmes após o processo.
//    return listFilmes;
//  }

//  getFilmes() {}
//}
