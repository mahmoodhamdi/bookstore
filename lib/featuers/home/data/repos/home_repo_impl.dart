import 'package:bookstore/core/errors/failures.dart';
import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookstore/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&&Sorting=Newest");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeatuerdBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?q=subject:programming&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
