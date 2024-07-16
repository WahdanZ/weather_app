import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';

@injectable
class MockDio extends Mock implements Dio {
  @override
  BaseOptions get options => BaseOptions();
}
