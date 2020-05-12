// Generated by https://quicktype.io


class Pelicula {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;
  
  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  //Este constructor servira para almacenar en cada variable los datos del json de la api
  Pelicula.fromJson(Map<String,dynamic> json){
      popularity        = json['popularity'] / 1;
      voteCount         = json['vote_count'];
      video             = json['video'];
      posterPath        = json['poster_path'];
      id                = json['id'];
      adult             = json['adult'];
      backdropPath      = json['backdrop_path'];
      originalLanguage  = json['original_language'];
      originalTitle     = json['original_title'];
      genreIds          = json['genre_ids'].cast<int>();
      title             = json['title'];
      voteAverage       = json['vote_average'] / 1;
      overview          = json['overview'];
      releaseDate       = json['release_date'];
  }
}

class Peliculas{

    //Aqui almacenara los datos del json recibido por medio del constructor
    List<Pelicula> item = List();

    Peliculas();

    //Este constructor recibira el json decodificado y lo almacenara en lista item
    Peliculas.fromJsonList(List<dynamic> jsonList){
        if(jsonList == null) return;
        for (var valor in jsonList) {
          //
          final peliculaTemporal = Pelicula.fromJson(valor);
          //lista item almacenara todas las variables de la clase Pelicula.fromJson
          item.add(peliculaTemporal);
        }
    }
  }
