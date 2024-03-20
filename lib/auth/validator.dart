class Tvalidator{

  static String? validateEmptyText(String? fieldname, String? value)
  {
    if(value==null || value.isEmpty)
      {
        return '$fieldname is required';
      }
    return null;
  }

  static String? validateemail(String? value)
  {
    if(value==null || value.isEmpty)
      {
        return "Email is required";
      }

    final emailRegexp= RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if(!emailRegexp.hasMatch(value))
      {
        return "Invalid Email Address";
      }

    return null;
  }

  static String? validatepassword(String? value)
  {
    if(value==null || value.isEmpty)
    {
      return "Password is required";
    }

    if (value.length<6)
      {
        return 'Password must contain at least 6 characters long';
      }

    if(!value.contains(RegExp((r'[A-Z]'))))
    {
      return 'Password must contain at least one uppercase letter.';
    }
    
    if(!value.contains(RegExp(r'[0-9]')))
      {
        return 'Password must contain at least one number.';
      }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')))
      {
        return "Password must contain at least one special character.";
      }

    return null;
  }

}

