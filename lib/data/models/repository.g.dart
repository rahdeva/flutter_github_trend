// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String,
      stargazersCount: (json['stargazersCount'] as num).toInt(),
      forksCount: (json['forksCount'] as num).toInt(),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      htmlUrl: json['htmlUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'language': instance.language,
      'stargazersCount': instance.stargazersCount,
      'forksCount': instance.forksCount,
      'license': instance.license,
      'htmlUrl': instance.htmlUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatarUrl': instance.avatarUrl,
    };

_$LicenseImpl _$$LicenseImplFromJson(Map<String, dynamic> json) =>
    _$LicenseImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LicenseImplToJson(_$LicenseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
