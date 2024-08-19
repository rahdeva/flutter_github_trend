import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String name,
    required String description,
    required Owner owner,
    required String language,
    required int stargazersCount,
    required int forksCount,
    License? license,
    String? htmlUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    required String avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class License with _$License {
  const factory License({
    required String name,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
