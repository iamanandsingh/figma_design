class ValidateMixin {
  String validateFunc(value) {
    if (!(value.length > 4)) {
      return "Enter input greater than 4 char";
    } else if (value.length > 120) {
      return "Name input be maximum 120 characters";
    }
    return null;
  }
  String validateDate(value) {
    if (!(value.length == 12)) {
      return "Enter Date in this format- Dec 03, 2020";
    }
    return null;
  }

}
