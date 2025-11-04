// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Address extends Equatable {
  const Address({
    this.street,
    this.apartment,
    this.city,
    this.postalCode,
    this.country,
  });

  const Address.empty()
    : street = "Test String",
      city = "Test String",
      apartment = "Test String",
      postalCode = "Test String",
      country = "Test String";

  final String? street;
  final String? apartment;
  final String? city;
  final String? postalCode;
  final String? country;

  bool get isEmpty =>
      street == null &&
      apartment == null &&
      city == null &&
      postalCode == null &&
      country == null;

  bool get isNotEmpty => !isEmpty;

  @override
  List<Object?> get props => [street, apartment, city, postalCode, country];
}
