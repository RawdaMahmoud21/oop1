
class Movie {
  String title = '';
  String studio = '';
  String rating = '';

  Movie(this.title,this.studio,[this.rating = 'PG' ]);

 static List<Movie>getPg(List<Movie>movies){
    List<Movie>moviesPg = [];
    for(int i =0 ; i< movies.length; i++){
      if(movies[i].rating.contains('PG')){
        moviesPg.add(movies[i]);

      }
    }
    return moviesPg;
  }
}

void main() {
  Movie movie1 = Movie('Casino Royal', 'Eon Productions', 'PG13');
  Movie movie2 = Movie('Frozen', 'Disney');
  Movie movie3 = Movie('Joker', 'Warner Bros', 'R');

  List<Movie> movies = [movie1, movie2, movie3];
  List<Movie> result = Movie.getPg(movies);
  for (int i = 0; i < result.length; i++) {
    print(result[i].title);
  }
}