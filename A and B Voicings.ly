\version "2.18.2"
% File Description


\header
	{ title = "A and B Voicings" 

	}



majSixRH = \relative c' {
        <e g a d>1
       <f as bes es> <fis a b e> <g bes c f>
       <gis b cis fis> <a c d g>
       <es as bes des> <e a b d> <f bes c es> <fis b cis e>
       <g c d f> <gis cis dis fis>
         
                  \bar "|."
      }
 majSixLH = \relative c {
  <<  { <e g  a d >1 }  \\ {  r2  c,}  >>
  <<  { <f 'as bes es>1 }  \\ { r2 des,  }  >>
  <<  { <fis' a b e>1 }  \\ { r2 d,  }  >>
  <<  { <g' bes c f>1  }  \\ { r2 es,  }  >>
  <<  { < gis' b cis fis>1   }  \\ { r2  e,  }  >>
  <<  { <a' c d g>1  }  \\ { r2  f,  }  >>
  <<  { <es' as bes des >1  }  \\ { r2 ges,   }  >>
  <<  { <e' a b d>1 }  \\ { r2 g,  }  >>
  <<  { <f' bes c es>1 }  \\ { r2  as,   }  >>
  <<  { <fis' b cis e>1  }  \\ { r2 a,}  >>
  <<  { <g' c d f>1  }  \\ { r2 bes,   }  >>
  <<  {  <gis' cis dis fis>1 }  \\ { r2 b, }  >>
}

majSevenLH = \relative c {
  <<  { <e g b d > }  \\ {  r2  c,}  >>
  <<  { <f' as c es>1 }  \\ { r2 des,}  >>
  <<  { <fis' a cis e>1 }  \\ { r2 d,}  >>
  <<  {<g' bes d f >1  }  \\ { r2 es,}  >>
  <<  {  <gis' b dis fis>1  }  \\ { r2  e,}  >>
  <<  { <a' c e  g>1  }  \\ { r2  f, }  >>
  <<  {  < e' as bes des>1  }  \\ { r2 ges,  }  >>
  <<  { <fis' a b d> 1 }  \\ { r2 g,}  >>
  <<  { <g' bes c  es>1  }  \\ { r2  as,}  >>
  <<  {  <gis' b cis e>1  }  \\ { r2 a, }  >>
  <<  { <a' c d f>1  }  \\ { r2 bes,  }  >>
  <<  { <ais' cis dis fis>1   }  \\ { r2 b, }  >>

}

majSevenRH = \relative c' { <e g b d>1^"C maj 7" 
                <f as c es>^"Db"
                 <fis a cis e>^"D"
                <g bes d f>^"Eb"
                <gis b dis fis>^"E" 
                <a c e g>^"F"
                <e as bes des>^"Gb"
      
                <fis a b d>^"G"
                <g bes c es>^"Ab"
                <gis b cis e>^"A"
                <a c d f>^"Bb"
                <ais cis dis fis>^"B"
                \bar "|."
      }
   
 domLH = \relative c {
     <<  { < f a b e>1  }  \\ { r2   g, }  >>
     <<  { <ges' bes c f >1  }  \\ { r2  as,  }  >>
     <<  { <g' b cis fis >1  }  \\ { r2 a,   }  >>
     <<  { <as' c d g>1  }  \\ { r2   bes, }  >>
     <<  { <a' cis dis gis >1  }  \\ { r2   b, }  >>
     <<  { < bes' d e>1  }  \\ { r2  c,  }  >>
     <<  { < f bes ces>1  }  \\ { r2  des,  }  >>
     <<  { <fis' b c >1  }  \\ { r2  d,  }  >>
     <<  { <g' c des f >1  }  \\ { r2  es,  }  >>
     <<  { <gis' cis d >1  }  \\ { r2 e,   }  >>
     <<  { <a' d es g >1  }  \\ { r2  f,  }  >>
     <<  { <bes' es fes >1  }  \\ { r2  ges,  }  >>
       
 }
 domRH = \relative c' { <f a b e>1^"G7 (V of C)"
                       <ges bes c f>^"Ab7" 
                         <gis b cis fis>^"A7" 
                         <as c d g>^"Bb7" 
                         <a cis dis gis>^"B7"
                        <bes d e a>^"C7"
                         <f bes ces es>^"Db7"
                         <fis b c e>^"D7"
                        <g c des f>^"Eb7"
                         <gis cis dis fis>^"E7"
                         <a d es g>^"F7"
                        <bes es fes as>^"Gb7"
                \bar "|."
                        
 }

minRH = \relative c' {
   <f a  c e>1^"D-7"
    <ges bes des f>^"Eb-7"
    <g b d fis>^"E-7"
    <as c es g>^"F-7"
    <a cis e gis>^"F#-7"
    <bes d f a>^"G-7"
    <ges bes ces es>^"Ab-7"
    <g  b c e>^"A-7"
    <as c d f>^"Bb-7"
    <a cis d fis>^"B-7"
    <bes d es g>^"C-7"
    <ces es fes as>^"Db-7"
                \bar "|."

}
minLH = \relative c {
       <<  { <f a c e >1  }  \\ { r2   d, }  >> 
     <<  { < ges' bes des f>1  }  \\ { r2  es,  }  >>
     <<  { <g' b d fis>1  }  \\ { r2 e,   }  >>
     <<  { <as' c es g>1  }  \\ { r2 f,   }  >>
     <<  { < a' cis e gis>1  }  \\ { r2 fis,   }  >>
     <<  { <bes' d f a>1  }  \\ { r2 g,   }  >>
     <<  { <ges' bes ces es>1  }  \\ { r2 as,   }  >>
     <<  { <g'   b c e>1  }  \\ { r2  a,  }  >>
     <<  { <as' c des f>1  }  \\ { r2  bes,  }  >>
     <<  { <a' cis d  fis>1  }  \\ { r2 b,   }  >>
     <<  { <bes' d es g>1  }  \\ { r2 c,   }  >>
     <<  { <ces' es fes >1  }  \\ { r2 des,   }  >>

}

halfdimLH = \relative c {
      <<  { <f as c e>1  }  \\ { r2  d,  }  >>
      <<  { <ges' a des f>1  }  \\ { r2  es,  }  >>
      <<  { <g' bes d fis>1  }  \\ { r2  e,  }  >>
      <<  { <as' ces es g>1  }  \\ { r2  f,  }  >>
      <<  { <a' c e gis>1  }  \\ { r2  fis,  }  >>
      <<  { <bes' des f a>1  }  \\ { r2  g,  }  >>
      <<  { <fis' ais b d >1  }  \\ { r2  gis,  }  >>
      <<  { <g' b c  es>1  }  \\ { r2  a,  }  >>
      <<  { <as' c des e>1  }  \\ { r2 bes ,  }  >>
      <<  { <a' cis d f>1  }  \\ { r2 b,   }  >>
      <<  { <bes' d es ges>1  }  \\ { r2 c,   }  >>
      <<  { <b' es fes  g>1  }  \\ { r2 des,   }  >>

  
}
halfdimRH = \relative c' {
   e1^"Dø"
   f1^"Ebø"
   fis1^"Eø"
   g1^"Fmø"
   gis1^"F#ø"
   a1^"Gø"
   d,1^"Abø"
   es1^"Aø"
   fes1^"Bbø"
   f1^"Bø"
   ges1^"Cø"
   g1^"Dbø"
    \bar "|."

}

\markup {
  'A' voicings are used from C to F. }
\markup {
  'B' voicings from Gb to B.
}
\markup {
  Major 6th
}
\score 
{
	\new StaffGroup <<
	\new Staff  {
		\key c \major	
		\majSixRH
	}  % end of treble staff
	\new Staff 
	{
		\key c \major
		\clef "bass"
		<<
		\majSixLH
		
		\figures { <9 6 5 3>1
		          r1 r r r  r
		          <5 3 9 6>1 
		}
		>>
	}  % end of bass staff
	>>      % end of staff group


}

 \markup {
  Major 7th
}
\score 
{
	\new StaffGroup <<
	\new Staff  {
		\key c \major	
		\majSevenRH
	}  % end of treble staff
	\new Staff 
	{
		\key c \major
		\clef "bass"
		<<
		\majSevenLH
		\figures {  <9 7 5 3>1
		          r1 r r r  r
		          <5 3 9 7>1
		}
		>>
	}  % end of bass staff
	>>      % end of staff group


}
               
\markup {
  Dominant chord voicings.  Selection of A or B is based on the parent key.
}
\score 
{
	\new StaffGroup <<
	\new Staff  {
		\key c \major	
		\domRH
	}  % end of treble staff
	\new Staff 
	{
		\key c \major
		\clef "bass"
		<<
		\domLH
		\figures { <6 3 9 7>1  
		          r1 r r r  r
		          <9 7 6 3>2 
		}
		>>
	}  % end of bass staff
	>>      % end of staff group

}
                
\markup {
  Minor chord voicings. Treated as 2 of parent key. D-7 is ii of C, hence A voicing.
}
\score 
{
	\new StaffGroup <<
	\new Staff  {
		\key c \major	
		\minRH
	}  % end of treble staff
	\new Staff 
	{
		\key c \major
		\clef "bass"
		<<
		\minLH
		\figures { <9 7 5 3>1  
		          r r r r  r
		          <5 3 9 7> 
		}
		>>
	}  % end of bass staff
	>>      % end of staff group

}
      \pageBreak          
\markup {
  Half Diminshed chord voicings. Treated as vii of parent key, but based on ii with flat 5 .
}
\score 
{
	\new StaffGroup <<
	\new Staff  {
		\key c \major	
		\halfdimRH
	}  % end of treble staff
	\new Staff 
	{
		\key c \major
		\clef "bass"
		<<
		\halfdimLH
		\figures { <9 7 5- 3>1  
		          r r r r  r
		          <5- 3 9 7> 
		}
		>>
	}  % end of bass staff
	>>      % end of staff group

}


\layout {}
%	\midi {}
%}    % end of score

