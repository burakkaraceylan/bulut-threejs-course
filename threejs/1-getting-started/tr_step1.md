# Basit Bir Sahne Oluşturmak:

Bir Three.js sahnesi oluşturmak için üç şeye ihtiyacımız var: işleyici (renderer), kamera ve sahne. İşleyici, sahneyi tarayıcı penceresine işlemekten sorumludur, kamera sahnenin görünümünü belirler ve sahne, görüntülemek istediğimiz tüm nesneleri içerir.

```javascript
// three.js kütüphanesini çağırıyoruz.
import * as THREE from "three";

// Bir işleyici (renderer) nesnesi oluşturuyoruz.
const renderer = new THREE.WebGLRenderer();

// İşleyicimiz renderer'ın boyutunu belirliyoruz.
renderer.setSize(window.innerWidth, window.innerHeight);

// renderer'ı sayfaya ekliyoruz.
document.body.appendChild(renderer.domElement);

// Bir kamera nesnesi oluşturuyoruz.
const camera = new THREE.PerspectiveCamera(
  45,
  window.innerWidth / window.innerHeight,
  1,
  1000
);

// Kameranın konumunu belirliyoruz.
camera.position.set(0, 0, 5);

// Sahne oluşturuyoruz.
const scene = new THREE.Scene();

// Sahneyi, işleyicimiz renderer ile işliyoruz.
renderer.render(scene, camera);
```

Bu kod bir işleyici oluşturur, işleyicinin boyutunu tarayıcı penceresinin boyutuna ayarlar, 45 derecelik görüş alanına sahip bir kamera oluşturur, kamera konumunu ayarlar, bir sahne oluşturur ve ardından işleyici ve kamerayı kullanarak sahneyi işler.

Kaynak dosyalarını açmak için:

`vim app/src/three.js`

Yukarıdaki kodları kopyalayın, i tuşuna basarak INSERT moduna geçin ve yapıştırın, ardından COMMAND modundayken aşağıdaki komutu yazarak kaydedin:

`:w`

Şimdi sonuçları görmek için önizleme sekmesini yenileyin.

Tebrikler! İlk three.js sahnenizi oluşturdunuz! Ama tek görebildiğiniz siyah bir ekran. Bunun nedeni, sahnede henüz hiçbir nesne olmamasıdır. Bir sonraki derste sahneye bazı nesneler ekleyelim.
