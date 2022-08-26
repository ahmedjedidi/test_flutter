part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const Home = _Paths.HOME;
  static const PRODUCT = _Paths.PRODUCT;
  static const DETAILPRODUCT = _Paths.DETAILPRODUCT;

}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const PRODUCT = '/product';
  static const DETAILPRODUCT = '/detailproduct';
}
