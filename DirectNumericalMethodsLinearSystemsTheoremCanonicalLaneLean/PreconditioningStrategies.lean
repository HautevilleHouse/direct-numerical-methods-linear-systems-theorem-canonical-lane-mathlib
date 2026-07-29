import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.MatrixRepresentation

/-!
# Preconditioning Strategies Package
-/

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure PreconditionerPackage (M : MatrixRepresentationPackage) where
  preconditionerType : Type u
  spectralConditionImproved : Prop
  clusteringEffect : Prop
  implementationCost : Prop
  convergenceAcceleration : Prop

structure PreconditionerEvidence {M : MatrixRepresentationPackage}
    (P : PreconditionerPackage M) where
  spectralConditionImprovedClosed : P.spectralConditionImproved
  clusteringEffectClosed : P.clusteringEffect
  implementationCostClosed : P.implementationCost
  convergenceAccelerationClosed : P.convergenceAcceleration

def PreconditionerClosed {M : MatrixRepresentationPackage}
    (P : PreconditionerPackage M) : Prop :=
  P.spectralConditionImproved ∧ P.clusteringEffect ∧
  P.implementationCost ∧ P.convergenceAcceleration

theorem preconditioner_closed_from_evidence
    {M : MatrixRepresentationPackage} (P : PreconditionerPackage M)
    (E : PreconditionerEvidence P) : PreconditionerClosed P := by
  exact And.intro E.spectralConditionImprovedClosed
    (And.intro E.clusteringEffectClosed
      (And.intro E.implementationCostClosed E.convergenceAccelerationClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse