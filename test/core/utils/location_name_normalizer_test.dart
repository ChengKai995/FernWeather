import "package:flutter_test/flutter_test.dart";
import "package:fern_quiz/core/utils/location_name_normalizer.dart";

void main() {
  group("normalizeCwaLocationName", () {
    test("empty string returns empty string", () {
      expect(normalizeCwaLocationName(""), "");
    });

    test("whitespace only returns empty string after trim", () {
      expect(normalizeCwaLocationName("   "), "");
    });

    test("leading and trailing whitespace is trimmed", () {
      expect(normalizeCwaLocationName("  臺北市  "), "臺北市");
    });

    test("replaces simplified tai character with traditional", () {
      expect(normalizeCwaLocationName("台北市"), "臺北市");
    });

    test("traditional tai character is unchanged", () {
      expect(normalizeCwaLocationName("臺北市"), "臺北市");
    });

    test("handles whitespace and tai replacement at the same time", () {
      expect(normalizeCwaLocationName("  台南市  "), "臺南市");
    });
  });
}
