import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure ConvergenceTheoryPackage where
  spectralRadiusCondition : Prop
  splittingType : Type
  asymptoticRate : Prop
  contractivityProof : Prop

structure ConvergenceTheoryEvidence (C : ConvergenceTheoryPackage) where
  spectralRadiusConditionClosed : C.spectralRadiusCondition
  asymptoticRateClosed : C.asymptoticRate
  contractivityProofClosed : C.contractivityProof

def ConvergenceTheoryClosed (C : ConvergenceTheoryPackage) : Prop :=
  C.spectralRadiusCondition ∧ C.asymptoticRate ∧ C.contractivityProof

theorem convergence_theory_closed_from_evidence (C : ConvergenceTheoryPackage)
    (E : ConvergenceTheoryEvidence C) : ConvergenceTheoryClosed C := by
  exact And.intro E.spectralRadiusConditionClosed
    (And.intro E.asymptoticRateClosed E.contractivityProofClosed)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse