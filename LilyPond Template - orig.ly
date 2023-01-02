\version "2.18.2"
% File Description


\header
	{ title = "Printed Page Title" }
	
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

		\key f
		
		\relative 
		{
			
		}
	}  % end of treble staff

	\addlyrics 
	{

	}      % end of lyrics

	\new Staff 
	{

		\key f \major
		\clef "bass"
		
		\relative 
		{
			
		}

	}  % end of bass staff


	>>      % end of staff group
	\layout {}
%	\midi {}
}    % end of score

