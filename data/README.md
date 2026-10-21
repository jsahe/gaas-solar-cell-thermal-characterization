# Data

The measurement files belong to the Sugiyama Laboratory (RCAST, The University of Tokyo) and are
not distributed. To run the scripts on your own measurements, place files here in this layout:

```
data/
  AM1p5G.csv                      ASTM G173 AM1.5G spectrum: wavelength (nm), irradiance (W/m²/nm)
  Thermal Study/<T>C00_SOL.DAT    one I-V sweep per temperature, T = 15, 20, ..., 70
  Conc. Study/<N>S<T>C00_SOL.DAT  N suns (1-7), T = 15, 25, ..., 75
  Research/Jose/I-V/<id>/<id>-0k_sol.dat     I-V summary, k = 0..8, per sample id
  Research/Jose/EQE/<id>/<id>-0k_00_mes.dat  spectral response, k = 0..2
```

The `.DAT` files are the solar simulator's export. The scripts read Jsc, Voc, fill factor and
efficiency from header lines 20, 21, 25 and 26, and the I-V curve from line 31 onward.

The AM1.5G reference spectrum is public: [NREL, ASTM G173-03](https://www.nrel.gov/grid/solar-resource/spectra-am1.5.html).
