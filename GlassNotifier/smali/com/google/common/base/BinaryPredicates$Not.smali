.class final Lcom/google/common/base/BinaryPredicates$Not;
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
    name = "Not"
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
.field private static final serialVersionUID:J = 0x6591bf2f02ae4c47L


# instance fields
.field final predicate:Lcom/google/common/base/BinaryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/BinaryPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<TX;TY;>;"
    .local p1, "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicate;

    iput-object v0, p0, Lcom/google/common/base/BinaryPredicates$Not;->predicate:Lcom/google/common/base/BinaryPredicate;

    .line 272
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
    .line 276
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<TX;TY;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    .local p2, "y":Ljava/lang/Object;, "TY;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$Not;->predicate:Lcom/google/common/base/BinaryPredicate;

    invoke-interface {v0, p1, p2}, Lcom/google/common/base/BinaryPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<TX;TY;>;"
    instance-of v1, p1, Lcom/google/common/base/BinaryPredicates$Not;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/google/common/base/BinaryPredicates$Not;

    .line 283
    .local v0, "other":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<**>;"
    iget-object v1, p0, Lcom/google/common/base/BinaryPredicates$Not;->predicate:Lcom/google/common/base/BinaryPredicate;

    iget-object v2, v0, Lcom/google/common/base/BinaryPredicates$Not;->predicate:Lcom/google/common/base/BinaryPredicate;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 285
    .end local v0    # "other":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$Not;, "Lcom/google/common/base/BinaryPredicates$Not<TX;TY;>;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$Not;->predicate:Lcom/google/common/base/BinaryPredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
