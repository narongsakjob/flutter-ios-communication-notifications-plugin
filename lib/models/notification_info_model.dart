// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:typed_data';

class NotificationInfo {
  final String senderName;
  final Uint8List imageBytes;
  final Uint8List? bannerBytes;
  final String content;
  final String value;
  final String? subtitle;
  final Function(String payload)? onPressed;
  NotificationInfo({
    required this.senderName,
    required this.imageBytes,
    required this.content,
    required this.value,
    this.bannerBytes,
    this.subtitle,
    this.onPressed,
  });

  NotificationInfo copyWith({
    String? senderName,
    Uint8List? imageBytes,
    Uint8List? bannerBytes,
    String? content,
    String? value,
    String? subtitle,
    Function(String payload)? onPressed,
  }) {
    return NotificationInfo(
      senderName: senderName ?? this.senderName,
      imageBytes: imageBytes ?? this.imageBytes,
      bannerBytes: bannerBytes ?? this.bannerBytes,
      content: content ?? this.content,
      value: value ?? this.value,
      subtitle: subtitle ?? this.subtitle,
      onPressed: onPressed ?? this.onPressed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'senderName': senderName,
      'imageBytes': imageBytes,
      'bannerBytes': bannerBytes,
      'content': content,
      'value': value,
      'subtitle': subtitle,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'NotificationInfo(senderName: $senderName, imageBytes: $imageBytes, bannerBytes: $bannerBytes, content: $content, value: $value, subtitle: $subtitle, onPressed: $onPressed)';
  }

  @override
  bool operator ==(covariant NotificationInfo other) {
    if (identical(this, other)) return true;

    return other.senderName == senderName && other.imageBytes == imageBytes && other.bannerBytes == bannerBytes && other.content == content && other.value == value && other.onPressed == onPressed;
  }

  @override
  int get hashCode {
    return senderName.hashCode ^ imageBytes.hashCode ^ bannerBytes.hashCode ^ content.hashCode ^ value.hashCode ^ onPressed.hashCode;
  }
}
