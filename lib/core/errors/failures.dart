import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessege;

  const Failure(this.errMessege);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessege);
  factory ServerFailure.fromResponseError(statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 402 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request not found, please try again later");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error");
    } else {
      return ServerFailure("There is an Error, Please try again");
    }
  }
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout with api server ");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout with api server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with api server");
      case DioExceptionType.badCertificate:
        return ServerFailure("connectionTimeout");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponseError(
            dioException.response!.statusCode, dioException.response);
      case DioExceptionType.cancel:
        return ServerFailure("Request to api server was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("Check Your Internet Conection");
      case DioExceptionType.unknown:
        return ServerFailure("connection Error");
      default:
        return ServerFailure("There is an Error, Please try again");
    }
  }
}
