class ForgetPasswordLocale {
  static const forgetPassword = "forgetPassword";
  static const passwordRequirement = "forgetPassword_passwordRequirement";
  static const passwordRule = "forgetPassword_passwordRule";
  static const resetInputPrompt = "forgetPassword_resetInputPrompt";
  static const passwordChangeRequirement = "forgetPassword_passwordChangeRequirement";
  static const phoneNoOrEmail = "forgetPassword_phoneNoOrEmail";
  static const enterPhoneNoOrEmail = "forgetPassword_enterPhoneNoOrEmail";
  static const enter = "enter";

  static const Map<String, dynamic> en = {
    forgetPassword: "Forget Password",
    passwordRequirement: "Remember your password must:",
    passwordRule: "  1. be at least 8 characters\n  2. contain a letter\n  3. contain a number\n  4. not contain the word 'password'\n  5. not contain your first name or last name",
    resetInputPrompt: "Please enter your phone no or email that you want to reset the password.",
    passwordChangeRequirement: "Required to change your password*",
    phoneNoOrEmail: "Phone no or email",
    enterPhoneNoOrEmail: "Enter phone no or email",
    enter: "Enter",
  };

  static const Map<String, dynamic> zh = {
    forgetPassword: '忘记密码',
    passwordRequirement: '请记住您的密码必须：',
    passwordRule: '  1. 至少包含8个字符\n  2. 包含一个字母\n  3. 包含一个数字\n  4. 不包含单词 \'password\'\n  5. 不包含您的名字或姓氏',
    resetInputPrompt: '请输入您要重置密码的电话号码或电子邮件。',
    passwordChangeRequirement: '需要更改您的密码*',
    phoneNoOrEmail: '电话号码或电子邮件',
    enterPhoneNoOrEmail: '输入电话号码或电子邮件',
    enter: '输入',
  };

  static const Map<String, dynamic> my = {
    forgetPassword: 'စကားဝှက် မေ့နေပါ သလား',
    passwordRequirement: 'သင့်စကားဝှက်ကို အောက်ပါအတိုင်း ထားပါ _',
    passwordRule: '  1.  အနည်းဆုံး ၈ လုံးရှိရမည်။\n  2. အက္ခရာရှိရမည်။\n  3. နံပါတ်ရှိရမည်။\n  4. "password"စာကြောင့်မရှိရပါ။\n  5. သင်၏ ရှေဆုံးနာမည် (သို့) နောက်ဆုံးနာမည် မပါဝင်ရပါ။',
    resetInputPrompt: 'ကျေးဇူးပြု၍ သင့်စကားဝှက်ကို ထပ်မံသိမ်းရန် သင်၏ဖုန်းနံပါတ် (သို့) အီးမေးလိပ်စာကို ထည့်သွင်းပါ။',
    passwordChangeRequirement: 'သင့်စကားဝှက်ကို ပြောင်းလဲရန် လိုအပ်ပါသည်*။',
    phoneNoOrEmail: 'ဖုန်းနံပါတ် (သို့) အီးမေးလိပ်စာ',
    enterPhoneNoOrEmail: 'ဖုန်းနံပါတ် (သို့) အီးမေးလိပ်စာ ထည့်ပါ',
    enter: 'ထည့်ပါ',
  };
}
