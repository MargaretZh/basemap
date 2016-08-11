/*HIGHWAYS*/
#highways{
  [highway='motorway'],[highway='trunk'] {
    line-color: @highway; 
    line-width: 0.4;
    opacity: 0.7;
    } 
  [highway='primary']{
    line-color: @highway; 
    line-width: 0.1;
    }
} 
#highways [highway='secondary'][zoom>=9] {
  line-color: @highway; 
  line-width: 0.1;
}
#highways [zoom>9][zoom<12] {
  [highway='motorway'],
  [highway='trunk'],
  [highway='primary'] {
    ::outline {
      line-color: @highway_outline;
      line-width: 1;
      }
    line-color: @highway; 
    line-width: 2;
      }
  [highway='secondary'] {
    line-color: @highway; 
    line-width: 0.7;
    }
  [highway='tertiary'] {
    line-color: @highway; 
    line-width: 0.7;
    line-opacity: 0.3;
    }  
  [highway='motorway_link'],
  [highway='trunk_link'],
  [highway='primary_link'] {
    line-color: @highway; 
    line-width: 0.5;
    }
}
#highways [zoom>=12] {
  [highway='unclassified'],
  [highway='residential'] {
    line-color: @highway; 
    line-width: 0.5;
    line-opacity: 0.3;
    }
  [highway='motorway'],
  [highway='trunk'],
  [highway='primary'],
  [highway='motorway_link'],
  [highway='trunk_link'],
  [highway='primary_link'],
  [highway='secondary'],
  [highway='tertiary']{
    ::outline {
      line-color: @highway_outline;
      line-width: 0.6;
      }
    line-color: @highway; 
    line-width: 1.6;
    }
  [highway='motorway'],
  [highway='trunk'],
  [highway='primary'] {
    ::outline {
      line-color: @highway_outline;
      line-width: 2;
      line-join: round;
      line-cap: round;
      }
    line-color: @highway; 
    line-width: 3;
    line-join: round;
    line-cap: round;
    }
}
#highways [zoom>=13] {
  [highway='service'],
  [highway='living_street'],
  [highway='pedestrian']{
    line-color: @highway; 
    line-width: 0.2;
    line-opacity: 0.5;
    }
  [highway='unclassified'],
  [highway='residential'] {
    line-color: @highway; 
    line-width: 1;
    }
}

/*HIGHWAY LABLES*/
#highways_labels [ref!=''][zoom=9] {
  [highway='motorway'],
  [highway='trunk'] {
    shield-file: url(icons/shields/shield-road_20.svg);
    shield-fill: white;
    shield-size: 8;
    shield-allow-overlap: false;
    shield-face-name: @sans_book;
    shield-name: '[ref]';
    shield-min-distance: 100;
    shield-spacing: 100;
   }
}
#highways_labels [ref!=''][zoom>=10] {
  [highway='motorway'],
  [highway='trunk'] {
    shield-file: url(icons/shields/shield-road_20.svg);
    shield-fill: white;
    shield-size: 8;
    shield-allow-overlap: false;
    shield-face-name: @sans_book;
    shield-name: '[ref]';
    shield-min-distance: 100;
    shield-spacing: 100;
   }
}
#highways_labels [zoom>=16] {
  [highway='living_street'],
  [highway='residential'],
  [highway='pedestrian'],
  [highway='primary'] {
    text-face-name: @sans_italic;
    text-name: [name];
    text-size: 9;
    text-character-spacing: 1.1;
    text-fill: black;
    text-placement: line;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
    text-min-distance:400;
    text-spacing: 400; 
    text-dy: -5;
    }
}