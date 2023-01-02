\version "2.18.2"
% Alone Together
% Bill Evans Rendition

\header
{ title = "Magyal Blues"
  
  	
}
pianoRH = 
{
  
  \relative 
  {
  
      {	
        % M1
       r8 c' \tuplet 3/2 { d es e } g4 a8 g 
       \tuplet 3/2 { c d c } bes a g f d es 
       e4 c8 bes~ bes2 
       r2 r8 a c d 
       es c d c r 8 ges' \tuplet 3/2 { f es d } 
       c  es g bes a f ges a 
       g4 \appoggiatura es16  e8 c~ c4 bes8 g~ g2 r8 g a c 
       d4 e8 c r g a c 
       d4 e8 c~ c4 r  a c c r4 r8 <g des' f> r 4 
       r8 <f a c e> r <f as b e>
      } 
      

      
  } 
}		% end of PianoRH

pianoLH = 
{
  
  \relative 
  {
    c,2 e f ges g c,4. e8
    g4 c, g' ges 
    f2 c f,  fis g e' 
    a,4. cis8 e4 es 
    d2 f g b, 
    c4. as'8 a4. es8 
    d4 as' g des
    



  }

}    % end of pianoLH

bass = 
{
  
  \relative 
  {  
    a b c d
  }

}

%========================SCORE=====================
\score {
  \new StaffGroup <<

    \new PianoStaff <<
    
      \new Staff  \with {instrumentName = #"Piano " }
      {
              \tempo 4=120
        \key f \major		
        \pianoRH
      }  % end of treble staff

      \new Staff 
      {
        \key f \major
        \clef "bass"
        \pianoLH
      } % end of bass staff

    >>
    
    \chords {       }
    
%NOTE:remove block comment below to include staff for separate Bass line
%{
    \new Staff \with {instrumentName = #"Bass " }

    {

      \key f \major
      \clef "bass"
      \bass
   
    } % end of Standing Bass
    %}
  >>   % end of Staff Group for Keyboard & Baass
  \layout {}
 %	\midi {}
}    % end of score
