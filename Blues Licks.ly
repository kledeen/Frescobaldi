\version "2.18.2"
% File Description


\header
	{ title = "Blues Vocabulary" }
	
%{
%++++++++++++++++++++++++++++++++
%
% Scheme Function to generate a complete score 
%
%++++++++++++++++++++++++++++++++

scoreSection =
#(define-scheme-function (myTitle  myRight myLeft) (string? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
           \include "IndianaChords.ly"  
           \new Staff { \key aes \major #myRight }
           \new Staff  { \key aes \major  \clef "bass"  #myLeft }  
         >>
     }  
    #})
%}	

\score 
{

	\new StaffGroup <<
		\chords
		{

		}  % end of chords

	\new Staff 
	{

		\key f \major
		\clef  "treble"
		
		
		\relative c'
		{
			\acciaccatura bes'16    b8 bes as f~ f2
			\bar "||"
			f'8 es b bes as f4  f8
		        \acciaccatura as16  <a c>8 f <bes d> f   \acciaccatura as16 <a c>4. f8
		        \acciaccatura as16 <a c>8 f <bes d> <a c>~ <a c>4. f8
		        \acciaccatura as16  <a c>8 f <bes d> f   \acciaccatura c'16 <c es>4. f,8
		        \acciaccatura as16  <a c>8 f <bes d> f   \acciaccatura b16 <c es>8 f, <bes d> f
		          \acciaccatura as16  <a c>8 f <bes d> f \acciaccatura c'16 <c es>8 f, <bes d> f
		          bes8 \acciaccatura {c16 bes}  f8 as f~ f2
		          <f' as>4 es8  b bes as f f 
		          \bar "||"
		           \acciaccatura b'16 <c f>8 f, <bes d> f  \acciaccatura as16 <a c>8 f d-3 c-2
		            \acciaccatura b16 <c f>8 f, <bes d> f  \acciaccatura as16 <a c>8 f d-3 c-2
		        	 \acciaccatura b'16 <c f>8 f, <bes d> f  \acciaccatura as16 <a c>8 f d-3 c-2
		        	 \bar "||"

		}
	}  % end of treble staff

	\addlyrics 
	{

	}      % end of lyrics

	\new Staff 
	{

		\key f \major
		\clef "bass"
		
		\relative c
		{
			\repeat unfold 16 {<es a d>1}
		}

	}  % end of bass staff


	>>      % end of staff group
	\layout {}
%	\midi {}
}    % end of score

