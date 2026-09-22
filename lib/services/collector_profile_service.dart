import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class CollectorProfile {
  final String installationId;
  final String collectorName;
  final String universityCode;
  final String campaignId;
  final String campaignName;
  final String municipality;
  final String department;
  final String country;

  const CollectorProfile({
    required this.installationId,
    required this.collectorName,
    required this.universityCode,
    required this.campaignId,
    required this.campaignName,
    required this.municipality,
    required this.department,
    required this.country,
  });
}

class CollectorProfileService {
  static final ValueNotifier<CollectorProfile?> profileNotifier =
      ValueNotifier<CollectorProfile?>(null);
  static const _installationIdKey = 'installationId';
  static const _collectorNameKey = 'collectorName';
  static const _universityCodeKey = 'collectorUniversityCode';
  static const defaultCampaignId = 'girardot-recoleccion-vial-2026';
  static const defaultCampaignName = 'Girardot - Recolección vial 2026';

  Future<CollectorProfile> load() async {
    final preferences = await SharedPreferences.getInstance();
    final installationId = preferences.getString(_installationIdKey) ?? const Uuid().v4();
    await preferences.setString(_installationIdKey, installationId);
    final profile = CollectorProfile(
      installationId: installationId,
      collectorName: preferences.getString(_collectorNameKey) ?? '',
      universityCode: preferences.getString(_universityCodeKey) ?? '',
      campaignId: defaultCampaignId,
      campaignName: defaultCampaignName,
      municipality: 'Girardot',
      department: 'Cundinamarca',
      country: 'Colombia',
    );
    profileNotifier.value = profile;
    return profile;
  }

  Future<CollectorProfile> saveCollector({required String name, required String code}) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_collectorNameKey, name.trim());
    await preferences.setString(_universityCodeKey, code.trim());
    return load();
  }
}