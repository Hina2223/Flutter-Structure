import 'constants_export.dart';

class AppThemeData {
  AppThemeData._();

  static const Color _backgroundColor = Colors.white;
  static const Color _lightBackgroundColor = Color(0xffF9FAFB);

  static const Color _primary = Color(0xff4A1F4D);
  static const Color _secondary = Color(0x804a1f4d);

  static const Color _error = Color(0xffEC5454);

  static const Color lightGreyColor = Color(0xffA7A7A7);
  static const Color darkGreyColor = Color(0xff6B7280);

  static ThemeData lightThemeData = themeData(_lightColorScheme);

  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
      fontFamily: AppFontFamily.roboto,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      splashColor: Colors.white.withOpacity(0.2),
      highlightColor: Colors.white.withOpacity(0.2),
      unselectedWidgetColor: Colors.grey.shade300,
      dividerColor: lightGreyColor.withOpacity(0.5),
      hintColor: lightGreyColor,
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: AppColor.black,
        labelStyle: TextStyle(
          fontSize: Sizes.s18,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: Sizes.s18,
          fontWeight: FontWeight.w400,
          color: AppColor.black,
        ),
        //indicatorColor: AppColor.darkPrimary,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primary,
        selectionHandleColor: colorScheme.primary,
        selectionColor: colorScheme.primary.withOpacity(0.2),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: colorScheme.background,
        iconTheme: IconThemeData(color: colorScheme.primary),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: lightGreyColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.background,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 0,
        modalElevation: 0,
        backgroundColor: colorScheme.background,
        modalBackgroundColor: colorScheme.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }

  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: _primary,
    onPrimary: _primary,
    primaryContainer: _backgroundColor,
    secondary: _secondary,
    onSecondary: _secondary,
    secondaryContainer: _lightBackgroundColor,
    background: _backgroundColor,
    onBackground: _backgroundColor,
    error: _error,
    onError: _error,
    surface: _backgroundColor,
    onSurface: _primary,
    brightness: Brightness.light,
  );
}
