/*BOUNDARIES*/
#boundaries_pol [zoom>=10] {
  polygon-fill: @boudaries-pol;
  opacity: 1;
} 

#coloured_boundaries [zoom<=9] {
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    polygon-fill: #DFFFDA;
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    polygon-fill: #F0E6F2;
    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Ломоносовский район'],
  [name='Сосновоборский городской округ']{
    polygon-fill: #E5D7D3;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    polygon-fill: @boudaries-pol;
    }
}

#boundaries_inwater {
  line-color: @water_label;
  line-width: 0.3;
  line-dasharray: 5,8; 
} 
#boundaries_line [zoom<=10] {
    ::outline {
    line-color: darksalmon;
    line-width: 0.3;
    }
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    line-offset: -2;
    line-color: #b1d2ac;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    line-offset: -2;
    line-color: #d7bcdc;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Ломоносовский район'],
  [name='Сосновоборский городской округ']{
    line-offset: -2;
    line-color: #d0b6af;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    line-offset: -2;
    line-color: #e3e39c;
    line-opacity: 0.5;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
}

#boundaries_line [zoom>=10] {
    ::outline {
    line-color: darksalmon;
    line-width: 0.3;
    }
  [name='Кингисеппский район'],
  [name='Тихвинский район'],
  [name='Гатчинский район'],
  [name='Кировский район']{
    line-offset: -2;
    line-color: #b1d2ac;
    line-opacity: 0.3;
    line-width: 9; 
    line-join: round;
    line-cap: round;
    }
  [name='Волосовский район'],
  [name='Лодейнопольский район'],
  [name='Всеволожский район'] {
    line-offset: -2;
    line-color: #d7bcdc;
    line-opacity: 0.3;
    line-width: 9; 
    line-join: round;
    line-cap: round;
    }
  [name='Лужский район'],
  [name='Киришский район'],
  [name='Выборгский район'],
  [name='Бокситогорский район'],
  [name='Ломоносовский район'],
  [name='Сосновоборский городской округ']{
    line-offset: -2;
    line-color: #d0b6af;
    line-opacity: 0.3;
    line-width: 9; 
    line-join: round;
    line-cap: round;
    }
  [name='Волховский район'],
  [name='Сланцевский район'],
  [name='Подпорожский район'],
  [name='Приозерский район'],
  [name='Ломоносовский район'],
  [name='Тосненский район'] {
    line-offset: -2;
    line-color: #e3e39c;
    line-opacity: 0.3;
    line-width: 9; 
    line-join: round;
    line-cap: round;
    }
}

/*BOUNDARIES LABLES*/ 
#boundaries_labels [zoom>6][zoom<9] {
  text-face-name: @sans_bold;
  text-name: '[name]';
  text-size: 12;
  text-fill: dimgray;
  text-halo-radius: 2;
  text-halo-fill:@halo;
  text-allow-overlap: false;
  text-wrap-width: 30;
  text-spacing: 20;
}  

/*#boundaries_line { 
  ::outline {
    line-offset: -2;
    line-color: darksalmon;
    line-opacity: 0.4;
    line-width: 4; 
    line-join: round;
    line-cap: round;
    }
  line-color: @boundaries-line;
  line-width: 0.2;
  line-join: round;
  line-cap: round;
} 
/*#boundaries_line [zoom>=10] {
  line-color: @boundaries-line;
  line-width: 0.8;
  line-opacity: 0.7;
  line-join: round;
  line-cap: round;
}*/
