// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookstore/featuers/home/data/repos/home_repo.dart';
import 'package:bookstore/featuers/home/presentation/manager/newest_books_cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.featchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessege));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
