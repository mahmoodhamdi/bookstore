import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookstore/featuers/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocato() {
  getIt.registerSingleton<BookModel>(const BookModel());
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );

}
