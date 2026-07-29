import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure MultigridSolver where
  gridHierarchy : Type u
  restrictionOperator : Type v
  interpolationOperator : Type w
  convergenceFactor : Float
  multigridConverges : Prop
  multigridConvergesTerm : multigridConverges

def MultigridClosed (M : MultigridSolver) : Prop :=
  M.multigridConverges

theorem multigrid_closed (M : MultigridSolver) :
    MultigridClosed M :=
  M.multigridConvergesTerm

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse