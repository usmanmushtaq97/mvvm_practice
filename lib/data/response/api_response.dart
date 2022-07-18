 import 'package:mvvm_practice/data/response/status.dart';

class ApiResponse<T>{
  Status? status;
  T? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.LOADING;
  ApiResponse.error() : status = Status.LOADING;

  @override
  String toString(){
    return "status : $status \n message: $message \n data: $data";
  }
}