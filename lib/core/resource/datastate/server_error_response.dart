class ServerErrorResponse {
  final String message;

  ServerErrorResponse({required this.message});

  factory ServerErrorResponse.fromJson(Map<String, dynamic> json) {
    return ServerErrorResponse(
      message: json['message'] ?? '',
    );
  }
}
