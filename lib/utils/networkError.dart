
class NetworkError {
  String message= "Unable to Fetch Data";

  NetworkError(this.message);

  @override
  String toString() => 'Error(message: $message)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is NetworkError &&
        o.message == message;
  }

  @override
  int get hashCode => message.hashCode;

}