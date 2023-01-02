  
% -----------  Useful Functions -------------


% Macro to print single slash
rs = {
  \once \override Rest.stencil = #ly:percent-repeat-item-interface::beat-slash
  \once \override Rest.thickness = #0.48
  \once \override Rest.slope = #1.7
  r4
}
comp = #(define-music-function (count) (integer?)
  #{
    \override Rest.stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest.thickness = #0.48
    \override Rest.slope = #1.7
    \repeat unfold $count { r4 }
    \revert Rest.stencil
  #}
)  

%++++++++++++++++++++++++++++++++
%
% Scheme Function to generate a complete score 
%
%++++++++++++++++++++++++++++++++

scoreSection =
#(define-scheme-function (myTitle  myKey myRight myLeft myChords) (string? ly:pitch? ly:music? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
       \chords {#myChords }
           \new Staff { \key #myKey \major #myRight }
           \new Staff  { \key #myKey \major  \clef "bass"  #myLeft }  
         >>
     }  
    #})
