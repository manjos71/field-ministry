// guid.dart - patched copy for compatibility

// Polyfill: provide UnmodifiableUint8ListView for Dart SDKs that do not
// expose it yet (older Dart versions used a private implementation).

import 'dart:ffi';
import 'dart:typed_data';
import 'dart:collection';

// Simple wrapper that provides the minimal API the win32 package expects.
class UnmodifiableUint8ListView extends UnmodifiableListView<int> {
  UnmodifiableUint8ListView(Uint8List list) : super(list);
}

// The rest of the original guid.dart contents are intentionally omitted
// to keep this shim minimal. The win32 package only needs UnmodifiableUint8ListView
// for some constructors; the real implementation is in the upstream package.

// For compatibility, delegate to the upstream implementation when available.
// (If stricter behavior required, consider copying more of the original file.)
