import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/featuers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> featchBestSellerBooks();
    Future<Either<Failure, List<BookModel>>>  featchFeatuerdBooks();
}
