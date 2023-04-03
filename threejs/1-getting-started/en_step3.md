# Manipulating Objects in a Scene:

Once we have objects in our scene, we can manipulate them in various ways. Three.js provides a number of methods for manipulating objects, such as changing their position, rotation, and scale.

```javascript
// Rotate the box
box.rotation.x += 0.5;
box.rotation.y += 0.5;

// Move the camera
camera.position.z -= 1;
```

This code rotates the box by 0.5 radians around the x and y axes, and moves the camera closer to the scene by changing its position along the z-axis. Finally, the the scene is again rendered using the renderer and camera.

Copy and paste this code block righ before the line below

```javascript
renderer.render(scene, camera);
```

After saving the file, you will see the red box rotated a bit and closer to the camera.
