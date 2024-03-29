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

%\pointAndClickOff      % This is used to disable the note - by - note links that Frescobaldi needs
% Following functions are used to create links to a Youtube video of the lesson.

baseURL = "https://youtu.be/bsis_aOROEQ"   % MUST BE CHANGED TO ACTUAL URL
#(define-markup-command (refer layout props tmin tsec) (number? number?)
   (interpret-markup layout props
                     (markup #:with-url (format #f "~a&t=~am~as" baseURL tmin tsec) (format "R ~a:~a" tmin tsec))))

vl  =
#(define-music-function (tmin tsec) (number? number?)
   #{
    ^\markup\refer #tmin #tsec
   #})


baseKey = c      % Used for all score renderings


%{       =============== Template for Score Detail ==================

\markup {
  \column { \hspace #2
        \line \fontsize #5 {Measure 13}
        \line {   }
        \hspace #2
         }   % end of column
}        %end of markup

\scoreSection "" \baseKey \RH \LH \chords {a }
%}

soprano = {
    \relative c'  { 
      c2
}		% end of soprano

alto = {
    \relative c'  { 
      c2
  } 
}		% end of alto

tenor = {
    \relative c'  { 
      c2
  } 
}		% end of tenor
bass = {
    \relative c'  { 
      c2
  } 
}		% end of bass

%    =======================================
%              Modify or Delete all that follows ... it's just a template!
%    =======================================


%\scoreSection "Score Section Sample" f \pianoRH \pianoLH \chords {a}
%========================SCORE=====================
\paper { #(set-paper-size "letter") }
\book {
   \bookOutputName "lilypond template"
\score {
  \new StaffGroup <<

    \new PianoStaff <<
    
    \chords {      }
    
      \new Staff  \with {instrumentName = #"Piano " }   {
        \tempo 4=120
        \key c \major		
        << {\soprano } \\ {\alto} >>
      }  % end of treble staff

      \new Staff   {
        \key c \major
        \clef "bass"
        << {\tenor } \\ {\bass} >>
      } % end of bass staff

    >>
    
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
}    % end of Book