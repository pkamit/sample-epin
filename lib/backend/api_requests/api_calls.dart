import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CategoriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'categories',
      apiUrl:
          'https://master-data.brodos.net/article-standard-production/v1/categories?_page=0&size=5',
      callType: ApiCallType.GET,
      headers: {
        'x-brodos-api-key': 'fda8339f-800e-4312-abb2-0094eaaa0a39',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DummyproductsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'dummyproducts',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      );
  static dynamic brand(dynamic response) => getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.products[:].images''',
        true,
      );
}

class DummycategoriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'dummycategories',
      apiUrl: 'https://dummyjson.com/products/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic dummycategories(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic firstcategory(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
