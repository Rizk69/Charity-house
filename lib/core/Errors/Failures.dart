// import 'package:dio/dio.dart';
//
// abstract class Failure {
//   final String errorMessage;
//
//   const Failure(this.errorMessage);
// }
//
// class ServerFailure extends Failure {
//   ServerFailure(super.errorMessage);
//
//   factory ServerFailure.formDioException(DioException dioException) {
//     switch (dioException.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('Connection Timeout With ApiServer');
//
//       case DioExceptionType.sendTimeout:
//         // TODO: Handle this case.
//         return ServerFailure('Connection Timeout With ApiServer sendTimeout');
//
//       case DioExceptionType.receiveTimeout:
//         // TODO: Handle this case.
//         return ServerFailure(
//             'Connection Timeout With ApiServer receiveTimeout');
//
//       case DioExceptionType.badCertificate:
//         // TODO: Handle this case.
//         break;
//       case DioExceptionType.badResponse:
//         // TODO: Handle this case.
//         return ServerFailure.fromResponse(
//             (dioException.response?.statusCode) ?? 0,
//             dioException.response?.data);
//
//       case DioExceptionType.cancel:
//         // TODO: Handle this case.
//         return ServerFailure('Oppssss');
//       case DioExceptionType.connectionError:
//         // TODO: Handle this case.
//         return ServerFailure('Oppssss');
//       case DioExceptionType.unknown:
//         // TODO: Handle this case.
//         return ServerFailure('Oppssss');
//     }
//     return ServerFailure('Oppssss Not');
//   }
//
//   factory ServerFailure.fromResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
//       return ServerFailure(response['error']["message"]);
//     } else if (statusCode == 404) {
//       return ServerFailure(' Not Found , Please try Later..!');
//     } else if (statusCode == 500) {
//       return ServerFailure('Server Error , Please try Later..!');
//     } else {
//       return ServerFailure('Oppssss');
//     }
//   }
// }
