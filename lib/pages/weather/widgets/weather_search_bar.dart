import "package:flutter/material.dart";

class WeatherSearchBar extends StatelessWidget {
  const WeatherSearchBar({
    super.key,
    required this.controller,
    required this.onSubmit,
    this.onChanged,
  });

  final TextEditingController controller;
  final VoidCallback onSubmit;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: ValueListenableBuilder<TextEditingValue>(
        valueListenable: controller,
        builder: (context, value, _) {
          final hasText = value.text.isNotEmpty;
          final canSubmit = value.text.trim().isNotEmpty;
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (_) => onSubmit(),
                  decoration: InputDecoration(
                    hintText: "請輸入城市名稱（例如：臺北市）",
                    border: const OutlineInputBorder(),
                    isDense: true,
                    suffixIcon: hasText
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              controller.clear();
                              onChanged?.call("");
                            },
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: canSubmit ? onSubmit : null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  child: const Text("確認"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
