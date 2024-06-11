class Book {
  String? title;
  String? author;
  int? numOfPages;

  Book({this.title, this.author, this.numOfPages});

  aboutBook() {
    print('Title: $title');
    print('Author: $author');
    print('Number of pages: $numOfPages');
  }
}

class Novel extends Book {
  String? genre;

  Novel({title, author, numOfPages, this.genre})
      : super(title: title, author: author, numOfPages: numOfPages);

  @override
  aboutBook() {
    super.aboutBook();
    print('Genre: $genre');
  }
}
