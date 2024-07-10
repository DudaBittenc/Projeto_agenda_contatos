import "package:flutter/material.dart";

  class MaterialTheme {
    final TextTheme textTheme;

    const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281426573),
      surfaceTint: Color(4281426573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291814911),
      onPrimaryContainer: Color(4278197555),
      secondary: Color(4281426573),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291814911),
      onSecondaryContainer: Color(4278197556),
      tertiary: Color(4285485706),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293975039),
      onTertiaryContainer: Color(4280814914),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294834175),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282926414),
      outline: Color(4286150015),
      outlineVariant: Color(4291413200),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4288465915),
      primaryFixed: Color(4291814911),
      onPrimaryFixed: Color(4278197555),
      primaryFixedDim: Color(4288465915),
      onPrimaryFixedVariant: Color(4279388787),
      secondaryFixed: Color(4291814911),
      onSecondaryFixed: Color(4278197556),
      secondaryFixedDim: Color(4288465915),
      onSecondaryFixedVariant: Color(4279388787),
      tertiaryFixed: Color(4293975039),
      onTertiaryFixed: Color(4280814914),
      tertiaryFixedDim: Color(4292590073),
      onTertiaryFixedVariant: Color(4283841393),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278863471),
      surfaceTint: Color(4281426573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283005092),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278863471),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283005092),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283578220),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286998690),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834175),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282663242),
      outline: Color(4284571239),
      outlineVariant: Color(4286413187),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4288465915),
      primaryFixed: Color(4283005092),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281229194),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283005092),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281229194),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286998690),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285288583),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278199358),
      surfaceTint: Color(4281426573),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278863471),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278199358),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278863471),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281275465),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283578220),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834175),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280623915),
      outline: Color(4282663242),
      outlineVariant: Color(4282663242),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4292931071),
      primaryFixed: Color(4278863471),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202191),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278863471),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278202191),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283578220),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281999444),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288465915),
      surfaceTint: Color(4288465915),
      onPrimary: Color(4278203220),
      primaryContainer: Color(4279388787),
      onPrimaryContainer: Color(4291814911),
      secondary: Color(4288465915),
      onSecondary: Color(4278203220),
      secondaryContainer: Color(4279388787),
      onSecondaryContainer: Color(4291814911),
      tertiary: Color(4292590073),
      onTertiary: Color(4282262616),
      tertiaryContainer: Color(4283841393),
      onTertiaryContainer: Color(4293975039),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505688),
      onSurface: Color(4293321193),
      onSurfaceVariant: Color(4291413200),
      outline: Color(4287860633),
      outlineVariant: Color(4282926414),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4281426573),
      primaryFixed: Color(4291814911),
      onPrimaryFixed: Color(4278197555),
      primaryFixedDim: Color(4288465915),
      onPrimaryFixedVariant: Color(4279388787),
      secondaryFixed: Color(4291814911),
      onSecondaryFixed: Color(4278197556),
      secondaryFixedDim: Color(4288465915),
      onSecondaryFixedVariant: Color(4279388787),
      tertiaryFixed: Color(4293975039),
      onTertiaryFixed: Color(4280814914),
      tertiaryFixedDim: Color(4292590073),
      onTertiaryFixedVariant: Color(4283841393),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288794623),
      surfaceTint: Color(4288465915),
      onPrimary: Color(4278196267),
      primaryContainer: Color(4284913090),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4288794623),
      onSecondary: Color(4278196267),
      secondaryContainer: Color(4284913090),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292853245),
      onTertiary: Color(4280485436),
      tertiaryContainer: Color(4288906432),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294965759),
      onSurfaceVariant: Color(4291742164),
      outline: Color(4289044908),
      outlineVariant: Color(4286939532),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4279520117),
      primaryFixed: Color(4291814911),
      onPrimaryFixed: Color(4278194723),
      primaryFixedDim: Color(4288465915),
      onPrimaryFixedVariant: Color(4278204765),
      secondaryFixed: Color(4291814911),
      onSecondaryFixed: Color(4278194723),
      secondaryFixedDim: Color(4288465915),
      onSecondaryFixedVariant: Color(4278204766),
      tertiaryFixed: Color(4293975039),
      onTertiaryFixed: Color(4280090935),
      tertiaryFixedDim: Color(4292590073),
      onTertiaryFixedVariant: Color(4282657375),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294638335),
      surfaceTint: Color(4288465915),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288794623),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294638335),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4288794623),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965756),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292853245),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294900223),
      outline: Color(4291742164),
      outlineVariant: Color(4291742164),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4278201418),
      primaryFixed: Color(4292340223),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288794623),
      onPrimaryFixedVariant: Color(4278196267),
      secondaryFixed: Color(4292340223),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4288794623),
      onSecondaryFixedVariant: Color(4278196267),
      tertiaryFixed: Color(4294172927),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292853245),
      onTertiaryFixedVariant: Color(4280485436),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280360740),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
