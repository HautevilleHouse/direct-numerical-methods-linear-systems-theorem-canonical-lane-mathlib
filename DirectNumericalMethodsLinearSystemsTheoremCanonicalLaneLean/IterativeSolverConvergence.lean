import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectLinearSystemMatrixAssembly

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure IterativeSolverConvergencePackage (n : Nat) (M : MatrixAssemblyPackage n) where
  jacobiConvergence : Prop
  gaussSeidelConvergence : Prop
  sorConvergence : Prop
  cgConvergence : Prop

structure IterativeSolverConvergenceEvidence (n : Nat) (M : MatrixAssemblyPackage n)
    (I : IterativeSolverConvergencePackage n M) where
  jacobiConvergenceClosed : I.jacobiConvergence
  gaussSeidelConvergenceClosed : I.gaussSeidelConvergence
  sorConvergenceClosed : I.sorConvergence
  cgConvergenceClosed : I.cgConvergence

def IterativeSolverConvergenceClosed (n : Nat) (M : MatrixAssemblyPackage n)
    (I : IterativeSolverConvergencePackage n M) : Prop :=
  I.jacobiConvergence ∧ I.gaussSeidelConvergence ∧ I.sorConvergence ∧ I.cgConvergence

theorem iterative_solver_convergence_closed_from_evidence
    (n : Nat) (M : MatrixAssemblyPackage n) (I : IterativeSolverConvergencePackage n M)
    (E : IterativeSolverConvergenceEvidence n M I) :
    IterativeSolverConvergenceClosed n M I := by
  exact And.intro E.jacobiConvergenceClosed
    (And.intro E.gaussSeidelConvergenceClosed
      (And.intro E.sorConvergenceClosed E.cgConvergenceClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse