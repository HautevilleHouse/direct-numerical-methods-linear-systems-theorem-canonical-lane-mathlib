import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure DirectFactorizationPackage where
  factorType : String
  existenceCondition : Prop
  uniquenessCondition : Prop
  numericalStability : Prop
  sparsityPreservation : Prop

structure DirectFactorizationEvidence
    (D : DirectFactorizationPackage) where
  existenceConditionClosed : D.existenceCondition
  uniquenessConditionClosed : D.uniquenessCondition
  numericalStabilityClosed : D.numericalStability
  sparsityPreservationClosed : D.sparsityPreservation

def DirectFactorizationClosed
    (D : DirectFactorizationPackage) : Prop :=
  D.existenceCondition ∧ D.uniquenessCondition ∧
  D.numericalStability ∧ D.sparsityPreservation

theorem direct_factorization_closed_from_evidence
    (D : DirectFactorizationPackage)
    (E : DirectFactorizationEvidence D) :
    DirectFactorizationClosed D := by
  exact And.intro E.existenceConditionClosed
    (And.intro E.uniquenessConditionClosed
      (And.intro E.numericalStabilityClosed
        E.sparsityPreservationClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse