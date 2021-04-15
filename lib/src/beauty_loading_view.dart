import 'package:beauty_loading/src/loading_default_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Created by chenyouyu on 4/14/21 5:02 PM

class BeautyLoading {

  BuildContext context;

  /// Loading 样式
  Widget _loadingStyle;

  static int status = 0;
  static BeautyLoading _instance;

  static BeautyLoading get instance => _getInstance();

  /// default settings
  BeautyLoading._default() {
    _loadingStyle = LoadingDefaultStyle();
  }

  static BeautyLoading _getInstance() {
    if (_instance == null) _instance = BeautyLoading._default();
    return _instance;
  }

  /// show loading
  static void show(BuildContext _context) {
    _getInstance()._show(_context);
  }

  /// dismiss loading
  static void dismiss() {
    if (status == 1) {
      /// 关闭 Dialog
      Navigator.pop(_getInstance().context);
    }
  }

  void _show(BuildContext _context, {Widget loadingStyle}) {
    if (loadingStyle != null) {
      _loadingStyle = loadingStyle;
    }

    Future.delayed(Duration.zero, () {
      status = 1;
      context = _context;
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return _loadingStyle;
          });
    });
  }
}
