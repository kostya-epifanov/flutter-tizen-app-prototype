# Flutter Tizen Video Player Prototype

A Flutter prototype application demonstrating video playback functionality specifically designed for Tizen devices (Samsung Smart TVs).

## 🎯 Purpose

This prototype showcases video player capabilities for Tizen platform, including remote streaming, local asset playback, and integration within TV UI patterns like scrollable lists.

## ✨ Features

### Video Playback Modes
- **Remote Video**: Streams MP4 with closed caption support (VTT subtitles)
- **Asset Video**: Plays bundled local video files
- **List Integration**: Videos embedded in scrollable content lists

### Advanced Controls
- Play/pause with intuitive overlay controls
- Variable playback speed (0.25x to 10x)
- Caption timing offset adjustment
- Video progress indicator with scrubbing
- Auto-looping playback
- Aspect ratio management

### Tizen-Specific Features
- Optimized for Samsung Smart TV interface
- Proper Tizen manifest configuration
- Media storage and internet privileges
- DotNet AOT compilation support

## 🛠 Setup Flutter-Tizen Environment

### Prerequisites
- Flutter SDK (≥3.4.3)
- Tizen Studio 5.0+
- Tizen TV SDK packages

### Installation Steps

1. **Install Flutter**
   ```bash
   # https://flutter.dev/docs/get-started/install
   ```

2. **Install Tizen Studio**
   - Download: https://developer.tizen.org/development/tizen-studio/download
   - Install with TV SDK and TV Extension packages

3. **Setup flutter-tizen CLI**
   ```bash
   flutter pub global activate flutter-tizen
   export PATH="$PATH:$HOME/.pub-cache/bin"
   ```

4. **Configure Environment**
   ```bash
   flutter-tizen config --tizen-sdk /path/to/tizen-studio
   flutter-tizen doctor  # Verify setup
   ```

## 🚀 Running the Application

### Development
```bash
# Run on connected Tizen TV
flutter-tizen run

# Run on Tizen emulator
flutter-tizen run -d emulator-26101
```

### Production Build
```bash
# Build release TPK package
flutter-tizen build tpk --release
```

## 📁 Project Structure

```
lib/
├── main.dart                    # Application entry point
├── video_player_test.dart       # Main video player UI with tabs
│   ├── VideoApp                 # Root widget with TabBar
│   ├── _BumbleBeeRemoteVideo    # Remote video with captions
│   ├── _ButterFlyAssetVideo     # Local asset video player
│   └── _ButterFlyAssetVideoInList # Video in scrollable list
└── counter_test.dart            # Alternative counter app

assets/
├── Butterfly-209.mp4           # Sample butterfly video
├── Audio.mp3                   # Audio asset
├── bumble_bee_captions.vtt     # VTT subtitle file
└── flutter-mark-square-64.png  # Flutter logo overlay

tizen/
├── tizen-manifest.xml          # App manifest & permissions
├── App.cs                      # Tizen app entry point
└── Runner.csproj               # .NET project configuration
```

## 📦 Dependencies

```yaml
dependencies:
  video_player: ^2.4.2          # Core video player
  video_player_tizen: ^2.4.9    # Tizen platform implementation
```

## 🔧 Key Implementation Details

- **State Management**: Stateful widgets for video controller lifecycle
- **Video Controllers**: Separate controllers for remote and asset videos
- **UI Patterns**: Tab-based navigation typical for TV interfaces
- **Performance**: Proper controller disposal and initialization
- **Accessibility**: Semantic labels and proper button states

## 📚 Resources

- [Flutter Official Documentation](https://flutter.dev/docs)
- [Tizen Developer Guide](https://developer.tizen.org/development)
- [Flutter-Tizen GitHub Repository](https://github.com/flutter-tizen/flutter-tizen)
- [Samsung Developer Portal](https://developer.samsung.com/smarttv)
- [Video Player Package](https://pub.dev/packages/video_player)

## 🏗 Build Information

- **Flutter Version**: 3.4.3+
- **Dart SDK**: 3.4.3+
- **Tizen API**: 6.0+
- **Target Platforms**: Tizen Common Profile

---

*This prototype serves as a reference implementation for building video-centric applications on Samsung Smart TVs using Flutter.*
