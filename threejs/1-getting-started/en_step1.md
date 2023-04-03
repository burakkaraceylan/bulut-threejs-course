# Creating a Simple Scene:

To create a Three.js scene, we need three things: a renderer, a camera, and a scene. The renderer is responsible for rendering the scene to the browser window, the camera determines the view of the scene, and the scene contains all the objects that we want to display.

```javascript
// Import three.js
import * as THREE from "three";

// Create a renderer
const renderer = new THREE.WebGLRenderer();

// Set the size of the renderer
renderer.setSize(window.innerWidth, window.innerHeight);

// Add the renderer to the page
document.body.appendChild(renderer.domElement);

// Create a camera
const camera = new THREE.PerspectiveCamera(
  45,
  window.innerWidth / window.innerHeight,
  1,
  1000
);

// Set the camera position
camera.position.set(0, 0, 5);

// Create a scene
const scene = new THREE.Scene();

// Render the scene
renderer.render(scene, camera);
```

This code creates a renderer, sets the size of the renderer to the size of the browser window, creates a camera with a 45 degree field of view, sets the camera position, creates a scene, and then renders the scene using the renderer and camera.

Open the source file:

`vim app/src/three.js`

Copy the codes above, switch to INSERT mode by pressing i and paste them then save the by typing the following command while in the COMMAND mode:

`:w`

Now refresh the preview tab to see the results.

Congratulations! You have created your first three.js scene! But all you can see is a black screen. That is because there are no objects in the scene yet. Let's add some objects into the scene in the next lesson.
