//App constants preferably kept global.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Dio api_DIO = Dio();

// W(context) = 1% of screen's width
double W(BuildContext context) => context.safePercentWidth;

// H(context) = 1% of screen's height
double H(BuildContext context) => context.safePercentHeight;
