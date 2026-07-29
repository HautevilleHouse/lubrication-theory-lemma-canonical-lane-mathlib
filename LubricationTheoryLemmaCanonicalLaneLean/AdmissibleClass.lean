import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LubricationTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LubricationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LubricationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LubricationTheoryLemmaCanonicalLaneLean
end HautevilleHouse