import 'package:bookstore/core/widgets/custom_error_message.dart';
import 'package:bookstore/core/widgets/custom_loading.dart';
import 'package:bookstore/featuers/home/presentation/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookstore/featuers/home/presentation/view/widgets/books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksListview extends StatelessWidget {
  const NewsetBooksListview({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BooksListviewItem(
                  bookModel: state.books[index],
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessaage: state.errMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
