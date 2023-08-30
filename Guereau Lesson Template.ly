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

pianoRH = { \relative c' {
  a b c d
} } % end of piano RH
pianoLH = { \relative c' {
  a b c d
} } % end of piano LH

leadSheet = { \relative c' {
  a4 b c d
}} % end of leadsheet
rbChords = { \chordmode {
  c1
}} % end of Real Book Chords

leadLyrics = { \lyricmode {
  These are the words
}} % end of lyrics

%    =======================================
%              Modify or Delete all that follows ... it's just a template!
%    =======================================


%\scoreSection "Score Section Sample" f \pianoRH \pianoLH \chords {a}
%========================SCORE=====================
\paper { #(set-paper-size "letter") }
\book {
   \bookOutputName "lilypond template"
   \markup {
     \column { 
               \line \fontsize #4 {"Discography "}
               %\line {\with-url "url here" "text here"}
               \line { put some youtube links here }
     \hspace #4 
     }   % end of column
   }        %end of markup
 %   \score {
%   \new StaffGroup <<    
%     \chords {  \rbChords    }
%     
%       \new Staff  \with {instrumentName = #"Piano " }   {
%      
%         \key \baseKey \major		
%         \leadSheet
%         \addlyrics \leadLyrics
%       }  % end of treble staff
%   >>   % end of Staff Group for Keyboard & Baass
% }    % end of score
  \markup \fontsize #6  \fill-line { "Rendition"}
\score {
  
  \new StaffGroup <<
    \new PianoStaff <<   
    \chords {      }   
      \new Staff  \with {instrumentName = #"Piano " }   {     
        \key \baseKey \major		
       \pianoRH
      }  % end of treble staff

      \new Staff   {
        \key \baseKey \major
        \clef "bass"
        \pianoLH
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

\pageBreak
  \markup \fontsize #6  \fill-line { "Lead Sheet"}
  \score {
  \new StaffGroup <<    
    \chords {  \rbChords    }
    
      \new Staff  \with {instrumentName = #"Piano " }   {
     
        \key \baseKey \major		
        \leadSheet
        \addlyrics \leadLyrics
      }  % end of treble staff
  >>   % end of Staff Group for Keyboard & Baass
}    % end of score
}    % end of Book