namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure DirectNumericalMethodsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DirectNumericalMethodsAdmittedObject where
  space : DirectNumericalMethodsSpace
  linearSystemWellPosed : Prop
  directMethodConvergent : Prop
  errorBoundAchieved : Prop
  conclusion : errorBoundAchieved

structure DirectNumericalMethodsEndgameState where
  object : DirectNumericalMethodsAdmittedObject

def DirectNumericalMethodsWitnessClosed (O : DirectNumericalMethodsAdmittedObject) : Prop :=
  O.errorBoundAchieved

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse