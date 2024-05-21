# FastApi-Python-project
# Đề xuất phim cho người dùng
# Tổng quan

Họ và tên: Mao Sorakpheanukma, Mã ssv: CPC205016, lớp: K56KMT.01

Môn học: Lập trình Python

Tên đề tài: Đề xuất phim cho người dúng

# 1. CƠ SỞ DỮ LIỆU
- Bảng Movies (MovieID INT PRIMARY KEY,Title,OriginalTitle,Overview,ReleaseDate,OriginalLanguage,Popularity,VoteAverage,VoteCount,BackdropPath ,PosterPath )
- Bảng MovieGenr (MovieID,GenreID,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
- Có 2 SP
# 2. Module đọc dữ liệu
sử dụng Python và FastApi để lấy dữ liệu từ trang IMDB
Mô tả nguồn dữ liệu
- Sử dụng Web Scraping để lấy dữ liệu từ trang API của IMDB
- Dữ liệu bao gồm thông tin về các tên phim, thời lượng, đánh giá, năm sx...)
# 3. Node-red
Xây dựng flow để tự động gọi api liên tục để lấy dữ liệu. Sau đó xử lý dữ liệu và insert vào db
# 4. bsite 
- Xây dựng trang web để hiển thị được các thông tin
- Sử dụng HTML, CSS, Javascript để thực hiện xây dựng và thiết kế trang web
- Hiển thị được các thông tin 
