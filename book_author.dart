class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book("Introduction to Algorithms", "Ronald Rivest", 1989, 120);
  Book book2 = Book("Clean Code", "Robert Cecil Martin", 2012, 200);
  Book book3 = Book("A Tour of C++", "Bjarne Stroustrup", 2013, 50);

  book1.read(30);
  book2.read(50);
  book3.read(20);

  print(
      "Book 1 --- Book Name: ${book1.getTitle()}, Author: ${book1.getAuthor()}, Year: ${book1.getPublicationYear()}, Pages Read: ${book1.getPagesRead()}, Age: ${book1.getBookAge()} years");
  print('');
  print(
      "Book 2 --- Book Name: ${book2.getTitle()}, Author: ${book2.getAuthor()}, Year: ${book2.getPublicationYear()}, Pages Read: ${book2.getPagesRead()}, Age: ${book2.getBookAge()} years");
  print('');
  print(
      "Book 3 --- Book Name: ${book3.getTitle()}, Author: ${book3.getAuthor()}, Year: ${book3.getPublicationYear()}, Pages Read: ${book3.getPagesRead()}, Age: ${book3.getBookAge()} years");

  print('');
  print("Total Number of Books Created: ${Book.totalBooks}");
}
