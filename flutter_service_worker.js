'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "f753a53f2f2d4c07351f1912668907b9",
"assets/NOTICES": "232166f20231ea0d9cccc328021d6b8d",
"assets/FontManifest.json": "7aaf3996738086bbd796613e14ef9e45",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/svgs/checklist.svg": "ea157c47a2c881b0ab7fef6d91c53931",
"assets/assets/svgs/marketing.svg": "0293ef26658517e83ad2dde48ff1c058",
"assets/assets/svgs/pose.svg": "2b068b4bb62ff491bbc1e07cc8d2ab4e",
"assets/assets/svgs/sentiment_analysis.svg": "ce7126949bf962bc8c52a7f6755078fe",
"assets/assets/svgs/team_up.svg": "c01c503918c6597baebb077b41482cf4",
"assets/assets/svgs/image_classification.svg": "f6b80e06291e603b12957e923711f4a6",
"assets/assets/svgs/data_extraction.svg": "21c2e6aba192304c261b96f3f5c27ba0",
"assets/assets/svgs/basics.svg": "9684ce2d9e10d89e206b4bd12a0c248c",
"assets/assets/svgs/gift_box.svg": "b6d353daf0da78138a58f762bbb87d87",
"assets/assets/svgs/optimize_image.svg": "484925a6d26207af2209562882d95067",
"assets/assets/svgs/growth_curve.svg": "31111d7fee5ba545ba6669bec943a7ab",
"assets/assets/svgs/process.svg": "6f1b3060aa5ade3273aeaf472bfec1b1",
"assets/assets/svgs/user_flow.svg": "d57f8455a9a0848a40fba400341e8cd9",
"assets/assets/svgs/detection.svg": "d0b57086eda9d418dcff4e2cc9ba87e7",
"assets/assets/svgs/font.svg": "8f1a6ac0260736c9b79a526a850b9c04",
"assets/assets/svgs/convert.svg": "71e81285325f210452398674aae1b1f1",
"assets/assets/svgs/price_prediction.svg": "3bd97c45dfd71aae576bab5165f1f592",
"assets/assets/svgs/classification.svg": "6e98631bd0be5adf7aeb03634fe6896f",
"assets/assets/svgs/online_message.svg": "a2d661d76e082bdc097252a461464a2f",
"assets/assets/svgs/processing_thoughts.svg": "2d46582689c196a0ed658beace9956e9",
"assets/assets/svgs/dark_mode.svg": "cd0e162b95cd9b6130eed4338e665648",
"assets/assets/svgs/master_plan.svg": "82593e6a77fcd7105e650b4d65599967",
"assets/assets/svgs/algorithms.svg": "4cb5b3494de8be658082b76c571ab716",
"assets/assets/svgs/code_snippets.svg": "dbec02ec0d9c4935296973bd645b33b7",
"assets/assets/svgs/i2c.svg": "04f03d2891d24fa647d288a7f6759c20",
"assets/assets/svgs/research_papers.svg": "ca4d38b79b32bec9d4cffad15bd5f7da",
"assets/assets/models/ssd_mobilenet.tflite": "efbf596715eec74b5d5cea0e9dff573b",
"assets/assets/models/yolov2_tiny.tflite": "b40966316ade0b3644f22b9e921e634b",
"assets/assets/models/mobilenet_v1_1.0_224.txt": "567dc3e3c6c9f869073a52a3c5d8dd01",
"assets/assets/models/deeplabv3_257_mv_gpu.txt": "75528f9530ec15a187855685303cf0d0",
"assets/assets/models/yolov2_tiny.txt": "a0e3313ad35932b2169c6570bd403987",
"assets/assets/models/posenet_mv1_075_float_from_checkpoints.tflite": "e0c83d992292731a3f2dfe387d1470a6",
"assets/assets/models/ssd_mobilenet.txt": "aec65ea30e80f48fc85ab4f2ea0172c9",
"assets/assets/models/mobilenet_v1_1.0_224.tflite": "570a9615104b5d8afac870fc5dec88f1",
"assets/assets/models/deeplabv3_257_mv_gpu.tflite": "4a24db5a5fb05c47586a1197765e8548",
"assets/assets/images/gradient_descent_form.png": "bbff3945abb2661161af291dc7c4188a",
"assets/assets/images/gradient_descent_algo.png": "12f2f03e7724961e8ab4b949fb5e2ccf",
"assets/assets/images/unsup.png": "4f585897a6b7491b02be98eadd638530",
"assets/assets/images/cost_function.png": "2fc949bb2ab463e8e8482fa686982d48",
"assets/AssetManifest.json": "d5bc38c4515321d70e1a1ddbffd25cd5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "40b6afe9572a4f4afd0b1ddb61951e8d",
"/": "40b6afe9572a4f4afd0b1ddb61951e8d",
"manifest.json": "0a942ca04d8a541445d157c7dc86b8a4",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
    return self.skipWaiting();
  }
  if (event.message === 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
