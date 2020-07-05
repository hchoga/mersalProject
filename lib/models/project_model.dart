import 'package:flutter/foundation.dart';
import 'patient_model.dart';

///mersal projects data model
///final model
class Project extends Patient {
  final String title;

  //TODO: make description required
  const Project({
    description,
    @required this.title,
    @required collected,
    @required id,
    @required amount,
    @required imageUrl,
  }) : super(
          id: id,
          amount: amount,
          collected: collected,
          imageUrl: imageUrl,
          description: description
        );
}
