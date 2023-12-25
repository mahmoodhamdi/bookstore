import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);
}
