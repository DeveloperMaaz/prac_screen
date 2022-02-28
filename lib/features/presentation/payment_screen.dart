import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:prac_screen/features/presentation/widgets/button.dart';
import 'package:prac_screen/features/presentation/widgets/text.dart';
import 'package:prac_screen/features/presentation/widgets/title_row.dart';

import 'constants/constants.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    width: 40,
                    height: 40,
                    image: Svg('assets/images/check.svg')),
                const Padding(
                  padding: EdgeInsets.only(top: 24.0, bottom: 8.0),
                  child: Text(
                    'Payment Successful',
                    style: textStyleTitle1,
                  ),
                ),
                const Text(
                  'Thank you for trusting Butler’s services & placing an order',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: textStyle14,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 24),
                  child: Divider(
                    thickness: 4,
                    height: 3,
                    color: Color.fromRGBO(248, 248, 248, 1),
                  ),
                ),
                Titles('Order Details'),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 12),
                  child: RowData('Order ID:', '18402'),
                ),
                RowData('Date Ordered', 'July 3, 2021 8:30 PM'),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: RowData('Customer Name:', 'Maaz Ajmal'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  child: Titles('Payment Details'),
                ),
                RowData('Sub-total (4 Items)', '\$970.39'),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: RowData('GST (7%)', '\$59.32'),
                ),
                RowData('Total Cost', '\$1070.39'),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 24),
                  child: Divider(
                    thickness: 4,
                    height: 2,
                    color: Color.fromRGBO(248, 248, 248, 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Download Receipt',
                      style: textStyleB14,
                    ),
                    Image(
                      width: 20,
                      height: 20,
                      image: Svg('assets/images/download.svg'),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 62),
                  child: Text(
                    'You can track your order by viewing order history',
                    style: textStyle14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button('Back to Home', Colors.transparent,
                        const Color.fromRGBO(28, 28, 28, 1)),
                    Button('Order History', const Color.fromRGBO(28, 28, 28, 1),
                        const Color.fromRGBO(255, 255, 255, 1)),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
