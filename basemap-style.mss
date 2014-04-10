/* Author: Adrian Sonnenschein */

Map {
  background-image:url('images/faded_parchment.jpg');
}

#planetosmline {
  [zoom<11]{}
  [zoom=11]{
    /* default line color */
    line-color:#543200;
    line-width:0.2;
    /* surface hydrology */
    [waterway='canal'] {
      line-width:4;
      line-color:#6489ac;
    }
    [waterway='river'] {
      line-width:2;
      line-color:#6489ac;
    }
    [waterway='stream'] {
      line-width:1;
      line-color:#6489ac;
    }
    [waterway='drain'] {
      line-width:0.5;
      line-color:#6489ac;
    }
    [waterway='wash'] {
      line-width:1;
      line-color:#6489ac;
    }
    /* highways and other roads */
    [highway='primary'] {
      line-width:2;
    }
    [highway='secondary'] {
      line-width:1;
    }
    [highway='secondary_link'] {
      line-width:1;
    }
    [highway='tertiary'] {
      line-width:0.5;
    }
    [highway='motorway'] {
      line-width:0.5;
    }
    [highway='motorway_link'] {
      line-width:0.5;
    }
    [highway='trunk'] {
      line-width:0.2;
    }
    [highway='trunk_link'] {
      line-width:0.2;
    }
    [highway='residential'] {
      line-width:0.1;
    }
    [highway='service'] {
      line-width:0.1;
    }
  }
  [zoom>11]{
    /* default line color */
    line-color:#543200;
    line-width:0.2;
    /* surface hydrology */
    [waterway='canal'] {
      line-width:4;
      line-color:#6489ac;
    }
    [waterway='river'] {
      line-width:2;
      line-color:#6489ac;
    }
    [waterway='stream'] {
      line-width:1;
      line-color:#6489ac;
    }
    [waterway='drain'] {
      line-width:0.5;
      line-color:#6489ac;
    }
    [waterway='wash'] {
      line-width:1;
      line-color:#6489ac;
    }
    /* highways and other roads */
    [highway='primary'] {
      line-width:4;
    }
    [highway='secondary'] {
      line-width:1.5;
      line-gamma:2;
      line-gamma-method:none;
    }
    [highway='secondary_link'] {
      line-width:2;
    }
    [highway='tertiary'] {
      line-width:1;
    }
    [highway='motorway'] {
      line-width:1;
    }
    [highway='motorway_link'] {
      line-width:1;
    }
    [highway='trunk'] {
      line-width:1;
    }
    [highway='trunk_link'] {
      line-width:1;
    }
    [highway='residential'] {
      line-width:0.3;
    }
    [highway='service'] {
      line-width:0.3;
    }
  }
  [zoom>=14]{
    /* default line color */
    line-color:#543200;
    line-width:0.2;
    /* surface hydrology */
    [waterway='canal'] {
      line-width:4;
      line-color:#6489ac;
    }
    [waterway='river'] {
      line-width:2;
      line-color:#6489ac;
    }
    [waterway='stream'] {
      line-width:1;
      line-color:#6489ac;
    }
    [waterway='drain'] {
      line-width:0.5;
      line-color:#6489ac;
    }
    [waterway='wash'] {
      line-width:1;
      line-color:#6489ac;
    }
    /* highways and other roads */
    [highway='primary'] {
      line-width:4;
    }
    [highway='secondary'] {
      line-width:1.5;
      line-gamma:2;
      line-gamma-method:none;
    }
    [highway='secondary_link'] {
      line-width:2;
    }
    [highway='tertiary'] {
      line-width:1;
    }
    [highway='motorway'] {
      line-width:1;
    }
    [highway='motorway_link'] {
      line-width:1;
    }
    [highway='trunk'] {
      line-width:1;
    }
    [highway='trunk_link'] {
      line-width:1;
    }
    [highway='residential'] {
      line-width:0.7;
    }
    [highway='service'] {
      line-width:0.3;
    }
  }
}
