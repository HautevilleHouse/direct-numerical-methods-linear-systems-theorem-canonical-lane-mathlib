import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure MatrixStabilityPackage where
  matrixFamily : Type
  conditionNumberBound : Prop
  eigenvalueDistribution : Prop
  spectralRadiusControl : Prop
  stabilityUnderPerturbation : Prop

structure MatrixStabilityEvidence (M : MatrixStabilityPackage) where
  conditionNumberBoundClosed : M.conditionNumberBound
  eigenvalueDistributionClosed : M.eigenvalueDistribution
  spectralRadiusControlClosed : M.spectralRadiusControl
  stabilityUnderPerturbationClosed : M.stabilityUnderPerturbation

def MatrixStabilityClosed (M : MatrixStabilityPackage) : Prop :=
  M.conditionNumberBound ∧ M.eigenvalueDistribution ∧
  M.spectralRadiusControl ∧ M.stabilityUnderPerturbation

theorem matrix_stability_closed_from_evidence (M : MatrixStabilityPackage)
    (E : MatrixStabilityEvidence M) : MatrixStabilityClosed M := by
  exact And.intro E.conditionNumberBoundClosed
    (And.intro E.eigenvalueDistributionClosed
      (And.intro E.spectralRadiusControlClosed
        E.stabilityUnderPerturbationClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse