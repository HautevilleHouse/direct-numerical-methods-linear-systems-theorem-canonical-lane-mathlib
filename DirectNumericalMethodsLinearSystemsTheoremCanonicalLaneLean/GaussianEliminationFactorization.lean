import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectLinearSystemMatrixAssembly

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure GaussianEliminationFactorizationPackage (n : Nat) (M : MatrixAssemblyPackage n) where
  lupFactor : Prop
  forwardSubstitution : Prop
  backwardSubstitution : Prop
  numericStability : Prop

structure GaussianEliminationFactorizationEvidence (n : Nat) (M : MatrixAssemblyPackage n)
    (G : GaussianEliminationFactorizationPackage n M) where
  lupFactorClosed : G.lupFactor
  forwardSubstitutionClosed : G.forwardSubstitution
  backwardSubstitutionClosed : G.backwardSubstitution
  numericStabilityClosed : G.numericStability

def GaussianEliminationFactorizationClosed (n : Nat) (M : MatrixAssemblyPackage n)
    (G : GaussianEliminationFactorizationPackage n M) : Prop :=
  G.lupFactor ∧ G.forwardSubstitution ∧ G.backwardSubstitution ∧ G.numericStability

theorem gaussian_elimination_factorization_closed_from_evidence
    (n : Nat) (M : MatrixAssemblyPackage n) (G : GaussianEliminationFactorizationPackage n M)
    (E : GaussianEliminationFactorizationEvidence n M G) :
    GaussianEliminationFactorizationClosed n M G := by
  exact And.intro E.lupFactorClosed
    (And.intro E.forwardSubstitutionClosed
      (And.intro E.backwardSubstitutionClosed E.numericStabilityClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse