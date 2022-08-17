\version "2.18.2"
% File Description


\header
	{ title = "Exercises" }

halfwholeRH = {
  \relative c' {
    c8-1 des es e-1 ges g-1 a bes
    c bes a g ges e es des c1
    \break
    
    des8-2 d-3 e-4 f-1 g as bes b-1
    des b bes as g f e d des1
    \break
    
    d8-3 es-4 f-1 ges as a-4 b-1 c d c b a as ges f es d1
  }
  
}

halfwholeLH = {
  \relative c' {
    c,8-4 des es e-1 ges-3 g a-1 bes
    c bes a g ges e es des c1
    \break
    
    des8-4 d-3 e-2 f-1 g as bes b-1
    des b bes as g f e d des1
    \break
    
    d8-2 es-3 f-1 ges-4 as a-2 b-1 c-4 d c b a as ges f es d1
  }
  
}
whoteTone = {
    \relative c' {
      c8-1 d-2 e-1 ges-2 as-3 bes-4 c-5 bes as ges e-1 d-2 c2-1
      des,8 es f g a b des b a g f es des2
    }
}
pentaCrh = {
    \relative c' {
      c8, d e g a c d e g a c d e g a c g a e g d e c d a c g a e g d e c1
    }
}
pentascend = {
    \relative c' {
      c8 d e g d e g a e g a c g a c d a c d e c2
    }
}
pentaFourFive = {
                 \relative c' {
                   c8 d e g a  d, e g a c e, g a c d g, a c d e a, c d e g c, d 
                   e g a d, e g a c4~c2
                 }
}
\score 
{

	\new StaffGroup <<
		\chords
		{

		}  % end of chords

	\new Staff 
	{

		\key c \major
		
		\halfwholeRH
		\break
		\whoteTone
		\break
		\pentaCrh
		\break
		\pentascend
		\break
		\pentaFourFive
	}  % end of treble staff

	\addlyrics 
	{

	}      % end of lyrics

	\new Staff 
	{

		\key c \major
		\clef "bass"
		
		\halfwholeLH

	}  % end of bass staff


	>>      % end of staff group
	\layout {}
%	\midi {}
}    % end of score

