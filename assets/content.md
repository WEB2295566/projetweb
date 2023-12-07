** RESPONSIVE DESIGN INGREDIENTS **

1- FLUID LAYOUTS

use % or vh / vw unit instead of px
use max width instead of with

2- RESPONSIVE UNIT

use rem instead of px for the most lenghts
setting 1rem to 10px easy calculations

3- FLEXIBLE IMAGES

use % for image dimensions together with the max-width property

4 - MEDIA QUERIES

to change css property styles on certain viewport width called breakpoints

TYPOGRAPHIE :

ACCUEIL:

NAVIGUATION :LORA BOLD 16 PX
HERO: LIBRE BASKERVILLE 30PX BOLD
BOUTTON CTA HERO LORA 24PX BOLD
ENCHERES A VENIR: RALEWAY 44PX BOLD
3 CARTES
BIOGRAPHIE DU LORD : HEADER RALEWAY AVEC TEXTE LORA

NEWS LETTERS LORA REGULAR MEDIUM & RALEWAY

.section-hero {
background-color: #fef4e6;
padding: 4.8rem 0 9.6rem 0;
}
.hero {
max-width: 130rem;
margin: 0 auto;
padding: 0 3.2rem;
display: grid;
align-items: center;
grid-template-columns: 1fr 1fr;
gap: 9.6rem;
}

.heading-primary {
font-size: 5.2rem;
font-weight: 700;
line-height: 1.05;
color: #333;
letter-spacing: -0.5px;
margin-bottom: 3.2rem;
}
.hero-description {
font-size: 2rem;
line-height: 1.5;
margin-bottom: 4.8rem;
}
.hero-img {
width: 100%;
}
