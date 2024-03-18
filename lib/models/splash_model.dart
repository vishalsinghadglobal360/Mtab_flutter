class SplashRequest {
  final String type;

  SplashRequest({required this.type});

  // Convert UserData object to a map
  Map<String, dynamic> toMap() {
    return {
      'Type': type,
    };
  }

}
class SplashDataResponse {
  final String code;
  final String message;
  final List<SplashResult> result;

  SplashDataResponse({
    required this.code,
    required this.message,
    required this.result,
  });

  factory SplashDataResponse.fromJson(Map<String, dynamic> json) {
    return SplashDataResponse(
      code: json['code'],
      message: json['message'],
      result: List<SplashResult>.from(
        json['result'].map((result) => SplashResult.fromJson(result)),
      ),
    );
  }
}
class SplashResult {
  final String configType;
  final String diyCms;
  final String diyDms;
  final String diyJcCms;
  final String mtabCms;
  // Add more fields as needed

  SplashResult({
    required this.configType,
    required this.diyCms,
    required this.diyDms,
    required this.diyJcCms,
    required this.mtabCms,
    // Add more fields as needed
  });

  factory SplashResult.fromJson(Map<String, dynamic> json) {
    return SplashResult(
      configType: json['ConfigType'],
      diyCms: json['DIYCMS'],
      diyDms: json['DIYDMS'],
      diyJcCms: json['DIYJCCMS'],
      mtabCms: json['MTABCMS'],
      // Add more fields as needed
    );
  }
}