\version "2.20.2"


\header { title = "Lilypond Template" }
 \include "lilyjazz.ily"
\include "jazzchords.ily"
\include "jazzextras.ily"
\include "UsefulLilyFns.ly"

% -----------  Useful Functions -------------
%{
     \rs                                                          displays a single slash
     \comp #m                                              displays m slashes
     \scoreSection title pitch rh lh chords      displays a score 
%}


pianoRH = 
{
  
  \relative 
  {
  
      {	
        % M1
        a b c d 
        \rs
        r4 r2
        \comp #4
      } 

      
  } 
}		% end of PianoRH

pianoLH = 
{
  
  \relative 
  {
    d2 e f g
    



  }

}    % end of pianoLH

bass = 
{
  
  \relative 
  {  
    a b c d
  }

}

%    =======================================
%              Modify or Delete all that follows ... it's just a template!
%    =======================================


\scoreSection "Score Section Sample" f \pianoRH \pianoLH \chords {a}
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
