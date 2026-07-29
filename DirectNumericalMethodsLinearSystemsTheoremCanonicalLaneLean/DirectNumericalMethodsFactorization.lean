import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure FactorizationPackage where
  factorType : Type
  decompositionExists : Prop
  stabilityGuaranteed : Prop
  pivotStrategy : Prop
  fillInControlled : Prop

structure FactorizationEvidence (F : FactorizationPackage) where
  decompositionExistsClosed : F.decompositionExists
  stabilityGuaranteedClosed : F.stabilityGuaranteed
  pivotStrategyClosed : F.pivotStrategy
  fillInControlledClosed : F.fillInControlled

def FactorizationClosed (F : FactorizationPackage) : Prop :=
  F.decompositionExists ∧ F.stabilityGuaranteed ∧ F.pivotStrategy ∧ F.fillInControlled

theorem factorization_closed_from_evidence (F : FactorizationPackage)
    (E : FactorizationEvidence F) : FactorizationClosed F := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.stabilityGuaranteedClosed
      (And.intro E.pivotStrategyClosed E.fillInControlledClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse