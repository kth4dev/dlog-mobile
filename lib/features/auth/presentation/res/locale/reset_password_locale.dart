class ResetPasswordLocale{
  static const resetPassword = "resetPassword";
  static const newPasswordRequirement = "resetPassword_newPasswordRequirement";
  static const newPasswordRule = "resetPassword_newPasswordRule";
  static const newPassword = "resetPassword_newPassword";
  static const enterNewPassword = "resetPassword_enterNewPassword";
  static const confirmNewPassword = "resetPassword_confirmNewPassword";
  static const enterConfirmNewPassword = "resetPassword_enterConfirmNewPassword";
  static const enter = "resetPassword_enter";
  static const successful = "resetPassword_successful";

  static const Map<String, dynamic> en ={
    resetPassword : "Reset Password",
    newPasswordRequirement : "Enter your new password must:",
    newPasswordRule:"  1. be at least 8 characters\n  2. contain a letter\n  3. contain a number\n  4. not contain the word 'password'\n  5. not contain your first name or last name",
    newPassword : "New Password",
    enterNewPassword : "Enter New Password",
    confirmNewPassword : "Confirm New Password",
    enterConfirmNewPassword : "Enter Confirm New Password",
    enter : "Enter",
    successful : "Reset Password Successful",
  };

  static const Map<String, dynamic> zh = {
    resetPassword: '重设密码',
    newPasswordRequirement: '请输入您的新密码必须：',
    newPasswordRule: '  1. 至少包含8个字符\n  2. 包含一个字母\n  3. 包含一个数字\n  4. 不包含单词 \'password\'\n  5. 不包含您的名字或姓氏',
    newPassword: '新密码',
    enterNewPassword: '输入新密码',
    confirmNewPassword: '确认新密码',
    enterConfirmNewPassword: '输入确认新密码',
    enter: '输入',
    successful: '重设密码成功',
  };

  static const Map<String, dynamic> my = {
    resetPassword: 'စကားဝှက်ကို ပြန်လည်စတင်ရန်',
    newPasswordRequirement: 'သင့်ရဲ့ စကားဝှက်အသစ်ထည့်သွင်းရန် အောက်ပါအတိုင်း ဖြစ်ရမည် _ ',
    newPasswordRule: '  1.  အနည်းဆုံး ၈ လုံးရှိရမည်။\n  2. အက္ခရာရှိရမည်။\n  3. နံပါတ်ရှိရမည်။\n  4. "password"စာကြောင့်မရှိရပါ။\n  5. သင်၏ ရှေဆုံးနာမည် (သို့) နောက်ဆုံးနာမည် မပါဝင်ရပါ။',
    newPassword: 'စကားဝှက်အသစ်',
    enterNewPassword: 'စကားဝှက်အသစ် ထည့်ပါ',
    confirmNewPassword: 'စကားဝှက်အသစ် အတည်ပြုပါ',
    enterConfirmNewPassword: 'အတည်ပြုစကားဝှက်အသစ် ထည့်ပါ',
    enter: 'ထည့်ပါ',
    successful: 'အောင်မြင်ပါသည်',
  };

}