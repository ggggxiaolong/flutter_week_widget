import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AnimatedIconState();
}

class _AnimatedIconState extends State<AnimatedIconDemo> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..addStatusListener((status) async {
      if (!mounted) return;
      if(status == AnimationStatus.completed){
        await Future.delayed(Duration(milliseconds: 500));
        if(mounted) _controller.reverse();
      } else if (status == AnimationStatus.dismissed){
        await Future.delayed(Duration(seconds: 1));
        if(mounted) _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedIcons"),),
      body: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: <Widget>[
          _buildIcons(AnimatedIcons.add_event, "add_event"),
          _buildIcons(AnimatedIcons.arrow_menu, "arrow_menu"),
          _buildIcons(AnimatedIcons.close_menu, "close_menu"),
          _buildIcons(AnimatedIcons.ellipsis_search, "ellipsis_search"),
          _buildIcons(AnimatedIcons.event_add, "event_add"),
          _buildIcons(AnimatedIcons.home_menu, "home_menu"),
          _buildIcons(AnimatedIcons.list_view, "list_view"),
          _buildIcons(AnimatedIcons.menu_arrow, "menu_arrow"),
          _buildIcons(AnimatedIcons.menu_close, "menu_close"),
          _buildIcons(AnimatedIcons.menu_home, "menu_home"),
          _buildIcons(AnimatedIcons.pause_play, "pause_play"),
          _buildIcons(AnimatedIcons.play_pause, "play_pause"),
          _buildIcons(AnimatedIcons.search_ellipsis, "search_ellipsis"),
          _buildIcons(AnimatedIcons.view_list, "view_list"),
        ],
      ),
    );
  }

  Widget _buildIcons(AnimatedIconData icon, String label){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label),
        AnimatedIcon(icon: icon, progress: _controller, size: 50,),
      ],
    );
  }
}