.class Lcom/google/common/base/Functions$PredicateFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final predicate:Lcom/google/common/base/ai;


# direct methods
.method private constructor <init>(Lcom/google/common/base/ai;)V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ai;

    iput-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/ai;Lcom/google/common/base/w;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/google/common/base/Functions$PredicateFunction;-><init>(Lcom/google/common/base/ai;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    invoke-interface {v0, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/google/common/base/Functions$PredicateFunction;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    instance-of v0, p1, Lcom/google/common/base/Functions$PredicateFunction;

    if-eqz v0, :cond_0

    .line 263
    check-cast p1, Lcom/google/common/base/Functions$PredicateFunction;

    .line 264
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    iget-object v1, p1, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    invoke-interface {v0, v1}, Lcom/google/common/base/ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forPredicate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$PredicateFunction;->predicate:Lcom/google/common/base/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
