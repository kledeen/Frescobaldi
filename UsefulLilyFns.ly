  
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
%    Function to generate links to Youtube videos 
%    In both score, and in markup comments
%
%     usage is \vl min sec  (eg \vl 3 45) in music
%                  \rtext #min #sec " link text" inside markup
%
%++++++++++++++++++++++++++++++++

%baseURL = "https://youtu.be/fbYvesP0rnY"

#(define-markup-command (refer layout props tmin tsec) (number? number?)
   (interpret-markup layout props
                     (markup   #:with-color blue #:with-url (format #f "~a&t=~am~as" baseURL tmin tsec) (format "R ~a:~a" tmin tsec))))
#(define-markup-command (rtext  layout props tmin tsec rtx) (number? number? string?)
   (interpret-markup layout props
                     (markup   #:with-color blue #:with-url (format #f "~a&t=~am~as" baseURL tmin tsec) rtx)))
vl  =
#(define-music-function (tmin tsec) (number? number?)
   #{
    ^\markup\refer #tmin #tsec
   #})
#(define-markup-command (coa layout props x) (string?)
   (interpret-markup layout props
                     (markup   #:with-color red (format #f "[~a]" x) )))
co = 
#(define-music-function (x) (string?)
   #{
    ^\markup\coa #x
   #})

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
scoreSectionThree =
#(define-scheme-function (myTitle  myKey myRight myLeft myChords) (string? ly:pitch? ly:music? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
       \chords {#myChords }
           \new Staff {  \time 3/4  \key #myKey  \major #myRight }
           \new Staff  { \key #myKey \major  \clef "bass"  #myLeft }  
         >>
     }  
    #})

satbScore =
#(define-scheme-function (myTitle  myKey mySop myAlto myTenor myBass myChords) (string? ly:pitch? ly:music? ly:music? ly:music? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
       \chords {#myChords }
           \new Staff { \key #myKey \major << { #mySop} \\ { #myAlto} >> }
           \new Staff  { \key #myKey \major  \clef "bass"  << { #myTenor} \\ {#myBass }  >> }
         >> 
     }  
    #})
highlight = 
#(define-scheme-function (theNotes) (ly:music?)
    #{
      \override NoteHead.color = "red"
      \override Stem.color = "red"
      #theNotes
      \revert NoteHead.color
      \revert Stem.color
      #})
    
