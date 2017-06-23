# FastNoise-wasm

### Building

```
git clone --recursive https://github.com/grind086/FastNoise-wasm.git
emcc --bind --std=c++11 --s WASM=1 FastNoise/FastNoise.cpp EMBindings.cpp -o bin/FastNoise.js
```

## API

```javascript
const FNModule = require('fastnoise-wasm');
const FastNoise = FNModule.FastNoise;

const fastNoise = new FastNoise(1337);

fastNoise.noiseType = FNModule.NoiseType.Perlin;
fastNoise.value2D(1, 1);
```

### FNModule.FastNoise

#### Constructor
* `new FastNoise(seed)`

#### Properties
* `FastNoise.seed`
* `FastNoise.frequency`
* `FastNoise.interp`
* `FastNoise.noiseType`
* `FastNoise.interp`
* `FastNoise.fractalOctaves`
* `FastNoise.fractalLacunarity`
* `FastNoise.fractalGain`
* `FastNoise.fractalType`
* `FastNoise.cellularDistanceFunction`
* `FastNoise.cellularJitter`
* `FastNoise.gradientPerturbAmp`

#### Methods
* `FastNoise.value2D(x, y)`
* `FastNoise.valueFractal2D(x, y)`
* `FastNoise.perlin2D(x, y)`
* `FastNoise.perlinFractal2D(x, y)`
* `FastNoise.simplex2D(x, y)`
* `FastNoise.simplexFractal2D(x, y)`
* `FastNoise.cellular2D(x, y)`
* `FastNoise.whiteNoise2D(x, y)`
* `FastNoise.whiteNoiseInt2D(x, y)`
* `FastNoise.cubic2D(x, y)`
* `FastNoise.cubicFractal2D(x, y)`
* `FastNoise.getNoise2D(x, y)`

* `FastNoise.value3D(x, y, z)`
* `FastNoise.valueFractal3D(x, y, z)`
* `FastNoise.perlin3D(x, y, z)`
* `FastNoise.perlinFractal3D(x, y, z)`
* `FastNoise.simplex3D(x, y, z)`
* `FastNoise.simplexFractal3D(x, y, z)`
* `FastNoise.cellular3D(x, y, z)`
* `FastNoise.whiteNoise3D(x, y, z)`
* `FastNoise.whiteNoiseInt3D(x, y, z)`
* `FastNoise.cubic3D(x, y, z)`
* `FastNoise.cubicFractal3D(x, y, z)`
* `FastNoise.getNoise3D(x, y, z)`

* `FastNoise.simplex4D(x, y, z, w)`
* `FastNoise.whiteNoise4D(x, y, z, w)`
* `FastNoise.whiteNoiseInt4D(x, y, z, w)`

## TODO

* GetCellularNoiseLookup
* SetCellularNoiseLookup
* GetCellularDistance2Indices
* SetCellularDistance2Indices
* GradientPerturb
* GradientPerturbFractal
