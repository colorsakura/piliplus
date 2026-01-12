# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

PiliPlus is a third-party BiliBili client built with Flutter, supporting Android, iOS, and desktop platforms (Windows, Linux). It's a community-maintained fork with extensive features for video playback, live streaming, social interactions, and content management.

**Current Version**: 1.1.6+1
**Flutter SDK**: 3.38.6 (managed via FVM - see `.fvmrc`)
**Dart SDK**: >=3.10.0

## Development Commands

```bash
# Install dependencies
flutter pub get

# Run on specific platforms
flutter run -d android         # Android
flutter run -d ios             # iOS (requires macOS)
flutter run -d windows         # Windows
flutter run -d linux           # Linux

# Build for release
flutter build apk              # Android APK
flutter build appbundle        # Android App Bundle
flutter build ios              # iOS (requires macOS)
flutter build windows          # Windows executable
flutter build linux            # Linux executable

# Code quality
flutter analyze                # Run static analysis
flutter format .               # Format code
flutter test                   # Run tests

# FVM (Flutter Version Management)
fvm flutter pub get            # Use FVM to run commands
```

## Architecture Overview

### State Management Pattern
- **GetX**: Primary state management solution (custom fork at version 4.7.2)
- Controllers extend `GetxController` for pages/features
- Services extend `GetxService` for app-wide singletons
- Reactive variables use `.obs` pattern
- Dependency injection via `Get.put()`, `Get.lazyPut()`, `Get.find()`

### Directory Structure

```
lib/
├── common/              # Shared widgets, constants, UI components (86+ files)
│   ├── widgets/         # Reusable UI components
│   ├── skeleton/        # Loading skeletons
│   └── constants.dart   # Global constants
├── http/                # API layer with Dio-based HTTP client
│   ├── init.dart        # HTTP client initialization with interceptors
│   ├── api.dart         # API endpoint definitions
│   └── [feature].dart   # Feature-specific API calls
├── models/              # Data models organized by feature
│   ├── common/          # Shared enums and types
│   ├── [feature]/       # Feature-specific models
│   └── user/            # User-related models
├── pages/               # UI pages organized by feature (338+ files)
│   ├── [feature]/
│   │   ├── controller.dart    # GetX controller
│   │   ├── view.dart          # UI widget
│   │   └── widgets/           # Feature-specific widgets
├── services/            # App-wide services
│   ├── account_service.dart        # Account management
│   ├── download/                  # Download management
│   ├── audio_handler.dart          # Audio playback
│   └── service_locator.dart        # DI setup
├── router/              # Navigation
│   └── app_pages.dart   # All route definitions (240+ routes)
├── utils/               # Utilities and helpers
│   ├── accounts/        # Multi-account management system
│   ├── storage_pref.dart # Hive-based preference storage
│   ├── extension/       # Extension methods
│   └── [utils].dart     # Various utilities
├── plugin/              # Custom plugins
│   └── pl_player/       # Custom video player (media_kit-based)
├── grpc/                # gRPC definitions (108 files, [wip])
└── main.dart            # Application entry point
```

### Multi-Account Architecture

The app uses a sophisticated multi-account system via `utils/accounts/`:

- **AccountManager** (`account_manager/account_mgr.dart`): Core account management
- **Account** model (`account.dart`): Per-account data isolation
- **Cookie management**: Custom cookie jar adapter for per-account cookies
- **HTTP integration**: AccountManager is a Dio interceptor that adds cookies to requests
- Use `Options(extra: {'account': account})` to specify account for API calls

### Video Player Architecture

- **Base**: `media_kit` (custom fork at version 1.1.11/1.2.5)
- **Custom layer**: `plugin/pl_player/` wraps media_kit with app-specific features
- Features: hardware acceleration, shaders (Anime4K), custom controls, gesture controls
- Danmaku: `canvas_danmaku` (custom fork) for bullet comments

### HTTP Layer

- **Client**: Dio with custom adapters per platform
- **Android**: `NativeAdapter` (Cronet-based HTTP/2)
- **Other platforms**: `IOHttpClientAdapter` or `Http2Adapter`
- Features:
  - Auto compression (gzip, brotli)
  - Retry interceptor (`retry_interceptor.dart`)
  - Account management via interceptor
  - System proxy support

### Storage

- **Preferences**: `utils/storage_pref.dart` wraps Hive for typed access
- **Account data**: Isolated per account
- **WebDAV**: Backup/restore settings via WebDAV client

## Code Conventions

### Import Style
- **Always use package imports** (enforced by linter): `package:PiliPlus/...`
- No relative imports with `..` or `.`
- Enforced by `always_use_package_imports` rule

### Linting Rules
Key enabled rules from `analysis_options.yaml`:
- `always_declare_return_types` - All functions must have return types
- `prefer_const_constructors` - Use const where possible
- `avoid_unnecessary_containers` - Avoid wrapper widgets
- `use_colored_box` / `use_decorated_box` - Prefer over Container
- `avoid_print` - Use proper logging
- `prefer_single_quotes` - Not enabled (using double quotes)
- Trailing commas: **preserved**

### Naming
- Classes/Types: `PascalCase`
- Variables/Functions: `camelCase`
- Constants: `UPPER_SNAKE_CASE`
- Private members: `_prefix`
- Controllers: `*Controller`
- Services: `*Service`
- Views/Pages: `*Page` or `*View`

### Page/Feature Structure
```dart
// pages/feature_name/controller.dart
class FeatureNameController extends GetxController {
  // State
  final RxBool loading = false.obs;

  // Logic methods
  void fetchData() { }

  @override
  void onInit() {
    super.onInit();
    // Initialize
  }
}

// pages/feature_name/view.dart
class FeatureNamePage extends StatelessWidget {
  final controller = Get.put(FeatureNameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Obx for reactive updates
      body: Obx(() => Text('State: ${controller.loading.value}')),
    );
  }
}
```

## Key Dependencies

### Custom Forks (check `pubspec.yaml` for Git URLs)
- **GetX**: Custom fork at version 4.7.2
- **media_kit**: Custom fork at version 1.2.5 (player + video + libs)
- **canvas_danmaku**: Custom fork for danmaku rendering
- **extended_nested_scroll_view**: Custom fork
- **window_manager**: Custom fork
- **material_design_icons_flutter**: Custom fork
- **chat_bottom_container**: Custom fork
- **file_picker**: Custom fork
- **super_sliver_list**: Custom fork
- **flutter_sortable_wrap**: Custom fork

### Standard Dependencies
- **Networking**: dio, dio_http2_adapter, native_dio_adapter, cookie_jar
- **Storage**: hive, hive_flutter, path_provider
- **UI**: cached_network_image, flutter_html, waterfall_flow, super_sliver_list
- **Platform**: flutter_inappwebview, permission_handler, device_info_plus, window_manager, tray_manager
- **Media**: audio_service, media_kit, canvas_danmaku
- **Features**: dynamic_color, sponsor_block, webdav_client, dlna_dart

## Important Implementation Notes

### API Integration
- BiliBili uses both REST API and gRPC (in progress)
- Custom app keys and headers required
- Sign generation for API requests (`utils/wbi_sign.dart`, `utils/app_sign.dart`)
- Buvid activation required for proper API access (`Request.buvidActive()`)

### Platform-Specific Code
- Use `utils/platform_utils.dart` for platform checks
- Desktop-specific: window management, system tray, file pickers
- Mobile-specific: gesture controls, PIP mode

### Live Streaming
- TCP-based protocol for live messages (see `tcp/` directory)
- Brotli compression for live data
- Real-time danmaku via WebSocket

### gRPC Migration
- Protocol definitions in `lib/grpc/bilibili/` (currently excluded from analysis)
- Marked as [wip] - work in progress
- Analysis disabled for `lib/grpc/bilibili/**` in `analysis_options.yaml`

## Testing

No specific test commands found in the codebase. Use standard Flutter testing:
```bash
flutter test              # Run all tests
flutter test test/name_test.dart  # Run specific test file
```

## Build Configuration

Environment variables for builds:
- `pili.code` - Version code
- `pili.name` - Version name
- `pili.time` - Build time
- `pili.hash` - Commit hash

See `build_config.dart` for build-time configuration.

## Common Tasks

### Adding a New Feature Page
1. Create `lib/pages/feature_name/controller.dart` extending `GetxController`
2. Create `lib/pages/feature_name/view.dart` with the UI
3. Add route in `lib/router/app_pages.dart`
4. Add API methods in `lib/http/` if needed
5. Add models in `lib/models/` if needed

### Making API Requests
```dart
import 'package:PiliPlus/http/init.dart';

// Simple GET
final response = await Request().get(Api.someEndpoint);

// With account
final response = await Request().get(
  Api.someEndpoint,
  options: Options(extra: {'account': myAccount}),
);
```

### Accessing Current User
```dart
import 'package:PiliPlus/utils/accounts.dart';
import 'package:PiliPlus/utils/storage_pref.dart';

// Get main account
final mainAccount = Accounts.main;

// Check if logged in
if (Accounts.main.isLogin) {
  // User is logged in
}

// Get cached user info
final userInfo = Pref.userInfoCache;
```

### Using Services
```dart
import 'package:PiliPlus/services/service_locator.dart';

// Get registered service
final accountService = serviceLocator.get<IAccountService>();
final downloadService = serviceLocator.get<IDownloadService>();
```

## Related Projects

- **Original**: [guozhigq/pilipala](https://github.com/guozhigq/pilipala)
- **Upstream**: [orz12/PiliPalaX](https://github.com/orz12/PiliPalaX)
- **API Documentation**: [SocialSisterYi/bilibili-API-collect](https://github.com/SocialSisterYi/bilibili-API-collect)
- **Player Base**: [media-kit](https://github.com/media-kit/media-kit)
