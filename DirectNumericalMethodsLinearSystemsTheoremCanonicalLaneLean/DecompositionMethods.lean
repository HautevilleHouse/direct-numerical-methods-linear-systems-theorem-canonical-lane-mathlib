import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.SolverFoundations

/-!
# Decomposition Methods Package
-/

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure DecompositionMethodsPackage {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P} (L : IterativeRefinementPackage D) where
  luDecompositionStable : Prop
  choleskyFactorExists : Prop
  bandedFactorizationEfficient : Prop
  sparsePatternExploited : Prop

structure DecompositionMethodsEvidence {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P}
    {L : IterativeRefinementPackage D} (C : DecompositionMethodsPackage L) where
  luDecompositionStableClosed : C.luDecompositionStable
  choleskyFactorExistsClosed : C.choleskyFactorExists
  bandedFactorizationEfficientClosed : C.bandedFactorizationEfficient
  sparsePatternExploitedClosed : C.sparsePatternExploited

def DecompositionMethodsClosed {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P}
    {L : IterativeRefinementPackage D} (C : DecompositionMethodsPackage L) : Prop :=
  C.luDecompositionStable ∧ C.choleskyFactorExists ∧
  C.bandedFactorizationEfficient ∧ C.sparsePatternExploited

theorem decomposition_methods_closed_from_evidence
    {M : MatrixRepresentationPackage} {P : PreconditionerPackage M}
    {D : DirectSolverPackage P} {L : IterativeRefinementPackage D}
    (C : DecompositionMethodsPackage L) (E : DecompositionMethodsEvidence C) :
    DecompositionMethodsClosed C := by
  exact And.intro E.luDecompositionStableClosed
    (And.intro E.choleskyFactorExistsClosed
      (And.intro E.bandedFactorizationEfficientClosed E.sparsePatternExploitedClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse