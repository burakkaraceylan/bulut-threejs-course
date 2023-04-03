# Sahnemize Nesneler Eklemek:

Artık temel bir sahne kurulumumuz olduğuna göre, ona nesneler eklemeye başlayabiliriz. Three.js, küpler, küreler ve düzlemler gibi nesneler oluşturmak için kullanabileceğimiz bir dizi basit geometrik şekille beraber gelir.

```javascript
// Bir küp oluşturuyoruz.
const boxGeometry = new THREE.BoxGeometry(1, 1, 1);
const boxMaterial = new THREE.MeshBasicMaterial({ color: 0xff0000 });
const box = new THREE.Mesh(boxGeometry, boxMaterial);

// Kübümüzü sahnemize ekliyoruz.
scene.add(box);
```

Bu kod, genişliği, yüksekliği ve derinliği 1 olarak ayarlanmış bir BoxGeometry nesnesi ve rengi kırmızı rengin onaltılık kodu olan 0xff0000 olarak ayarlanmış bir MeshBasicMaterial nesnesi kullanarak bir kutu oluşturur ve ardından add() yontemini kullanarak kutuyu sahneye ekler. Son olarak, oluşturucu ve kamerayı kullanarak sahneyi oluşturuyoruz.

Yukarıdaki kod bloğunu kopyalayıp,

```javascript
const scene = new THREE.Scene();
```

ve

```javascript
renderer.render(scene, camera);
```

satırlarının arasına yapıştırın.

Dosyayı tekrar kaydedin ve önizleme sekmesini yenileyin. İşte bu kadar! Sahnede kırmızı bir kutu belirir. Ancak, 3 boyutlu bir kutudan çok 2 boyutlu bir kareye benziyor. Bunun nedeni, kutunun doğrudan kameranın önüne yerleştirilmesidir. Bir sonraki derste kutuyu ve kamerayı biraz hareket ettirerek aslında 3 boyutlu bir nesne olduğunu görelim.
