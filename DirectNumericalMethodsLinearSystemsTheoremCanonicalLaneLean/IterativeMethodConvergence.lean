import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure IterativeMethodConvergencePackage where
  methodType : String
  iterationMatrix : Type
  spectralRadiusCondition : Prop
  convergenceRate : Prop
  errorEstimate : Prop

structure IterativeMethodConvergenceEvidence
    (I : IterativeMethodConvergencePackage) where
  spectralRadiusConditionClosed : I.spectralRadiusCondition
  convergenceRateClosed : I.convergenceRate
  errorEstimateClosed : I.errorEstimate

def IterativeMethodConvergenceClosed
    (I : IterativeMethodConvergencePackage) : Prop :=
  I.spectralRadiusCondition ∧ I.convergenceRate ∧ I.errorEstimate

theorem iterative_method_convergence_closed_from_evidence
    (I : IterativeMethodConvergencePackage)
    (E : IterativeMethodConvergenceEvidence I) :
    IterativeMethodConvergenceClosed I := by
  exact And.intro E.spectralRadiusConditionClosed
    (And.intro E.convergenceRateClosed E.errorEstimateClosed)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse