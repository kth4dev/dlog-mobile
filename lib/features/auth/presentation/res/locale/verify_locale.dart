class VerifyLocale{
  static const verifyCode = "verifyCode";
  static const enterCodePrompt = "verify_enterCodePrompt";
  static const resendCodeIn = "verify_resendCodeIn";

  static const Map<String, dynamic> en = {
    verifyCode : "Verify Code",
    enterCodePrompt :"Please enter 6-digit code sent to +959123456789.",
    resendCodeIn :  "Resend code again in ",
  };

  static const Map<String, dynamic> zh = {
    verifyCode: '验证代码',
    enterCodePrompt: '请输入发送到 +959123456789 的6位验证码。',
    resendCodeIn: '再次发送验证码，剩余时间 ',
  };

  static const Map<String, dynamic> my = {
    verifyCode: 'အတည်ပြုကုဒ်',
    enterCodePrompt: '+959123456789 သို့ ပို့ထားသည့် ဂဏန်း ၆လုံးကို ထည့်သွင်းပါ။',
    resendCodeIn: 'ကုဒ်ထပ်မံ ပေးပို့ပါ ',
  };
}