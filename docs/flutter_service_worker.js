'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"404.html": "1f2f1eb37cb6cdb75ceed70b02d0393d",
"assets/AssetManifest.bin": "c7f2a544a1816bd39f17a852b651cd6d",
"assets/AssetManifest.json": "7ae39b00be4d6a1dbc1457db43b76b84",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "19a06ca2815ef6eb6c988bc1abc97405",
"assets/images/about/me.jpg": "327b3fc65b1f68b7c7472a9c3626c57f",
"assets/images/about/me1.jpg": "1001c73d2672d8ad5dc063e3d4afcff2",
"assets/images/about/me2.jpg": "093130fb555afee03b4384b3f97ebc3f",
"assets/images/about/me3.jpg": "ee56a0aa7fd3ee29e103f163e164484d",
"assets/images/apps/google-play-badge-de.png": "7e2066c8302de54f8fee432d143a4cc1",
"assets/images/apps/google-play-badge-en.png": "1e91d02cf5a902f38f2923c006d79281",
"assets/images/apps/nakbuch/app_icon.png": "a30e4f3d58b8a9d517bd553a043ee87e",
"assets/images/apps/nakbuch/data_tab.gif": "484e8d8eb0bc0a4890682571f1e45ac7",
"assets/images/apps/nakbuch/expanding_app_bar.gif": "9c3629b44fc5fcc584b7b4a5f45453e2",
"assets/images/apps/nakbuch/material_home_blue.png": "f7203c5caca8e337002ff837129cb81c",
"assets/images/apps/nakbuch/material_home_green.png": "a20b137376e990b99ed36d5f82c33c34",
"assets/images/apps/nakbuch/material_home_red.png": "af15650b9442de413520e5a73230d534",
"assets/images/apps/nakbuch/material_nakbuch_blue.png": "598e0d7ce91bbfac904b69c42b48383b",
"assets/images/apps/nakbuch/material_nakbuch_green.png": "715b821f1ec3c07b3c9471b6f7b03327",
"assets/images/apps/nakbuch/material_nakbuch_red.png": "1870af7a47470f0899363a204e951d61",
"assets/images/apps/nakbuch/mobile1.png": "be2dcd5c592b142bd2999e0a8a2b9220",
"assets/images/apps/nakbuch/mobile1_light.png": "7d8e5d78a8437506227cc13859dbcd24",
"assets/images/apps/nakbuch/mobile2.png": "e00ad2da5adbf35fdd5fca5da22c4af7",
"assets/images/apps/nakbuch/mobile2_light.png": "7bd034ec662ce11899efa7216c9e3548",
"assets/images/apps/nakbuch/mobile3.png": "bdfa3a9f3642c90911acb78ed4a89463",
"assets/images/apps/nakbuch/mobile3_light.png": "b1400254062884c9b8c204531e94c67d",
"assets/images/apps/nakbuch/mobile4.png": "8a8ce53b7ddca64abf404e34d8985f49",
"assets/images/apps/nakbuch/mobile4_light.png": "158cb421c7689488f4845a011c0858f6",
"assets/images/apps/nakbuch/mobile5.png": "c8291ae22cf7e5c5d8cc8153cfb01825",
"assets/images/apps/nakbuch/mobile5_light.png": "07532018b5da0f161ff2680e110eb1b5",
"assets/images/apps/nakbuch/mobile6.png": "ee80d2ab2f335dbea77133f0b249ab1f",
"assets/images/apps/nakbuch/mobile6_light.png": "e4f6e2bfedfbe11b9848952bd05308ac",
"assets/images/apps/nakbuch/NAK_Buch_squircle.png": "e86f2fc79e379b5897e963c7cbb7ef72",
"assets/images/apps/nakbuch/quick_actions.png": "76c4454b205f666d1304748707a884e8",
"assets/images/apps/nakbuch/shortcut.png": "812f1ad2bfde5bc344817ab325d77aaf",
"assets/images/apps/nakbuch/swipe_gesture.gif": "ed69ae8559783f6e85818d4c90aa9f94",
"assets/images/apps/nakbuch/tab1.png": "fb8af02f671be2f823cb521b4e24c7b1",
"assets/images/apps/nakbuch/tab1_light.png": "0ae42439a10ff9e1ff942d7b2b6c0080",
"assets/images/apps/nakbuch/tab2.png": "56bbd818475299d611cf1b3bdff091be",
"assets/images/apps/nakbuch/tab2_light.png": "998d57494df1f986beffd8d69a18364e",
"assets/images/apps/nakbuch/tab3.png": "80b1ad3b8529321ba84b2ab79496d1c8",
"assets/images/apps/nakbuch/tab3_light.png": "2e8d08a3729328012abc50144e149d78",
"assets/images/apps/nakbuch/tab4.png": "d758c319d61d7c0c51653a5a574c7b5f",
"assets/images/apps/nakbuch/tab4_light.png": "4ac63b54ba0c3f06775860e30dccc35d",
"assets/images/apps/nakbuch/Vorstellungsgrafik.png": "bab0c74ba50a2d4f8013c259bd7e64a8",
"assets/images/apps/nakbuch/wear1.png": "7951c28ffb6f95d5fe1a7593266088ba",
"assets/images/apps/nakbuch/wear2.png": "16063aabb572911847f0afd1236d0f1d",
"assets/images/apps/nakbuch/wear3.png": "1bf262fc918731715b96a1dbfd5f3a55",
"assets/images/apps/nakbuch/wear4.png": "537704387779619f8d5c82ad0ec263f8",
"assets/images/apps/oneUI/OneUI.jpg": "a3e838f6931cd09f6955fb8dbe9eed03",
"assets/images/apps/oneUI/OneUIBanner.jpg": "4f8fd082e1a8e95330f803c0a817d764",
"assets/images/apps/oneUI/OneUILogo.png": "37e7e1a8b67fd0e913b8d38d09cf17e2",
"assets/images/apps/studiportal/app_icon.png": "52197e869a4403fd2ae7ecdbaef38e2f",
"assets/images/apps/studiportal/expanding_app_bar.gif": "e040ee62424be474181e6bc360cb867b",
"assets/images/apps/studiportal/expanding_app_bar.mp4": "be35a26fd693fd12d2a00c23b7bcb633",
"assets/images/apps/studiportal/material_home_blue.png": "f7203c5caca8e337002ff837129cb81c",
"assets/images/apps/studiportal/material_home_green.png": "a20b137376e990b99ed36d5f82c33c34",
"assets/images/apps/studiportal/material_home_red.png": "af15650b9442de413520e5a73230d534",
"assets/images/apps/studiportal/material_studiportal_blue.png": "a509a54d0a27b4156f2ace8e12bcb1c1",
"assets/images/apps/studiportal/material_studiportal_green.png": "c1cc1d324270b044334cffcedf73f2e6",
"assets/images/apps/studiportal/material_studiportal_red.png": "b1e828671f40e2de5c81d5fc1d640886",
"assets/images/apps/studiportal/mobile1.png": "5835ce2d95ca57192c2a86b577c1a8d8",
"assets/images/apps/studiportal/mobile1_light.png": "9de52fed50a03148205bd0a88b03c4aa",
"assets/images/apps/studiportal/mobile2.png": "9cb10d63a67567d397c488f582e6bbaa",
"assets/images/apps/studiportal/mobile2_light.png": "e8434f2b6458b4302c8ec1f55120155e",
"assets/images/apps/studiportal/mobile3.png": "27ab0316fc4745c2fab9edabeaafb5de",
"assets/images/apps/studiportal/mobile3_light.png": "93247e0d396bf9a55d4f32374beb6e8e",
"assets/images/apps/studiportal/mobile4.png": "af9c03293492907aabd0d5d9d34008b6",
"assets/images/apps/studiportal/mobile4_light.png": "c09df83dccd80bd8a2a6d1ea11835f72",
"assets/images/apps/studiportal/mobile5.png": "265da742ab4d59ee360d4e65dc7c54dc",
"assets/images/apps/studiportal/mobile5_light.png": "10b8c340e31e7afcb7a27359f8d999cc",
"assets/images/apps/studiportal/Studiportal_squircle.png": "adf6f4b872efbdb274b6b74fffbf1fa0",
"assets/images/apps/studiportal/tab1.png": "3c0b620d9b213217af7b8daa8cb6f0d6",
"assets/images/apps/studiportal/tab1_light.png": "8d5ae176e16e49a05462d1820de4f14e",
"assets/images/apps/studiportal/tab2.png": "4e3029543a6f1dcfa366ae234387181b",
"assets/images/apps/studiportal/tab2_light.png": "ce3374cfd8a0442933001059529053af",
"assets/images/apps/studiportal/tab3.png": "fe5599bdfadce91435d48fefd54bf222",
"assets/images/apps/studiportal/tab3_light.png": "c6662ca1f7ebc678b875fceb1700b678",
"assets/images/apps/studiportal/tab4.png": "25676c9820d784b5b7df342b94d8c394",
"assets/images/apps/studiportal/tab4_light.png": "9795eb392edc1a44e1fc853ee8158e98",
"assets/images/apps/studiportal/Vorstellungsgrafik.png": "34cea04763295b5332142dc46fabd746",
"assets/images/apps/sudoku/app_icon.png": "f0f1f41c8f745576714a96bb48dcbb17",
"assets/images/apps/sudoku/daily.png": "92d979dcde8f854555033bc8bf33c196",
"assets/images/apps/sudoku/expanding_app_bar.gif": "a582fa24f8e140bbf9006abd61bfa07c",
"assets/images/apps/sudoku/expanding_app_bar.mp4": "2fcc8c35a015e418aeaa37dbc291744d",
"assets/images/apps/sudoku/level.png": "88e1b82a494a154e044cea6ab923dcdf",
"assets/images/apps/sudoku/material_home_blue.png": "f7203c5caca8e337002ff837129cb81c",
"assets/images/apps/sudoku/material_home_green.png": "a20b137376e990b99ed36d5f82c33c34",
"assets/images/apps/sudoku/material_home_red.png": "af15650b9442de413520e5a73230d534",
"assets/images/apps/sudoku/material_sudoku_blue.png": "0ea5bed69e147c9c4117e03dae42968d",
"assets/images/apps/sudoku/material_sudoku_green.png": "b76fc76550044d76dbba6c97073a022b",
"assets/images/apps/sudoku/material_sudoku_red.png": "1f36aa674c2c617b28832e24fbf950b0",
"assets/images/apps/sudoku/mobile1.png": "2f98e3209c4691dbdfbe6a0045353165",
"assets/images/apps/sudoku/mobile1_light.png": "40bde80de176c5a3baca52f47384add4",
"assets/images/apps/sudoku/mobile2.png": "bd3a664cb010fca514f1bda95550854f",
"assets/images/apps/sudoku/mobile2_light.png": "a26ad7a1b197caf711077e1f4b10514a",
"assets/images/apps/sudoku/mobile3.png": "302d34b37ea85864562f625288f0bb73",
"assets/images/apps/sudoku/mobile3_light.png": "4b3b64dce53aff665177a2fe9b724340",
"assets/images/apps/sudoku/mobile4.png": "abef8ed2e5287c7fb381a7ba3d3677e8",
"assets/images/apps/sudoku/mobile4_light.png": "e79a1a301ff9f4309bfeb3c5a59b603d",
"assets/images/apps/sudoku/mobile5.png": "8f67357289dc6460c0358651bb7a6188",
"assets/images/apps/sudoku/mobile5_light.png": "eee4219703217eac0ab1381064bdc77d",
"assets/images/apps/sudoku/play_games.png": "0835b1f97161278d1b0ffc8a79b8132e",
"assets/images/apps/sudoku/statistics_filter.png": "83bfd94f89dfb6ed719daf5c481db407",
"assets/images/apps/sudoku/Sudoku_squircle.png": "7b21d343b455d3c97a9cbe29b6f28643",
"assets/images/apps/sudoku/tab1.png": "049863a8ecbef2880a7416132be97010",
"assets/images/apps/sudoku/tab1_light.png": "6bbde46f059cc7e30d7c71bb94c0292d",
"assets/images/apps/sudoku/tab2.png": "93f411ccffb55507613665673d64a2ef",
"assets/images/apps/sudoku/tab2_light.png": "3d3bf321ff3e19ff9cb26c6fd0d7ea05",
"assets/images/apps/sudoku/tab3.png": "1dbb21c6b9aa2d8cb7194150bbd9d8c1",
"assets/images/apps/sudoku/tab3_light.png": "a51ad2e1b335f3064f26692b61ebeef6",
"assets/images/apps/sudoku/tab4.png": "aed3a77050cad586ddc8e979be5890b3",
"assets/images/apps/sudoku/tab4_light.png": "bea234e2d9aeebdbf51ca441fe5fb4c2",
"assets/images/apps/sudoku/Vorstellungsgrafik.png": "ec4eda3e7bf490b03a717f08a3d56ae8",
"assets/images/logo/banner_named.png": "013bd9a6f49d68f42bc56316d69700bb",
"assets/images/logo/icon.png": "d99cc7a578b7b231033b2e7818fb6302",
"assets/images/logo/icon_50.png": "e36da4b991553af757cd7ce7063bbaef",
"assets/images/media/accelerate/accelerate1.gif": "6f5137ae242402661fd9d5746285af13",
"assets/images/media/accelerate/accelerate1.jpg": "474bcc4bdba2d96e95deb3d0086e60e3",
"assets/images/media/accelerate/accelerate2.gif": "28a28362f4304aa740f3dc0f99cad506",
"assets/images/media/accelerate/accelerate2.jpg": "bce1cb9394e090ae6dce7a8a0815dd4f",
"assets/images/media/accelerate/accelerate3.gif": "17fba4ccdd2947d597a35be89e7d7afe",
"assets/images/media/accelerate/accelerate3.jpg": "797ae77c54cb496cf416d4335d46c0d5",
"assets/images/media/accelerate/accelerate4.gif": "b74cf9784623eaf5ddd60c6b839c143b",
"assets/images/media/accelerate/accelerate_drone1.jpg": "0d85adfa2fcb26f94595a29cf53b14a0",
"assets/images/media/accelerate/accelerate_drone2.jpg": "f4b023eb2e002cae8fcc72e0aaa90c94",
"assets/images/media/accelerate/accelerate_road.jpg": "33d130a005a9cec57789266e039b594c",
"assets/images/media/drone1.jpg": "fc93623576ac123f66f41ee3df1e67d4",
"assets/images/media/drone2.jpg": "87dab645326139a7fa1744eef4a7bf04",
"assets/images/media/drone3.jpg": "8ce59c3fba92b595d2e11098f9330213",
"assets/images/media/drone4.jpg": "bffa54fe1638d4ba940448463ff31868",
"assets/images/media/drone5.jpg": "b5b1c08f29ab7d41683268c8e4689d5f",
"assets/images/media/drone6.jpg": "b6b61677f0aaa4fd72f1f8d82283eb2e",
"assets/images/media/drone7.jpg": "e85962cec1b4a68074707f90998838c2",
"assets/images/media/drone8.jpg": "778b3bf5626b5fa1d2b64dc01fc7a0ec",
"assets/images/media/drone9.jpg": "2bcc145ebc94edc4271a58c825970849",
"assets/images/media/evoque_v2.jpg": "298475e78b53766b057f4437195846e5",
"assets/images/media/light-utopia/in_memoriam_rs3.jpg": "9f43d6f03e83da4ceb59217a1e53eafc",
"assets/images/media/light-utopia/light-utopia.jpg": "b82478e9ebb642e482f6e83d7d115e3b",
"assets/images/media/light-utopia/light_utopia1.gif": "9006c4540375bec8d7724b2d6ed19bfc",
"assets/images/media/light-utopia/light_utopia2.gif": "91a3e39575b9f2b8d98cb66064a68619",
"assets/images/media/light-utopia/light_utopia3.gif": "d17d4a8189f6ac744ef6475f6d8f46ef",
"assets/images/media/light-utopia/light_utopia4.gif": "68676be5d624718cb8517721bd5857b4",
"assets/images/media/protek_25.jpg": "1c2a83e78be91397b984af8031ab0b73",
"assets/NOTICES": "e03c69f2ca5a445119dbc37354fa68cd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/youtube_player_iframe/assets/player.html": "dc7a0426386dc6fd0e4187079900aea8",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"CNAME": "b0f133b06fd01fc94aebc7938491f7f1",
"favicon.png": "965f23b2c4bae7877761bb7c7595af79",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "a294f388689c3c02cec94f7ba18c7012",
"icons/icon-512.png": "cdd688288d8e223bfc8c775c6f80303c",
"icons/Icon-maskable-192.png": "a294f388689c3c02cec94f7ba18c7012",
"icons/Icon-maskable-512.png": "cdd688288d8e223bfc8c775c6f80303c",
"index.html": "61b7e217664cc477e009f39672890bd5",
"/": "61b7e217664cc477e009f39672890bd5",
"main.dart.js": "7e847cbe8c495ddb5b2f9e9cad00d7ee",
"manifest.json": "8df6dd194fa86e32181a0383e137c2df",
"screenshots/screenshot1_narrow.png": "2a400c4c7afe20d01bd3284e46fa4562",
"screenshots/screenshot1_wide.png": "76ca32c484aaf208e711e5246f4205c2",
"screenshots/screenshot2_narrow.png": "087d83225f86dc90d44e6bb00ee33e8a",
"screenshots/screenshot2_wide.png": "7ec99d6c8c25210d34a91997e275d62f",
"screenshots/screenshot3_narrow.png": "793db24199ca89938125ad1d9d599d97",
"screenshots/screenshot3_wide.png": "e39e66e7054e67fc7a01fe49e857acab",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
