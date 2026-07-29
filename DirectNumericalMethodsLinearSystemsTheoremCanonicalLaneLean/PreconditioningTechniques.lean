import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure PreconditioningTechnique where
  preconditionerType : Type u
  conditionNumber : Float
  iterationReduction : Float
  preconditionerEffective : Prop
  preconditionerEffectiveTerm : preconditionerEffective

def PreconditioningClosed (P : PreconditioningTechnique) : Prop :=
  P.preconditionerEffective

theorem preconditioning_closed (P : PreconditioningTechnique) :
    PreconditioningClosed P :=
  P.preconditionerEffectiveTerm

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse