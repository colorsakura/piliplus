# PiliPlus Project Context

## Project Overview

PiliPlus is a third-party BiliBili client developed using Flutter. It's an actively maintained fork of the original PiliPala project, featuring extensive functionality for video playback, interaction, and content management across multiple platforms. The project is maintained by the community and provides a comprehensive alternative to the official BiliBili app with additional features and customization options.

**Current Version**: 1.1.6+1  
**Flutter SDK**: 3.38.4  
**Dart SDK**: >=3.10.0

### Key Features

#### Core Functionality
- **Multi-platform support**: Android, iOS, Pad, Windows, Linux
- **Video playback**: Advanced player with DLNA casting, offline caching, high-quality playback
- **Live streaming**: Live room support with real-time danmaku
- **Dynamic feed**: Full dynamic feed management with interactions
- **Comments & replies**: Comprehensive comment system with nested replies
- **User management**: Profile management, follow/unfollow, multiple account support

#### Advanced Features
- **DLNA casting**: Cast videos to compatible devices
- **Offline caching**: Download and play videos offline
- **SponsorBlock integration**: Skip sponsored segments automatically
- **AI translation**: AI-powered audio translation features
- **Danmaku (Bullet Comments)**: High-quality danmaku support with advanced features
  - Interactive danmaku (tap to pause, like, copy, report on mobile)
  - Advanced danmaku rendering
  - Member-colored danmaku
  - Merged danmaku display
- **WebDAV backup/restore**: Backup and restore settings via WebDAV
- **Picture-in-Picture (PIP)**: Play videos in picture-in-picture mode
- **Super resolution**: Anime4K shader-based upscaling
- **High-energy progress bar**: Visual indicators for engaging video segments
- **Video notes**: Take and save notes with timestamps
- **Live Photo**: Generate Live Photos from video segments

#### Player Features
- Gesture controls (double-tap seek, swipe for brightness/volume)
- Multiple playback speeds with long-press 2x speed
- Hardware acceleration support
- Quality selection (video/audio)
- Subtitle support with size adjustment
- Memory playback position
- Skip intro/outro for episodes
- Full playback controls and customization
- Video aspect ratio options

#### Social Features
- Rich text editing in comments/dynamics (with emoji and @mentions)
- Dynamic topics and hashtags
- Share videos/episodes/dynamics/articles/live to messages
- Create/edit/delete favorite folders
- Later watch list with categories
- Watch history with search
- Block list management
- Message system with image support
- Voting in dynamics

### Architecture

The project follows the GetX state management pattern with a clear separation of concerns:

#### Directory Structure

- **`common/`**: Constants, utilities, and reusable widgets (86+ files)
  - UI components, themes, constants
  - Widgets like toast, popup menus, custom dialogs

- **`http/`**: API implementations, interceptors, and request handling (28 files)
  - Dio-based HTTP client setup
  - API endpoint definitions
  - Request/response interceptors

- **`models/`**: Legacy data models (83 files)
  - Older API response models

- **`models_new/`**: Refactored data models organized by feature
  - Organized into feature-based directories (account, video, dynamic, live, etc.)
  - Each feature contains specific model files (data.dart, list.dart, etc.)

- **`grpc/`**: gRPC protocol buffer definitions (108 files)
  - Bilibili gRPC service definitions
  - Currently marked as [wip] in refactoring status

- **`pages/`**: UI components organized by feature (338+ files)
  - Each feature typically has:
    - `controller.dart`: GetX controller for state management
    - `view.dart`: UI widget
    - `widgets/`: Feature-specific widgets
  - Major features: video, live, dynamics, member, search, settings, etc.

- **`services/`**: Global services for app-wide functionality
  - `account_service.dart`: Account management and authentication
  - `download_service.dart`: Download management
  - `audio_handler.dart`: Audio playback handling
  - `service_locator.dart`: Service dependency injection

- **`router/`**: Navigation and routing configuration
  - `app_pages.dart`: All route definitions using GetX routing

- **`utils/`**: Utility functions, storage, and helper classes
  - `storage_pref.dart`: Hive-based preference storage
  - `accounts/`: Multi-account management system
  - `extension/`: Extension methods for common types
  - Various utility helpers (video, danmaku, theme, etc.)

- **`plugin/`**: Custom player and third-party integrations
  - `pl_player/`: Custom video player implementation
    - Uses media_kit as the underlying player
    - Custom controls, gestures, and features

- **`tcp/`**: TCP-based protocols (e.g., live streaming)

## Building and Running

### Prerequisites

- **Flutter SDK**: 3.38.4 (managed via FVM)
- **Dart SDK**: >=3.10.0
- **Android SDK**: Required for Android builds
- **iOS SDK**: Required for iOS builds (macOS only)
- **Development tools**: Required for Windows/Linux desktop builds

### Setup and Installation

1. Clone the repository
2. Ensure Flutter is properly configured: `flutter doctor`
3. Install dependencies: `flutter pub get`
4. For FVM users: The project uses FVM for Flutter version management

### Development Commands

```bash
# Get dependencies
flutter pub get

# Run on different platforms
flutter run                    # Run on default device
flutter run -d android         # Run on Android
flutter run -d ios             # Run on iOS
flutter run -d windows         # Run on Windows
flutter run -d linux           # Run on Linux

# Build for different platforms
flutter build apk              # Build Android APK
flutter build appbundle        # Build Android App Bundle
flutter build ios              # Build iOS
flutter build windows          # Build Windows executable
flutter build linux            # Build Linux executable

# Code analysis and testing
flutter analyze                # Analyze code
flutter test                   # Run tests
flutter format .               # Format code
```

### Build Configuration

The project uses environment variables for build configuration:

- `pili.code` - Version code
- `pili.name` - Version name
- `pili.time` - Build time
- `pili.hash` - Commit hash

### Key Dependencies

#### State Management & Navigation
- **GetX**: Custom fork from GitHub (version 4.7.2)
- Uses GetX for routing, state management, and dependency injection

#### Networking
- **Dio**: ^5.7.0 - HTTP client
- **dio_http2_adapter**: HTTP/2 support
- **native_dio_adapter**: Native platform adapters
- **cookie_jar**: Cookie management

#### Video Playback
- **media_kit**: Custom fork from GitHub (version 1.2.5)
- **media_kit_video**: Video rendering
- **media_kit_libs_video**: Platform-specific video libraries
- **canvas_danmaku**: Custom fork for danmaku rendering

#### Storage
- **Hive**: ^2.2.3 - Local key-value storage
- **hive_flutter**: Flutter integration for Hive
- **path_provider**: File system paths

#### UI Components
- **cached_network_image**: Image caching
- **flutter_html**: HTML rendering
- **waterfall_flow**: Waterfall layout
- **super_sliver_list**: Advanced list widgets
- **material_design_icons_flutter**: Custom fork for Material icons
- **font_awesome_flutter**: Font Awesome icons

#### Platform Features
- **flutter_inappwebview**: WebView support
- **permission_handler**: Platform-specific permission handling
- **device_info_plus**: Device information
- **window_manager**: Custom fork for desktop window management
- **tray_manager**: System tray support (desktop)
- **audio_service**: Media notification support

#### Other Notable Dependencies
- **dynamic_color**: Material 3 dynamic color theming
- **flex_seed_scheme**: Color scheme generation
- **sponsor_block**: SponsorBlock integration (custom implementation)
- **webdav_client**: WebDAV client for backup/restore
- **dlna_dart**: DLNA casting support

## Development Conventions

### Code Style

The project follows standard Dart/Flutter conventions with strict linting:

- **Indentation**: 2 spaces
- **Trailing commas**: Preserved
- **Import style**: Package imports only (no relative imports)
- **Linting**: Comprehensive rules in `analysis_options.yaml`
  - Always declare return types
  - Prefer const constructors
  - Avoid unnecessary containers
  - And many more strict rules

### State Management

- **GetX Controllers**: Extend `GetxController` for page/feature state
- **GetX Services**: Extend `GetxService` for app-wide services
- **Reactive Variables**: Use `.obs` for observable state
- **Dependency Injection**: Use `Get.put()`, `Get.lazyPut()`, `Get.find()`

### File Structure

- **Pages**: `/pages/feature_name/`
  - `controller.dart` - GetX controller
  - `view.dart` - UI widget
  - `widgets/` - Feature-specific widgets
  
- **Models**: 
  - Legacy: `/models/` (being phased out)
  - New: `/models_new/feature_name/` (organized by feature)

- **HTTP APIs**: `/http/`
- **Utilities**: `/utils/`
- **Common Widgets**: `/common/widgets/`

### Naming Conventions

- **Constants**: `UPPER_SNAKE_CASE`
- **Classes/Types**: `PascalCase`
- **Variables/Functions**: `camelCase`
- **Private Members**: Prefixed with `_`
- **Controllers**: End with `Controller`
- **Services**: End with `Service`
- **Views**: End with `Page` or `View`

### Project-Specific Notes

1. **Custom Dependencies**: Many dependencies use custom forks hosted on GitHub:
   - GetX, media_kit, extended_nested_scroll_view, canvas_danmaku, etc.
   - Always check `pubspec.yaml` for Git URLs instead of pub.dev versions

2. **API Integration**: 
   - Uses BiliBili's API with custom app keys and headers
   - Both REST API and gRPC protocols supported
   - Custom sign generation for API requests

3. **Multi-Platform**:
   - Platform-specific code in `/utils/platform_utils.dart`
   - Conditional compilation for mobile vs desktop features
   - Desktop-specific features: window management, system tray, file pickers

4. **Storage**:
   - Uses Hive boxes for different data types
   - Preference storage via `Pref` class
   - Account data stored separately for multi-account support

5. **Player**:
   - Custom player built on media_kit (mpv-based)
   - Supports hardware acceleration, shaders, custom controls
   - Anime4K shaders for super-resolution

6. **Account System**:
   - Multi-account support with account switching
   - Cookie-based authentication
   - Account data isolation

## Key Files and Directories

### Entry Points
- `lib/main.dart`: Application entry point and initialization
- `lib/router/app_pages.dart`: Application routing configuration (240+ routes)

### Configuration
- `pubspec.yaml`: Project configuration and dependencies
- `analysis_options.yaml`: Dart analyzer and linter rules
- `build_config.dart`: Build-time configuration

### Core Services
- `lib/services/account_service.dart`: Account management
- `lib/services/download/download_service.dart`: Download management
- `lib/services/audio_handler.dart`: Audio playback service

### Utilities
- `lib/utils/storage_pref.dart`: Preference storage wrapper
- `lib/utils/storage.dart`: Hive storage utilities
- `lib/common/constants.dart`: Global constants and API endpoints
- `lib/utils/accounts/account_manager/`: Multi-account management

### HTTP & API
- `lib/http/init.dart`: HTTP client initialization and interceptors
- `lib/grpc/`: gRPC protocol definitions (under refactoring)

### Player
- `lib/plugin/pl_player/`: Custom video player implementation
- `lib/pages/video/`: Video detail and playback pages

## Important APIs and Services

### Video & Playback
- Video detail and playback
- Episode/season management
- Playlist and queue management
- Download and offline playback
- DLNA casting

### User & Account
- Multi-account management
- User profile and settings
- Login/logout (QR code, SMS, Cookie, etc.)
- Account switching and isolation

### Social Features
- Dynamic feed (timeline)
- Comments and nested replies
- Private messages
- Follow/unfollow users
- Fan and follow lists

### Content Management
- Favorites (folders and management)
- Later watch list
- Watch history
- Search (videos, users, articles, live)
- Block list

### Live Streaming
- Live room playback
- Live danmaku
- Live area browsing
- Live search

### Settings & Preferences
- Video/audio playback settings
- UI theme and appearance
- Privacy settings
- Recommendation filtering
- WebDAV backup/restore

## Refactoring Status

- [x] User interface refactoring (completed)
- [x] Other refactoring (completed)
- [ ] gRPC refactoring (work in progress)

The project is actively refactoring from REST API to gRPC for better performance and type safety. The gRPC definitions are in `/lib/grpc/` but analysis is currently disabled for this directory.
