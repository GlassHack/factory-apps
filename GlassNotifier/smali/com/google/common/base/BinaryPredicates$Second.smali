.class final Lcom/google/common/base/BinaryPredicates$Second;
.super Ljava/lang/Object;
.source "BinaryPredicates.java"

# interfaces
.implements Lcom/google/common/base/BinaryPredicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/BinaryPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Second"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/BinaryPredicate",
        "<TX;TY;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63031e3cfaae8aa0L


# instance fields
.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-TY;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TY;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<TX;TY;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    iput-object v0, p0, Lcom/google/common/base/BinaryPredicates$Second;->predicate:Lcom/google/common/base/Predicate;

    .line 408
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TY;)Z"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<TX;TY;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    .local p2, "y":Ljava/lang/Object;, "TY;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$Second;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 417
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<TX;TY;>;"
    instance-of v1, p1, Lcom/google/common/base/BinaryPredicates$Second;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 418
    check-cast v0, Lcom/google/common/base/BinaryPredicates$Second;

    .line 419
    .local v0, "other":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<**>;"
    iget-object v1, p0, Lcom/google/common/base/BinaryPredicates$Second;->predicate:Lcom/google/common/base/Predicate;

    iget-object v2, v0, Lcom/google/common/base/BinaryPredicates$Second;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v2}, Lcom/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 421
    .end local v0    # "other":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 426
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Second;, "Lcom/google/common/base/BinaryPredicates$Second<TX;TY;>;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$Second;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
