import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeLocalDataSource {

  @override
  List<BookEntity> fetchFeaturedBooks()  {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks()  {
    throw UnimplementedError();
  }

}
