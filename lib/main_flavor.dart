import 'package:flutter/material.dart';
import 'package:flutter_flavors/app.dart';

import 'flavors.dart';

void buildFlavor(Flavor flavor) {
  F.appFlavor = flavor;
  runApp(MyApp());
}
