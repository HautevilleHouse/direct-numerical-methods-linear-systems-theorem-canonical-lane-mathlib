import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure LinearSystemAdmittedObject where
  matrix : Type
  vector : Type
  solution : Type
  matrixInvertible : Prop
  conditionNumberBounded : Prop
  conclusion : matrixInvertible ∧ conditionNumberBounded

structure AdmissibleClass where
  object : LinearSystemAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse