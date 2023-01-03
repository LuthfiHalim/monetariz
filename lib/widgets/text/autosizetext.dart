import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:monetariz/utilities/color.dart';

class MyFontWeight {
  static FontWeight light() {
    return FontWeight.w300;
  }
  static FontWeight regular() {
    return FontWeight.w400;
  }
  static FontWeight medium() {
    return FontWeight.w500;
  }
  static FontWeight bold() {
    return FontWeight.w700;
  }
}

class MyAutoSizeText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  final int maxLines;
  final int maxFontSize;
  final int minFontSize;
  final String highlights;
  final Color highlightsColor;
  final bool caseSensitiveHighlight;
  final FontWeight? fontWeight;

  const MyAutoSizeText(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.maxLines = 1,
    this.maxFontSize = 60,
    this.minFontSize = 6,
    this.highlights = '',
    this.caseSensitiveHighlight = false,
    this.highlightsColor = CustomColor.green5EA570,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _richText(text, highlights, context);
  }

  List<TextSpan> highlightOccurrences(String source, String query) {
    if (query.isEmpty) {
      return [TextSpan(text: source)];
    }
    var matches = <Match>[];
    for (final token in query.trim().toLowerCase().split(' ')) {
      matches.addAll(token.allMatches(source.toLowerCase()));
    }
    if (matches.isEmpty) {
      return [TextSpan(text: source)];
    }
    matches.sort((a, b) => a.start.compareTo(b.start));
    int lastMatchEnd = 0;
    final List<TextSpan> children = [];
    for (final match in matches) {
      if (match.end <= lastMatchEnd) {
        // already matched -> ignore
      } else if (match.start <= lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.end),
          style: TextStyle(fontWeight: FontWeight.bold, color: highlightsColor),
        ));
      } else if (match.start > lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.start),
        ));
        children.add(TextSpan(
          text: source.substring(match.start, match.end),
          style: TextStyle(fontWeight: FontWeight.bold, color: highlightsColor),
        ));
      }
      if (lastMatchEnd < match.end) {
        lastMatchEnd = match.end;
      }
    }
    if (lastMatchEnd < source.length) {
      children.add(TextSpan(
        text: source.substring(lastMatchEnd, source.length),
      ));
    }
    return children;
  }

  AutoSizeText _richText(String text, String highlight, BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(children: highlightOccurrences(text, highlight)),
      textAlign: textAlign,
      maxLines: maxLines,
      maxFontSize: maxFontSize.toDouble(),
      minFontSize: minFontSize.toDouble(),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: color,
            fontSize: maxFontSize.toDouble(),
            fontWeight: fontWeight ?? MyFontWeight.regular(),
          ),
    );
  }
}