.class Lcom/google/common/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ai;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final predicate:Lcom/google/common/base/ai;


# direct methods
.method constructor <init>(Lcom/google/common/base/ai;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ai;

    iput-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    .line 302
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    invoke-interface {v0, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    instance-of v0, p1, Lcom/google/common/base/Predicates$NotPredicate;

    if-eqz v0, :cond_0

    .line 316
    check-cast p1, Lcom/google/common/base/Predicates$NotPredicate;

    .line 317
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    iget-object v1, p1, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    invoke-interface {v0, v1}, Lcom/google/common/base/ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ai;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
