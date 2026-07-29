import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlibCore

def directNumericalMethodsProjection : Projection DirectNumericalMethodsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem direct_numerical_methods_projection_idempotent (x : DirectNumericalMethodsEndgameState) :
    directNumericalMethodsProjection.toFun (directNumericalMethodsProjection.toFun x) = directNumericalMethodsProjection.toFun x := by
  exact directNumericalMethodsProjection.idempotent x

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse