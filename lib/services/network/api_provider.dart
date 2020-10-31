import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_keysun_template/common/flavor/flavor_config.dart';

import 'network_exceptions.dart';

abstract class APIProvider {
  Future<Either<DioError, LanguageListResponse>> getQuotes();
}

class APIProviderIml extends APIProvider {
  final String _endPoint = FlavorConfig.instance.baseUrl;
  final Dio _dio = Dio();

  static APIProviderIml _instance;

  APIProviderIml._() {
    print("APIProviderIml()");
    _dio.options.baseUrl = _endPoint;
//    _dio.interceptors.add(LogInterceptor(responseBody: false));
//    _dio.interceptors.add(LoggingInterceptors());
//    _dio.interceptors.add(PrettyDioLogger());
    _dio.options.contentType = "application/x-www-form-urlencoded";
  }

  static Future<APIProviderIml> getInstance() async {
    if (_instance == null) {
      _instance = APIProviderIml._();
    }

    return _instance;
  }

  @override
  Future<Either<DioError, LanguageListResponse>> getQuotes() async {
    Response response;
    try {
      response = await _dio.get(
        "/quotes",
      );

      print("===== Response Start =======");
      print(response.data.toString());
      print("===== Response End =======");

      return Right(
        LanguageListResponse.fromJson(
          json.decode(response.data),
        ),
      );
    } on DioError catch (dioError) {
      print("===== Error Catch =======");
      print(this.toString());
      print("===== Error Catch =======");
      return Left(
        dioError,
      );
    } on TypeError catch (_) {
      throw AppNetworkException(NetworkExceptions.TYPE_ERROR,
          message:
              "We can pass message to exception or may be use to send crash report.");
    } on Error catch (_) {
      throw AppNetworkException(NetworkExceptions.OTHER);
    }
  }
}

class LanguageListResponse extends CommonResponse {
  List<Payload> payload;

  LanguageListResponse({
    this.payload,
  });

  LanguageListResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'] != null ? Error.fromJson(json['error']) : null;

    if (json['payload'] != null) {
      payload = List<Payload>();
      json['payload'].forEach((v) {
        payload.add(Payload.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.error != null) {
      data['error'] = this.error.toJson();
    }
    if (this.payload != null) {
      data['payload'] = this.payload.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Payload {
  String languageId;
  String title;
  String code;
  bool isSelected;

  Payload({this.languageId, this.title, this.code, this.isSelected});

  Payload.fromJson(Map<String, dynamic> json) {
    languageId = json['language_id'];
    title = json['title'];
    code = json['code'];
    isSelected = json['is_selected'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['language_id'] = this.languageId;
    data['title'] = this.title;
    data['code'] = this.code;
    data['is_selected'] = this.isSelected;
    return data;
  }
}

class CommonResponse {
  Error error;
  String status;
}

class Error {
  String name;
  String message;
  int code;

  Error({this.name, this.message, this.code});

  Error.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}
