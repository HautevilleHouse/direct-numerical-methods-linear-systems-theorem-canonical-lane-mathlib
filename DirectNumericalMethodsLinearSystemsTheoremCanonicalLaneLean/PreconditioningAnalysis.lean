import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectLinearSystemMatrixAssembly

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure PreconditioningAnalysisPackage (n : Nat) (M : MatrixAssemblyPackage n) where
  incompleteLU : Prop
  sparseApproximateInverse : Prop
  conditionNumberImprovement : Prop
  spectralEquivalence : Prop

structure PreconditioningAnalysisEvidence (n : Nat) (M : MatrixAssemblyPackage n)
    (P : PreconditioningAnalysisPackage n M) where
  incompleteLUClosed : P.incompleteLU
  sparseApproximateInverseClosed : P.sparseApproximateInverse
  conditionNumberImprovementClosed : P.conditionNumberImprovement
  spectralEquivalenceClosed : P.spectralEquivalence

def PreconditioningAnalysisClosed (n : Nat) (M : MatrixAssemblyPackage n)
    (P : PreconditioningAnalysisPackage n M) : Prop :=
  P.incompleteLU ∧ P.sparseApproximateInverse ∧ P.conditionNumberImprovement ∧ P.spectralEquivalence

theorem preconditioning_analysis_closed_from_evidence
    (n : Nat) (M : MatrixAssemblyPackage n) (P : PreconditioningAnalysisPackage n M)
    (E : PreconditioningAnalysisEvidence n M P) :
    PreconditioningAnalysisClosed n M P := by
  exact And.intro E.incompleteLUClosed
    (And.intro E.sparseApproximateInverseClosed
      (And.intro E.conditionNumberImprovementClosed E.spectralEquivalenceClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse