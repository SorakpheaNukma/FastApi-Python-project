using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace movie_asp.net
{
    public partial class api : Page
    {
        private readonly string conStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetMovies();
            }
        }

        class Movie
        {
            public int MovieID { get; set; }
            public string Title { get; set; }
            public DateTime ReleaseDate { get; set; }
            public string Overview { get; set; }
            public string OriginalLanguage { get; set; }
            public double Popularity { get; set; }
            public double VoteAverage { get; set; }
            public int VoteCount { get; set; }
            public string BackdropPath { get; set; }
            public string PosterPath { get; set; }
        }

        private void GetMovies()
        {
            List<Movie> movies = new List<Movie>();

            try
            {
                using (SqlConnection cn = new SqlConnection(conStr))
                {
                    cn.Open();
                    SqlCommand cm = new SqlCommand("GetMovies", cn);
                    cm.CommandType = CommandType.StoredProcedure;
                    SqlDataReader dr = cm.ExecuteReader();

                    while (dr.Read())
                    {
                        Movie movie = new Movie();
                        // Assuming the column names match with the properties in Movie class
                        movie.MovieID = int.Parse(dr["MovieID"].ToString());
                        movie.Title = dr["Title"].ToString();
                        movie.ReleaseDate = Convert.ToDateTime(dr["ReleaseDate"]);
                        movie.Overview = dr["Overview"].ToString();
                        movie.OriginalLanguage = dr["OriginalLanguage"].ToString();
                        movie.Popularity = Convert.ToDouble(dr["Popularity"]);
                        movie.VoteAverage = Convert.ToDouble(dr["VoteAverage"]);
                        movie.VoteCount = Convert.ToInt32(dr["VoteCount"]);
                        movie.BackdropPath = dr["BackdropPath"].ToString();
                        movie.PosterPath = dr["PosterPath"].ToString();
                        movies.Add(movie);
                    }

                    cm.Dispose();
                }

                string json = JsonConvert.SerializeObject(movies);
                Response.Write(json);
            }
            catch (Exception ex)
            {
                Response.StatusCode = 500;
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}
