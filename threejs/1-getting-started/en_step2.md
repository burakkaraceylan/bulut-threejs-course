# Adding Objects to a Scene:

Now that we have a basic scene set up, we can start adding objects to it. Three.js provides a number of built-in geometric primitives that we can use to create objects, such as cubes, spheres, and planes.

```javascript
// Create a box
const boxGeometry = new THREE.BoxGeometry(1, 1, 1);
const boxMaterial = new THREE.MeshBasicMaterial({ color: 0xff0000 });
const box = new THREE.Mesh(boxGeometry, boxMaterial);

// Add the box to the scene
scene.add(box);
```

This code creates a box using a BoxGeometry object with its width, height and depth set to 1 and a MeshBasicMaterial object with its color set to 0xff0000 which is the hex code for the color red, and then adds the box to the scene using the add() method. Finally, we render the scene using the renderer and camera.

Copy and paste this code block between

```javascript
const scene = new THREE.Scene();
```

and

```javascript
renderer.render(scene, camera);
```

Again save the file and refresh the preview tab. Voila! A red box appears in the scene. However it looks more like a 2D square than a 3D box. That is because the box is placed directly in front of the camera. In the next lesson, let's move the box and the camera a bit to see that it is actually a 3D object.
