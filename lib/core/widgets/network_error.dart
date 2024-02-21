import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NetworkErrorWidget extends StatelessWidget {
  const NetworkErrorWidget({super.key, this.text, required this.onclick});
  final String? text;
  final Function() onclick;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/lottie/network_error.json',
            width: 400, height: 200),
        const SizedBox(
          height: 40,
        ),
        Text(
          text ?? "Check yout Internet connection",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 22,
              color: Theme.of(context).primaryColor.withOpacity(.9),
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: onclick,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Try Again",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
