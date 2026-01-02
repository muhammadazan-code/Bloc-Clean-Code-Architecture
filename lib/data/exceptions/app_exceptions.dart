class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix'; // Return the formatted message.
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message])
    : super(message, "No Internet Connection");
}

class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message])
    : super(message, "You don't have access.");
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, "Request Time out");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, "No data fetch");
}
