# Sahnedeki Nesneleri Manipule Etmek:

Sahnemizdeki nesneleri çeşitli şekillerde değiştirebiliriz. Three.js, nesneleri manipüle etmek için konumlarını, rotasyonlarını ve ölçeklerini değiştirme gibi birçok yöntem sağlar.

```javascript
// Kübü döndürür
box.rotation.x += 0.5;
box.rotation.y += 0.5;

// Kamerayı hareket ettirir
camera.position.z -= 1;
```

Bu kod, kutuyu x ve y eksenleri etrafında 0,5 radyan döndürür ve kamerayı z-ekseni boyunca konumunu değiştirerek sahneye yakınlaştırır. Son olarak, işleyici (renderer) ve kamera kullanılarak sahne tekrar oluşturulur.

Bu kod bloğunu kopyalayıp aşağıdaki satırdan hemen önce yapıştırın.

```javascript
renderer.render(scene, camera);
```

Dosyayı kaydettikten sonra, kırmızı kutunun biraz döndüğünü ve kameraya daha yakın olduğunu göreceksiniz.
