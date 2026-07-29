import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectSolverFactorization

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure SparseSystemPackage where
  preconditioning : Prop
  iterativeRefinement : Prop
  multigridScheme : Prop
  domainDecomposition : Prop
  parallelization : Prop

structure SparseSystemEvidence (S : SparseSystemPackage) where
  preconditioningClosed : S.preconditioning
  iterativeRefinementClosed : S.iterativeRefinement
  multigridSchemeClosed : S.multigridScheme
  domainDecompositionClosed : S.domainDecomposition
  parallelizationClosed : S.parallelization

def SparseSystemClosed (S : SparseSystemPackage) : Prop :=
  S.preconditioning ∧ S.iterativeRefinement ∧ S.multigridScheme ∧
  S.domainDecomposition ∧ S.parallelization

theorem sparse_system_closed_from_evidence (S : SparseSystemPackage)
    (E : SparseSystemEvidence S) : SparseSystemClosed S := by
  exact And.intro E.preconditioningClosed
    (And.intro E.iterativeRefinementClosed
      (And.intro E.multigridSchemeClosed
        (And.intro E.domainDecompositionClosed E.parallelizationClosed)))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse