import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure ThinFilmApproximationPackage where
  aspectRatioSmall : Prop
  inertiaNeglected : Prop
  pressureGradientDominant : Prop
  lubricationAssumptionValid : Prop

structure ThinFilmApproximationEvidence (T : ThinFilmApproximationPackage) where
  aspectRatioSmallClosed : T.aspectRatioSmall
  inertiaNeglectedClosed : T.inertiaNeglected
  pressureGradientDominantClosed : T.pressureGradientDominant
  lubricationAssumptionValidClosed : T.lubricationAssumptionValid

def ThinFilmApproximationClosed (T : ThinFilmApproximationPackage) : Prop :=
  T.aspectRatioSmall \land T.inertiaNeglected \land T.pressureGradientDominant \land T.lubricationAssumptionValid

theorem thin_film_approximation_closed_from_evidence (T : ThinFilmApproximationPackage) (E : ThinFilmApproximationEvidence T) : ThinFilmApproximationClosed T :=
  And.intro E.aspectRatioSmallClosed (And.intro E.inertiaNeglectedClosed (And.intro E.pressureGradientDominantClosed E.lubricationAssumptionValidClosed))

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse