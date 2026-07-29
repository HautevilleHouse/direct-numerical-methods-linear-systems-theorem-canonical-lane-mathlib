import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.IterativeMethodConvergence

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure DirectSolverPackage where
  luDecomposition : Prop
  choleskyFactorization : Prop
  qrDecomposition : Prop
  stabilityCondition : Prop
  complexityEstimate : Prop

structure DirectSolverEvidence (D : DirectSolverPackage) where
  luDecompositionClosed : D.luDecomposition
  choleskyFactorizationClosed : D.choleskyFactorization
  qrDecompositionClosed : D.qrDecomposition
  stabilityConditionClosed : D.stabilityCondition
  complexityEstimateClosed : D.complexityEstimate

def DirectSolverClosed (D : DirectSolverPackage) : Prop :=
  D.luDecomposition ∧ D.choleskyFactorization ∧ D.qrDecomposition ∧
  D.stabilityCondition ∧ D.complexityEstimate

theorem direct_solver_closed_from_evidence (D : DirectSolverPackage)
    (E : DirectSolverEvidence D) : DirectSolverClosed D := by
  exact And.intro E.luDecompositionClosed
    (And.intro E.choleskyFactorizationClosed
      (And.intro E.qrDecompositionClosed
        (And.intro E.stabilityConditionClosed E.complexityEstimateClosed)))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse