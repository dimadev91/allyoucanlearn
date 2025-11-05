'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f2a03f5ecad052b9455201cc79357828",
"assets/AssetManifest.bin.json": "eee2e7db8fe225b3e8b3dc1af7eab45c",
"assets/AssetManifest.json": "212f258a071e84b4b30626c4828a9c68",
"assets/assets/api/step07.png": "848f1d677dda1d362700fee479af3ee5",
"assets/assets/api/step1.png": "c239688a3b72cb23bafaf959d4f25b51",
"assets/assets/api/step2.png": "1b048ba55b367cd9cba482fb21a96460",
"assets/assets/api/step4.png": "9d4aab2871ea52ffca78a989a757142c",
"assets/assets/api/step41.png": "84ca830b64036ebf4e0a1ab8ddd96183",
"assets/assets/api/step5.png": "9b52446830efaef34cf033675131af3d",
"assets/assets/api/step6.png": "55a07fc710f3afa29a3ea544c5710fe8",
"assets/assets/api/step7.png": "28f8516177d243e822d62fb07a939c45",
"assets/assets/api/step71.png": "e65655a301bbfc79405bc2088a06a1c3",
"assets/assets/api/step8.png": "79f738284315f6b0eaf1cba1cd2484e5",
"assets/assets/api/step81.png": "d4597a71425140d8c1cc1cb87b35974a",
"assets/assets/api/step82.png": "08d9d2655c663f0b773202debcb6db8b",
"assets/assets/api/step9.png": "df93b2614cbb40ff4b64e72c25662010",
"assets/assets/api/step91.png": "fe5ad56200700700ae985bd701141e28",
"assets/assets/api/step92.png": "18ee4a71a2b3efda68693238f19b830b",
"assets/assets/diagram.png": "8df2a20c19ca10052d7a2d43e3aba5e3",
"assets/assets/dice/DiceCode-1.png": "6fb0f27a6a2bbca30be842eff41ae853",
"assets/assets/dice/DiceCode-2.png": "1c9f790535e5a6cdcf8f26331dc8cbdc",
"assets/assets/dice/DiceCode-3.png": "1cc81f427df308da95d5263734f445f6",
"assets/assets/functions/function.png": "2a577d8f5d97f57c08d3caa391f59f8a",
"assets/assets/icons/flutter.png": "a5bf1d8c59641c67fee7e0eaf80b7d83",
"assets/assets/icons/flutter144.png": "0f42d342126f124fed80b0b2a99a360e",
"assets/assets/icons/fluttervuoto.png": "e98192a5702159b74d39bb8d761c69ba",
"assets/assets/icons/python.png": "78a233e769effd0ffd4a5a4ab481365d",
"assets/assets/icons/python144.png": "e9988fd1a686c7fb140d3927c80ecf18",
"assets/assets/icons/pythonvuoto.png": "518139f5150e223a51aadf13498a8c2a",
"assets/assets/materialapp/materialapp.png": "bad3e4fa1e6e2e4b8f282ef018455ba5",
"assets/assets/mi_card/mi_card_code-1.png": "39cadb733dfc5b48f3e857c1011a049b",
"assets/assets/mi_card/mi_card_code-2.png": "5793cf02b950d44446b3278a1c0ce8e7",
"assets/assets/mi_card/mi_card_code-3.png": "23d73a32a15c1ddced1ec6ba20a320a6",
"assets/assets/pages_assets/aeip.png": "8898de8959f33cc584c94361e0451ee0",
"assets/assets/pages_assets/class.png": "021fe541cb8b005ec53821a470669dd6",
"assets/assets/pages_assets/enum.png": "7db712c4273f3fc37d688a23a419645b",
"assets/assets/pages_assets/input1.png": "e9c6bbb98cee8666829836aeb0fbf38b",
"assets/assets/pages_assets/input2.png": "e91ba4fd400306efbbf8c7fbf7faa898",
"assets/assets/pages_assets/ternary.png": "b89721308ace21d280b9b23b4aed7457",
"assets/assets/truefalse/truefalse-1.png": "a1526c182d77ce1206f5635020eb2d26",
"assets/assets/truefalse/truefalse-2.png": "9adae71e9c1d6357e4402ee3aef53f74",
"assets/assets/truefalse/truefalse-3.png": "2f05eb1159df401f76e12b80020ed3fb",
"assets/assets/truefalse/truefalse-4.png": "6b9c3fc1087d5bd603c981db7285b5e9",
"assets/assets/truefalse/truefalse-5.png": "cc2a7fac3264cf6d9d2df1b360d53478",
"assets/assets/truefalse/truefalse-6.png": "90c7403cb1f144c973f7887a1b74de5d",
"assets/assets/truefalse/truefalse-7.png": "f736c6464283dd1c820942760db51e80",
"assets/assets/xylophone/xylophone-1.png": "d11f66744d9eed6ed0bad70e6943bbf8",
"assets/assets/xylophone/xylophone-2.png": "f75d5157235190ea04d6a761a5c5aff8",
"assets/FontManifest.json": "07da357f1f636a449900bde6f7de338a",
"assets/fonts/MaterialIcons-Regular.otf": "cbd62b066eac24fb6c3f795378aba7db",
"assets/NOTICES": "85b9433c2e31204cedd87d383331080f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "1fcba7a59e49001aa1b4409a25d425b0",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/packages/rflutter_alert/assets/images/2.0x/close.png": "abaa692ee4fa94f76ad099a7a437bd4f",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_error.png": "2da9704815c606109493d8af19999a65",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_info.png": "612ea65413e042e3df408a8548cefe71",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_success.png": "7d6abdd1b85e78df76b2837996749a43",
"assets/packages/rflutter_alert/assets/images/2.0x/icon_warning.png": "e4606e6910d7c48132912eb818e3a55f",
"assets/packages/rflutter_alert/assets/images/3.0x/close.png": "98d2de9ca72dc92b1c9a2835a7464a8c",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_error.png": "15ca57e31f94cadd75d8e2b2098239bd",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_info.png": "e68e8527c1eb78949351a6582469fe55",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_success.png": "1c04416085cc343b99d1544a723c7e62",
"assets/packages/rflutter_alert/assets/images/3.0x/icon_warning.png": "e5f369189faa13e7586459afbe4ffab9",
"assets/packages/rflutter_alert/assets/images/close.png": "13c168d8841fcaba94ee91e8adc3617f",
"assets/packages/rflutter_alert/assets/images/icon_error.png": "f2b71a724964b51ac26239413e73f787",
"assets/packages/rflutter_alert/assets/images/icon_info.png": "3f71f68cae4d420cecbf996f37b0763c",
"assets/packages/rflutter_alert/assets/images/icon_success.png": "8bb472ce3c765f567aa3f28915c1a8f4",
"assets/packages/rflutter_alert/assets/images/icon_warning.png": "ccfc1396d29de3ac730da38a8ab20098",
"assets/packages/syncfusion_flutter_pdfviewer/assets/fonts/RobotoMono-Regular.ttf": "5b04fdfec4c8c36e8ca574e40b7148bb",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/dark/highlight.png": "2aecc31aaa39ad43c978f209962a985c",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/dark/squiggly.png": "68960bf4e16479abb83841e54e1ae6f4",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/dark/strikethrough.png": "72e2d23b4cdd8a9e5e9cadadf0f05a3f",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/dark/underline.png": "59886133294dd6587b0beeac054b2ca3",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/light/highlight.png": "2fbda47037f7c99871891ca5e57e030b",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/light/squiggly.png": "9894ce549037670d25d2c786036b810b",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/light/strikethrough.png": "26f6729eee851adb4b598e3470e73983",
"assets/packages/syncfusion_flutter_pdfviewer/assets/icons/light/underline.png": "a98ff6a28215341f764f96d627a5d0f5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "a05f42e93ad88b315c4a0741d5b20f13",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "298d55715fb3234001e26b56fddaba63",
"/": "298d55715fb3234001e26b56fddaba63",
"main.dart.js": "da75953b54851fd451b6cd89f495db88",
"manifest.json": "e86620e4dc2b2d7b99d2e0d40a60e6d8",
"version.json": "2cd8cc18ceab60354edc8bb7804c4a59"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
