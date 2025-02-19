import 'dart:convert';

import 'package:dashboard_ui_assignment/core/utils/server_exception.dart';
import 'package:dashboard_ui_assignment/features/dashboard/data/model/upload_data_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/// interface class for data source
abstract interface class RemoteDataSource {
  Future<List<UploadDataModel>> getUploadData();
}

/// implementation of remote data source class
@LazySingleton(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  /// instance of dio
  Dio dio = Dio(
    BaseOptions(
      connectTimeout: Duration(milliseconds: 30000),
      receiveTimeout: Duration(milliseconds: 30000),
    ),
  );

  @override
  Future<List<UploadDataModel>> getUploadData() async {
    try {
      final respone = await dio
          .get('https://jsonplaceholder.typicode.com/photos?_page=1&_limit=10');

      final List<dynamic> data = respone.data;

      /// Convert list of maps to list of UploadDataModel
      return data
          .map((json) => UploadDataModelMapper.fromJson(jsonEncode(json)))
          .toList();
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
