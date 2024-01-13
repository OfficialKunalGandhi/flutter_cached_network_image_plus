# flutter_cached_network_image_plus

A Flutter package that provides a custom widget `CacheNetworkImagePlus` for loading and caching network images with a shimmer effect.

## Features

- Caches and loads network images efficiently.
- Supports a shimmer effect while the image is loading.
- Customizable options such as box fit, dimensions, shimmer colors, and more.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_cached_network_image_plus: ^0.0.1
```  

## Usage

Import the package:

```dart
import 'package:flutter_cached_network_image_plus/flutter_cached_network_image_plus.dart';
```

Use the `CacheNetworkImagePlus` widget in your Flutter app:


```dart
CacheNetworkImagePlus(
imageUrl: 'https://example.com/image.jpg',
width: 300,
height: 300,
// Other optional parameters...
)
```

# Parameters
- imageUrl (required): The URL of the network image.
- width and height: The dimensions of the image.
- Other optional parameters for customization.


## Example

```dart
CacheNetworkImagePlus(
imageUrl: 'https://example.com/image.jpg',
width: 300,
height: 300,
shimmerDirection: ShimmerDirection.ltr,
shimmerDuration: Duration(milliseconds: 1500),
// Other optional parameters...
)
```

## Screenshots

<img src="https://github.com/OfficialKunalGandhi/flutter_cached_network_image_plus/blob/master/Screenshot.png" alt="Screenshot 1" width="400" height="200"/>

![Screenshot 1](https://github.com/OfficialKunalGandhi/flutter_cached_network_image_plus/blob/master/Screenshot.png)


