import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

def ConstrainedLubricationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lubrication_endgame (A : AdmissibleClass) :
    ConstrainedLubricationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse