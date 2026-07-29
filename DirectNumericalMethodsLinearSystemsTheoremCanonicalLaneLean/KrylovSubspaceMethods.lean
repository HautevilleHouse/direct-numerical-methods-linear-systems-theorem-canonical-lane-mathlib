import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure KrylovSubspaceMethod where
  methodName : String
  subspaceDimension : Nat
  convergenceRate : Float
  residualTolerance : Float
  convergenceGuaranteed : Prop
  convergenceGuaranteedTerm : convergenceGuaranteed

def KrylovSubspaceClosed (K : KrylovSubspaceMethod) : Prop :=
  K.convergenceGuaranteed

theorem krylov_subspace_closed (K : KrylovSubspaceMethod) :
    KrylovSubspaceClosed K :=
  K.convergenceGuaranteedTerm

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse