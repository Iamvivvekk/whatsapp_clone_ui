import 'package:flutter/material.dart';

class MessageTextFieldArea extends StatelessWidget {
  const MessageTextFieldArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          child: TextField(
            controller: controller,
            maxLines: 3,
            minLines: 1,
            style: TextStyle(color: Theme.of(context).colorScheme.tertiary)
                .copyWith(fontWeight: FontWeight.w500),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.emoji_emotions),
              prefixIconColor: const Color(0xFF8798A0),
              border: _messageTextFieldBorder(context),
              focusedBorder: _messageTextFieldBorder(context),
              enabledBorder: _messageTextFieldBorder(context),
              filled: true,
              fillColor: const Color(0xCFFFFFFF),
              hintText: 'Message',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              hintStyle: const TextStyle(),
            ),
          ),
        )),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            controller.clear();
          },
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: const Icon(
              Icons.send,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _messageTextFieldBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide.none,
    );
  }
}
