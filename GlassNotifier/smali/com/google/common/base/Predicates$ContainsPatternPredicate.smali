.class Lcom/google/common/base/Predicates$ContainsPatternPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainsPatternPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final pattern:Lcom/google/common/base/CommonPattern;


# direct methods
.method constructor <init>(Lcom/google/common/base/CommonPattern;)V
    .locals 1
    .param p1, "pattern"    # Lcom/google/common/base/CommonPattern;

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CommonPattern;

    iput-object v0, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    .line 649
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CommonPattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/CommonMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CommonMatcher;->find()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 643
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->apply(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 666
    instance-of v2, p1, Lcom/google/common/base/Predicates$ContainsPatternPredicate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 667
    check-cast v0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;

    .line 671
    .local v0, "that":Lcom/google/common/base/Predicates$ContainsPatternPredicate;
    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v2}, Lcom/google/common/base/CommonPattern;->pattern()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v3}, Lcom/google/common/base/CommonPattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    .line 672
    invoke-virtual {v2}, Lcom/google/common/base/CommonPattern;->flags()I

    move-result v2

    iget-object v3, v0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v3}, Lcom/google/common/base/CommonPattern;->flags()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 674
    .end local v0    # "that":Lcom/google/common/base/Predicates$ContainsPatternPredicate;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 661
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v2}, Lcom/google/common/base/CommonPattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v2}, Lcom/google/common/base/CommonPattern;->flags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 679
    iget-object v1, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    .line 680
    invoke-static {v1}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "pattern"

    iget-object v3, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    .line 681
    invoke-virtual {v3}, Lcom/google/common/base/CommonPattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "pattern.flags"

    iget-object v3, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Lcom/google/common/base/CommonPattern;

    .line 682
    invoke-virtual {v3}, Lcom/google/common/base/CommonPattern;->flags()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 683
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "patternString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Predicates.contains("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
