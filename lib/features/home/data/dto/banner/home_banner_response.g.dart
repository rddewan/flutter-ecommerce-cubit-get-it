// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeBannerResponse _$$_HomeBannerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HomeBannerResponse(
      id: json['id'] as int,
      bannerId: json['banner_id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isActive: json['is_active'] as String,
    );

Map<String, dynamic> _$$_HomeBannerResponseToJson(
        _$_HomeBannerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner_id': instance.bannerId,
      'name': instance.name,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'is_active': instance.isActive,
    };
