enum Gender { Masculine, Feminine }

extension GenderExtension on Gender {
  String toDescription() => this == Gender.Masculine ? 'masculine' : 'feminine';
}
extension GenderStringExtension on String{
  Gender toGenderEnum(){
    if(this == 'masculine') return Gender.Masculine;
    if(this == 'feminine') return Gender.Feminine;

    throw Exception('Could not parse this variable');
  }
}
