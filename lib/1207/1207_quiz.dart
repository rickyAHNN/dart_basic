/*
다음 동작을 할 수 있도록 Book 클래스를 수정하시오.

제목과 출간일이 같으면 같은 책으로 판단한다. 또한 List, Set, Map 등의 컬렉션에 넣어도 동일 객체로 판단한다.
Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
deep copy 를 지원한다

 */

class Book implements Comparable<Book> {
  String title;
  String comment;
  DateTime publishDate = DateTime.now();

  Book(
     this.title,
     this.comment,
     this.publishDate,
  );

  @override
  String toString() {
    return 'Book{title: $title, comment: $comment, publishDate: $publishDate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&   // 두객체가 동일한가
          runtimeType == other.runtimeType && // 두객체의 런타임이름(hashCode)가 동일한가
          title == other.title && // 타이틀이 동일한가
          publishDate == other.publishDate; // 시간이 동일한가?
  //num.sort((a,b)⇒ a.compareTo (b));
  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title ?? this.title,
       comment ?? this.comment,
       publishDate ?? this.publishDate,
    );
  }


  @override

  int compareTo(Book others){

    return publishDate.compareTo(publishDate);}}


void main() {
  Book book = Book('title',  'comment',  DateTime(3));
  Book book2 = Book('title',  'comment', DateTime(2) );
  Book book3 = Book('title',  'comment', DateTime.now() );
  Book book4 = Book('title',  'comment', DateTime.now() );
Book book5 = book3;
print(book3.hashCode);
print(book5.hashCode);
print('------------');



  Set<Book> bookList2 = {};
  bookList2.add(book3);
  bookList2.add(book4);
  print(bookList2.length);

  List<Book> bookList = [];
  bookList.add(book);
  bookList.add(book2);
  bookList.sort((a, b) =>-a.compareTo(b));
  print(bookList);

  final bookClone = Book(book.title,book.comment,book.publishDate);
  print(book == bookClone);
  final bookCopy = book.copyWith(title: '딥카피 문서');
  print(book == bookCopy);
}

