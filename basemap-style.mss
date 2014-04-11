/* Author: Adrian Sonnenschein */

@brown:#543200;
@blue:#6489ac;
@olive:#808000;
@gray:#767676;
@light-brown:#b49374;
@dark-brown:#74583e;
@orange-brown:#d2691e;
@saturated-brown:#a37549;
@desaturated-brown:#91765c;

Map {
  background-image:url('images/faded_parchment.jpg');
}

#planetosmline {
  [zoom=11]{
    /* default line styles */
    line-color:@brown;
    line-width:0.2;
    /* surface hydrology */
    [waterway!='undefined'] {line-color:@blue;}
    [waterway='canal'] {line-width:4;}
    [waterway='river'] {line-width:2;}
    [waterway='stream'] {line-width:1;}
    [waterway='drain'] {line-width:0.5;}
    [waterway='wash'] {line-width:1;}
    /* highways and other roads */
    [highway!='undefined']{line-color:@brown;}
    [highway='primary'] {line-width:2;}
    [highway='secondary'] {line-width:1;}
    [highway='secondary_link'] {line-width:1;}
    [highway='tertiary'] {line-width:0.5;}
    [highway='motorway'] {line-width:0.5;}
    [highway='motorway_link'] {line-width:0.5;}
    [highway='trunk'] {line-width:0.2;}
    [highway='trunk_link'] {line-width:0.2;}
    [highway='residential'] {line-width:0.1;}
    [highway='service'] {line-width:0.1;}
  }
  [zoom>11]{
    /* default line styles */
    line-color:@brown;
    line-width:0.2;
    /* surface hydrology */
    [waterway!='undefined'] {line-color:@blue;}
    [waterway='canal'] {line-width:4;}
    [waterway='river'] {line-width:2;}
    [waterway='stream'] {line-width:1;}
    [waterway='drain'] {line-width:0.5;}
    [waterway='wash'] {line-width:1;}
    /* highways and other roads */
    [highway!='undefined']{line-color:@brown;}
    [highway='primary'] {line-width:4;}
    [highway='secondary'] {line-width:1.5;}
    [highway='secondary_link'] {line-width:2;}
    [highway='tertiary'] {line-width:1;}
    [highway='motorway'] {line-width:1;}
    [highway='motorway_link'] {line-width:1;}
    [highway='trunk'] {line-width:1;}
    [highway='trunk_link'] {line-width:1;}
    [highway='residential'] {line-width:0.3;}
    [highway='service'] {line-width:0.3;}
  }
  [zoom>=14]{
    /* default line color */
    line-color:@brown;
    line-width:0.2;
    /* surface hydrology */
    [waterway!='undefined'] {line-color:@blue;}
    [waterway='canal'] {line-width:4;}
    [waterway='river'] {line-width:2;}
    [waterway='stream'] {line-width:1;}
    [waterway='drain'] {line-width:0.5;}
    [waterway='wash'] {line-width:1;}
    /* highways and other roads */
    [highway!='undefined']{line-color:@brown;}
    [highway='primary'] {line-width:4;}
    [highway='secondary'] {line-width:1.5;}
    [highway='secondary_link'] {line-width:2;}
    [highway='tertiary'] {line-width:1;}
    [highway='motorway'] {line-width:1;}
    [highway='motorway_link'] {line-width:1;}
    [highway='trunk'] {line-width:1;}
    [highway='trunk_link'] {line-width:1;}
    [highway='residential'] {line-width:0.7;}
    [highway='service'] {line-width:0.3;}
  }
}

#planetosmpolygon {
  [boundary='administrative'] {
    ::outline {line-color:@saturated-brown;}
    polygon-fill:@light-brown;
    polygon-opacity:0.2;
  }
  [boundary='national_park'] {
    ::outline {line-color:@olive;}
    polygon-fill:@olive;
    polygon-opacity:0.4;
  }
  [natural='sand'] {polygon-fill:@orange-brown;}
  [natural='sand'] {polygon-fill:@orange-brown;}
  [natural='water'] {polygon-fill:@blue;}
  [building!='undefined'] {
    polygon-fill:@gray;
    building-height:5;
  }
  [landuse='grass'] {polygon-fill:@olive;}
  [landuse='farmland'] {polygon-fill:@olive;}
  [landuse='residential'] {polygon-fill:@light-brown;}
  [landuse='recreation_ground'] {polygon-fill:@olive;}
  [landuse='reservoir'] {polygon-fill:@blue;}
  [water='reservoir'] {polygon-fill:@blue;}
  [water='lake;pond'] {polygon-fill:@blue;}
  [waterway='riverbank'] {polygon-fill:@blue;}
  [area='yes'] {polygon-fill:@saturated-brown;}  
}