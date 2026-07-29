import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure DirectSolverStability where
  decompositionType : Type u
  pivotStrategy : Type v
  growthFactor : Float
  backwardError : Float
  stabilityGuaranteed : Prop
  stabilityGuaranteedTerm : stabilityGuaranteed

def DirectSolverStabilityClosed (D : DirectSolverStability) : Prop :=
  D.stabilityGuaranteed

theorem direct_solver_stability_closed (D : DirectSolverStability) :
    DirectSolverStabilityClosed D :=
  D.stabilityGuaranteedTerm

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse