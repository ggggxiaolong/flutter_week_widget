import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'data_mode.dart';

class PageData {
  final int nextPage;
  final bool hasMore;
  final List<Datas> data;

  PageData(this.nextPage, this.hasMore, this.data);

  PageData.def() : this(0, true, []);

  PageData fromData(Data bean, {isNew = false}) {
    if (!isNew) {
      data.addAll(bean.datas);
      return PageData(bean.curPage, bean.curPage >= bean.pageCount, data);
    } else {
      return PageData(bean.curPage, bean.curPage >= bean.pageCount, bean.datas);
    }
  }
}

class PullRefreshDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<PullRefreshDemo> {
  PageData _data = PageData.def();
  Dio _dio;
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  void initState() {
    super.initState();
    _dio = Dio();
  }

  void _refresh() async {
    int count = await _fetchData(0);
    if (count > 0){
      _refreshController.refreshCompleted();
    } else {
      _refreshController.refreshFailed();
    }
  }

  Future<int> _fetchData(int page) async {
    var path = 'https://wanandroid.com/article/listproject/$page/json';
    final response = await _dio.get(path);
    if (response.statusCode == 200) {
      final data = Data_mode.fromJson(jsonDecode(response.toString()));
      if (mounted) {
        if (data.errorCode == 0) {
          setState(() {
            _data = _data.fromData(data.data, isNew: page == 0);
          });
          return data.data.size;
        } else {
          print(data.errorMsg);
        }
      }
    } else {
      print(response.data.toString());
    }
    return -1;
  }

  void _load() async {
    if (_data.nextPage == 0) {
      await _refresh();
    } else {
      if (!_data.hasMore) {
        int count = await _fetchData(_data.nextPage);
        if (count > 0){
          _refreshController.loadComplete();
        } else if (count == 0){
          _refreshController.loadNoData();
        } else {
          _refreshController.loadFailed();
        }
      } else {
        _refreshController.loadNoData();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PullRefreshDemo"),
      ),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        controller: _refreshController,
        onRefresh: _refresh,
        onLoading: _load,
        child: ListView.builder(
          itemBuilder: _builder,
          itemCount: _data.data.length,
        ),
      ),
    );
  }

  Widget _builder(BuildContext context, int index){
    final data = _data.data[index];
    return Card(
      child: ListTile(
        title: Text(data.chapterName),
        subtitle: Text(data.desc),
        isThreeLine: true,
      )
    );
  }
}
