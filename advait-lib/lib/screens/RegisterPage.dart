import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_meal/screens/CompleteProfilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firebase = FirebaseAuth.instance;

class AppAssets {
  static String kUser = 'assets/images/user.svg';
  static String kMail = 'assets/images/mail.svg';
  static String kLock = 'assets/images/lock.svg';
  static String kFacebook = 'assets/images/facebook.svg';
  static String kGoogle = 'assets/images/google.svg';
  static String kApple = 'assets/images/apple.svg';
}

class AppColors {
  static Color kPrimary = const Color(0xFF3DB9FF);
  static Color kLightWhite = const Color(0xFFFDFDFD);
  static Color kLavender = const Color(0xFFEBD9EF);
  static Color kPeriwinkle = const Color(0xFFE0E9FF);
  static Color kLightWhite2 = const Color(0xFFF7F7F7);
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isRemember = false;
  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      setState(() => isLoading = true);

      try {
        // Create user with Firebase Authentication
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
          email: _mailController.text,
          password: _passwordController.text,
        );

        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredentials.user!.uid)
            .set({
          'username': _usernameController.text,
          'email': _mailController.text,
        });

        if (mounted) {
          // On successful registration, navigate to complete profile page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CompleteProfilePage(),
            ),
          );
        }
      } on FirebaseAuthException catch (error) {
        if (mounted) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error.message ?? 'Authentication failed.'),
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Registration failed: ${e.toString()}')),
          );
        }
      } finally {
        if (mounted) {
          setState(() => isLoading = false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLightWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 56),
                const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Welcome back! Please enter your details',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 68),
                AuthField(
                  iconColor: const Color(0xFFFFEADB),
                  controller: _usernameController,
                  keyboardType: TextInputType.name,
                  icon: AppAssets.kUser,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Full Name';
                    }
                    if (value.contains(RegExp(r'[0-9]'))) {
                      return 'Full Name should not contain digits';
                    }
                    return null;
                  },
                  hintText: 'Full Name',
                ),
                const SizedBox(height: 16),
                AuthField(
                  iconColor: AppColors.kLavender,
                  controller: _mailController,
                  keyboardType: TextInputType.emailAddress,
                  icon: AppAssets.kMail,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    if (!_isEmail(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  hintText: 'Email address',
                ),
                const SizedBox(height: 16),
                AuthField(
                  iconColor: AppColors.kPeriwinkle,
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  icon: AppAssets.kLock,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (!_isPasswordStrong(value)) {
                      return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit.';
                    }
                    return null;
                  },
                  hintText: 'Password',
                ),
                const SizedBox(height: 14),
                RememberMeCheckbox(
                  onRememberChanged: (value) {
                    setState(() => isRemember = value);
                  },
                ),
                const SizedBox(height: 95),
                if (isLoading)
                  const CircularProgressIndicator()
                else
                  PrimaryButton(
                    onTap: _handleSubmit,
                    text: 'Sign Up',
                  ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Text(
                      'Already have an account',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    PrimaryButton(
                      onTap: () => Navigator.pop(context),
                      text: 'Sign In',
                      height: 30,
                      width: 70,
                      fontColor: AppColors.kPrimary,
                      btnColor: AppColors.kLightWhite2,
                      fontSize: 12,
                    )
                  ],
                ),
                const SizedBox(height: 56),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      onTap: () => _handleSocialSignIn('Google'),
                      icon: AppAssets.kGoogle,
                    ),
                    const SizedBox(width: 31),
                    SocialButton(
                      onTap: () => _handleSocialSignIn('Facebook'),
                      icon: AppAssets.kFacebook,
                    ),
                    const SizedBox(width: 31),
                    SocialButton(
                      onTap: () => _handleSocialSignIn('Apple'),
                      icon: AppAssets.kApple,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSocialSignIn(String provider) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$provider sign-in not implemented')),
    );
  }

  bool _isPasswordStrong(String password) {
    return password.length >= 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }
}

bool _isEmail(String email) {
  return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
      .hasMatch(email);
}

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final String icon;
  final Color iconColor;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool isPassword;

  const AuthField({
    super.key,
    required this.iconColor,
    required this.controller,
    required this.icon,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.isPassword = false,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      style: const TextStyle(fontSize: 14, color: Colors.black),
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword && _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: AppColors.kLightWhite2,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        errorMaxLines: 3,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 35,
            width: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.iconColor,
            ),
            child: SvgPicture.asset(widget.icon),
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() => _obscureText = !_obscureText);
                },
              )
            : null,
      ),
    );
  }
}

class RememberMeCheckbox extends StatefulWidget {
  final void Function(bool) onRememberChanged;
  const RememberMeCheckbox({super.key, required this.onRememberChanged});

  @override
  State<RememberMeCheckbox> createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => isRemember = !isRemember);
        widget.onRememberChanged(isRemember);
      },
      child: Row(
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              color: isRemember ? AppColors.kPrimary : null,
              borderRadius: BorderRadius.circular(6),
              border: !isRemember
                  ? Border.all(color: const Color(0xFFB6B6B8))
                  : null,
            ),
            child: isRemember
                ? Icon(Icons.done, size: 14, color: AppColors.kLightWhite)
                : null,
          ),
          const SizedBox(width: 10),
          const Text(
            'Remember',
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? btnColor;
  final Color? fontColor;

  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
    this.btnColor,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.kPrimary,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: fontColor ?? AppColors.kLightWhite,
            fontSize: fontSize ?? 20,
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final Color? iconColor;

  const SocialButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 59,
        width: 59,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kLightWhite,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 32,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(0.25),
            )
          ],
        ),
        child: SvgPicture.asset(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
