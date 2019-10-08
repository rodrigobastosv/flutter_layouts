import 'package:flutter_layouts/layouts/nubank/nubank_layout.dart';
import 'package:flutter_layouts/layouts/whatsapp/whatsapp_layout.dart';

import 'layouts/gmail/gmail_layout.dart';
import 'layouts/telegram/telegram_layout.dart';

final layouts = [
  {
    'icon': 'assets/nu-icon.png',
    'layout': NubankLayout()
  },
  {
    'icon': 'assets/logo_wa.webp',
    'layout': WhatsAppLayout()
  },
  {
    'icon': 'assets/logo_telegram.jpg',
    'layout': TelegramLayout()
  },
  {
    'icon': 'assets/gmail_logo.jpeg',
    'layout': GmailLayout()
  },
];