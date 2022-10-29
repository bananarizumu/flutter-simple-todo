import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "TODO ITEM",
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.combine([TextDecoration.none])),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.details),
                tooltip: 'detail',
                onPressed: () async {
                  // TODO: detailに遷移
                },
              )
            ].toList(),
          )
        ],
      ),
    );
  }
}
