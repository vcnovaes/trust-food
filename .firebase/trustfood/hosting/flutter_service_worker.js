'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "cc5ba2a290e18cbbf22c6747c2a90119",
"index.html": "c7f9f103d9e75042c858f48a0df58e41",
"/": "c7f9f103d9e75042c858f48a0df58e41",
"main.dart.js": "2bce8c758fef869f7d87ce51d8961d6e",
"version.json": "676312bdd4e2ee068737c976422cadb7",
"assets/assets/logo.png": "02602e4f33ac25d4c57492b99ab6674c",
"assets/assets/ambulante.png": "47aefd3866356809337802f533811cf4",
"assets/assets/circle.png": "795f9c90d345735438d6c607e736d10d",
"assets/assets/green_check.png": "a01528cf2366232b57ddf485b22e166e",
"assets/assets/left_arrow.png": "d282e4932e54640418a4cdb8a78d0a82",
"assets/assets/ler_qr.png": "cdc8d7e962da45b20654e3aa5193b51b",
"assets/assets/map_home_user.png": "6da16259a3e2b42d9963da5c6c067244",
"assets/assets/qr_code_1.png": "42ecbd0f9af04065409ea7cd3a4c9bc3",
"assets/assets/qr_code_2.png": "932328df0f2071abc1df7f220c639ceb",
"assets/assets/trustfoodlogo.png": "5deba41a55966798cf79270155a9378f",
"assets/assets/star.png": "83ed0933d55ff1a81b7defaeda511d6c",
"assets/assets/caldinho.png": "efb803f9d819ba17f04ea551b4a4bc04",
"assets/assets/QRcodebutton.png": "265699159a9b3ddf0184ab4d4e719db3",
"assets/assets/voltar.png": "a71292219227260fddd53ba1b6c43b4a",
"assets/assets/ler_QR_Code_Button.png": "f0245f598c9d8bd6fe7c9e0b822db0d7",
"assets/assets/retangulo.png": "a719743990e147aefb04cfec3aa61ca3",
"assets/assets/seller_point_map.png": "352a2b1b64ea7db837737f2b89a2a154",
"assets/assets/profile_button.png": "86dddd16149fe78bbb13a979709e4bc4",
"assets/assets/milho_do_ze_home.png": "f338d0a185eaa0e797de13f0c4fe208b",
"assets/assets/milho_do_ze_gallery_1.png": "d718537fc1cee04a69efbd779d1c57cc",
"assets/assets/milho_do_ze_gallery_2.png": "ab29e8a08b72b052744200a8204f6321",
"assets/assets/pastel_do_seu_gustavo_home.png": "7c7e84225a9d66392b9984d5534276e1",
"assets/assets/pastel_do_seu_gustavo_gallery_1.png": "ad106dea772a6c1fbff73ec171841c68",
"assets/assets/pastel_do_seu_gustavo_gallery_2.png": "c0a41690c36e307bf295af985048d4a8",
"assets/assets/gallery.png": "18868900c31cb515a63895591a998d84",
"assets/assets/toggle_on.png": "693194273496e8bd7d776cd40372c5cb",
"assets/assets/log_out_button.png": "ed701c182236691a4fc9fff3dd9b668b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/fonts/MaterialIcons-Regular.otf": "9f74af690f900dabd31a94b39659efe5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "f890a1ba6d42a93975c52f612a35a2de",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "f72c8757effa5fb2580645ae74ecaef4",
"assets/NOTICES": "d82f58e01ed07346fa39c33f953c7365",
"assets/AssetManifest.bin": "14808230f02092fcb4cc24479c015dc5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"manifest.json": "60de80ae57381d5fc1405386e7129414"};
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
