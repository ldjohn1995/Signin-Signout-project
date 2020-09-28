$(document).ready(function(){

  $('#searchbtn').on("click",function(){
    var searchtext = $('#searchbar').val();
    getmovies(searchtext);
    event.preventDefault();
  });
});

function getmovies(searchtext){
  axios.get('http://www.omdbapi.com/?s='+searchtext+ '&apikey=a76b9be2')
  .then(function(response){
    console.log(response);
    var movies = response.data.Search;
    var output = '' ;
    $.each(movies, function(welcomepage, movie){
      output += `
      <div class = "col-3">
       <div class = "well text-center">
       <img src = "${movie.Poster}">
       <h5>${movie.Title} </h5>
       <a onclick = "movieSelected('${movie.imdbID}')" class = "btn btn-primary" href="#">Movie details</a>
        </div>
       </div>
      `;
    });
    $('#movies').html(output);
  })
  .catch(function(error){
    console.log(error);
  });
}

function movieSelected(id){
  sessionStorage.setItem('movieId',id);
  window.location = 'movie.jsp';
  return false;
}

function getmovie(){
  var movieId = sessionStorage.getItem('movieId')

  axios.get('http://www.omdbapi.com/?i='+movieId+ '&apikey=a76b9be2')
  .then(function(response){
    console.log(response);
    var movie = response.data;
    var output = `
     <div class = "row">
     <div class = col-4>
     <img src = "${movie.Poster}" class = "thumbnail">
      </div>
      <div class = col-8>
        <h1> ${movie.Title} </h1>
        <ul class = "list-unstyled">
          <li class ="list - group - item"><strong> Released:</strong> ${movie.Released}</li>
          <li class ="list - group - item"><strong> duration:</strong>${movie.Runtime}</li>
          <li class ="list - group - item"><strong> Genre:</strong> ${movie.Genre}</li>
          <li class ="list - group - item"><strong> Rating:</strong> ${movie.Rated}</li>
          <li class ="list - group - item"><strong> IMDB Rating:</strong> ${movie.imdbRating}</li>
          <li class ="list - group - item"><strong> Actors:</strong> ${movie.Actors}</li>
      </ul>
       </div>
     </div>

     <div class= "row">
       <div class = "well">
       <h3> movie plot</h3>
       ${movie.Plot}
       <hr>
       <a href = "http://imdb.com/title/${movie.imdbID}" target "blank" class= "btn btn-primary">view imdb</a>
       <a href ="restaurtantProject.html" class ="btn btn-primary">Go back to search</a>
        </div>
      </div>
    `;
     $('#movie').html(output);
  })
  .catch(function(error){
    console.log(error);
  });
}
