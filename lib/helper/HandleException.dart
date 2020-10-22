class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String message])
      : super(message, "Dữ liệu chưa được cập nhật ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message])
      : super(message, "Tài khoản chưa được đăng kí trên hệ thống");
}

class InvalidInputException extends AppException {
  InvalidInputException([String message]) : super(message, "Invalid Input: ");
}

class NotFoundException extends AppException {
  NotFoundException([String message])
      : super(message, "Không thể tìm thấy đường dẫn");
}

class SocketException extends AppException {
  SocketException([String message])
      : super(message, "Không thể kết nối đến máy chủ");
}