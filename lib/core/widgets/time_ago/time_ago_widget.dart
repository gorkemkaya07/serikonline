import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimeAgoWidget extends StatelessWidget {
  const TimeAgoWidget({
    super.key,
    required this.dateTime,
  });

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      timeago.format(dateTime, locale: 'tr'),
      style: AppTheme.cardTimeAgo,
    );
  }
}
