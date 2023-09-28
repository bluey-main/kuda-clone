import 'package:flutter/material.dart';


class AmountComponent extends StatelessWidget {
  const AmountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                alignment: Alignment.topLeft,
                child: Column(
                  children: const [
                    SizedBox(
                      width: 200,
                      child: Text("Nigerian Naira"),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text(
                        r"$116.37",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      child: Text("Last updated 2 h 29 min 59 sec ago",
                          style: TextStyle(
                            fontSize: 10.0,
                          )),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: const Icon(Icons.more_horiz_outlined),
                ),
              ),
            ],
          );
  }
}
