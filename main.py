#Create by: Mao Sorakpheanukma
from fastapi import FastAPI
from fastapi.responses import JSONResponse
import requests

app = FastAPI()

@app.get("/movie-top-rated")
async def get_movie_top_rated():
    url = "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1"
    headers = {
    "accept": "application/json",
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YWRkNjk1MjhiYmFlNjdlNTJkMWE4NzJjNDBkZWJlNyIsInN1YiI6IjY2NGNjNmZmZTM0ZjYyMDMyYTU0YjI4ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QI0RdOLEvi3y9pWHN9sZ1YSE10cJe8r9Y5m-zfAWz-o"
    }
    
    response = requests.get(url, headers=headers)
    data = response.json()
    return JSONResponse(content=data)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
