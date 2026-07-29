import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure IterativeSolverPackage where
  method : Type
  iterationMatrix : Type
  convergenceRate : Prop
  spectralRadiusBound : Prop
  preconditionerAvailable : Prop

structure IterativeSolverEvidence (I : IterativeSolverPackage) where
  convergenceRateClosed : I.convergenceRate
  spectralRadiusBoundClosed : I.spectralRadiusBound
  preconditionerAvailableClosed : I.preconditionerAvailable

def IterativeSolverClosed (I : IterativeSolverPackage) : Prop :=
  I.convergenceRate ∧ I.spectralRadiusBound ∧ I.preconditionerAvailable

theorem iterative_solver_closed_from_evidence (I : IterativeSolverPackage)
    (E : IterativeSolverEvidence I) : IterativeSolverClosed I := by
  exact And.intro E.convergenceRateClosed
    (And.intro E.spectralRadiusBoundClosed E.preconditionerAvailableClosed)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse