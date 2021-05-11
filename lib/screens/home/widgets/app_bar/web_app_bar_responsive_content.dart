import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, contrains) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[600]),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: 'Pesquise alguma coisa aqui'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (contrains.maxWidth > 400) ...[
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 38,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
            if (contrains.maxWidth > 500) ...[
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 38,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Flutter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]
          ],
        );
      }),
    );
  }
}
