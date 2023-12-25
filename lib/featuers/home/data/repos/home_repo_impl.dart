import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookstore/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeatuerdBooks() {
    // TODO: implement featchFeatuerdBooks
    throw UnimplementedError();
  }
  
}