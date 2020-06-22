//好友列表
import 'package:flutter/material.dart';
import 'package:mywim/contacts/contact_vo.dart';

class ContactSiderList extends StatefulWidget {
  final List<ContactVO> items; //好友列表项数据
  final IndexedWidgetBuilder headerBuilder; //列表头构造器
  final IndexedWidgetBuilder itemBuilder; //列表项构造器
  final IndexedWidgetBuilder sectionBuilder; //字母构造器

  ContactSiderList(
      {Key key,
      @required this.items,
      this.headerBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  @override
  _ContactSiderListState createState() => _ContactSiderListState();
}

class _ContactSiderListState extends State<ContactSiderList> {
  //列表滑动控制器
  final ScrollController _scrollController = ScrollController();

  bool _onNatification(ScrollNotification notification) {
    return true;
  }

  //判断并显示头部视图或空视图
  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  //根据定位判断是否显示好友列表头
  bool _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }
    if (position != 0 &&
        widget.items[position].seationKey !=
            widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener(
            onNotification: _onNatification,
            child: ListView.builder(
                //滑动控制器
                controller: _scrollController,
                //列表里面的内容不足一屏时，列表也可以滑动
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: widget.items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),
                          child: widget.sectionBuilder(context, index),
                        ),
                        Column(
                          children: [widget.itemBuilder(context, index)],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
