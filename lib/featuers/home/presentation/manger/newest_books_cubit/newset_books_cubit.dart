import 'package:bloc/bloc.dart';
import 'package:bookstore/featuers/home/data/repos/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessege));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}