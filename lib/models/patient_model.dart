import 'package:flutter/foundation.dart';

class Patient {
  final String id, imageUrl, description;
  final int amount;
  final int collected;

  //TODO: make description required
  const Patient({
    this.description,
    @required this.collected,
    @required this.id,
    @required this.amount,
    @required this.imageUrl,
  });
}
