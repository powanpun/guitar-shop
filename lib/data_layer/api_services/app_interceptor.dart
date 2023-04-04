import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:guitar_shop/data_layer/api_url/api_url.dart';
import 'package:guitar_shop/data_layer/model/result/result_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    String initialData = prefs.getString('initial_data') ?? "";
    if (initialData != "") {
      options.headers['cookie'] = initialData;
    }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    String userSessionId = prefs.getString('initial_data') ?? "";
    if (requiredAuthToken(response.realUri.toString())) {
      debugPrint("response uri = ${response.realUri}");
      String resp = response.headers.value("set-cookie") ?? "";

      Result res = Result.fromJson(response.data);
      if (res.result != null) {
        debugPrint("response uri = ${response.data}");
        if (userSessionId == "") {
          String cookieValue = resp.substring(0, resp.indexOf(';'));
          await prefs.setString('initial_data', cookieValue);
        }
      }
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}

bool requiredAuthToken(String url) {
  if (url == ApiUrl.loginUrl

      //  || url == ApiUrl.signUpUrl
      ) {
    return true;
  } else {
    return false;
  }
}
