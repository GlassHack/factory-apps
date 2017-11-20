.class final Lcom/google/glass/settings/ui/labs/LabFeatureCard;
.super Ljava/lang/Object;
.source "LabFeatureCard.java"

# interfaces
.implements Lcom/google/glass/settings/ui/labs/LabCard;


# instance fields
.field private final feature:Lcom/google/glass/util/Labs$Feature;


# direct methods
.method constructor <init>(Lcom/google/glass/util/Labs$Feature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/glass/util/Labs$Feature;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "null feature"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/Labs$Feature;

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabFeatureCard;->feature:Lcom/google/glass/util/Labs$Feature;

    .line 17
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabFeatureCard;->feature:Lcom/google/glass/util/Labs$Feature;

    invoke-virtual {v0}, Lcom/google/glass/util/Labs$Feature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabFeatureCard;->feature:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabFeatureCard;->feature:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0, p1}, Lcom/google/glass/util/Labs;->setEnabled(Lcom/google/glass/util/Labs$Feature;Z)V

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabFeatureCard;->feature:Lcom/google/glass/util/Labs$Feature;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
