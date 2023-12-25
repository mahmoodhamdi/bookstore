
// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookstore/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookstore/featuers/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatuerdBooks() async {
    emit(FeatuerdBooksLoading());
    var result = await homeRepo.featchFeatuerdBooks();
    result.fold((failure) {
      emit(FeatuerdBooksFailure(failure.errMessege));
    }, (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }
}
