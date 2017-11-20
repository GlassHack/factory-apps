.class final Lcom/google/common/base/BinaryPredicates$And;
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
    name = "And"
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
.field private static final serialVersionUID:J = 0x42d1b76545c0d3a0L


# instance fields
.field final predicates:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/base/BinaryPredicate",
            "<-TX;-TY;>;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$And;, "Lcom/google/common/base/BinaryPredicates$And<TX;TY;>;"
    .local p1, "predicates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicate;

    .line 303
    .local v0, "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<**>;"
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    .end local v0    # "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<**>;"
    :cond_0
    iput-object p1, p0, Lcom/google/common/base/BinaryPredicates$And;->predicates:Ljava/lang/Iterable;

    .line 306
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
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
    .line 310
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$And;, "Lcom/google/common/base/BinaryPredicates$And<TX;TY;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    .local p2, "y":Ljava/lang/Object;, "TY;"
    iget-object v1, p0, Lcom/google/common/base/BinaryPredicates$And;->predicates:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicate;

    .line 311
    .local v0, "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    invoke-interface {v0, p1, p2}, Lcom/google/common/base/BinaryPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 315
    .end local v0    # "predicate":Lcom/google/common/base/BinaryPredicate;, "Lcom/google/common/base/BinaryPredicate<-TX;-TY;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 320
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$And;, "Lcom/google/common/base/BinaryPredicates$And<TX;TY;>;"
    instance-of v0, p1, Lcom/google/common/base/BinaryPredicates$And;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$And;->predicates:Ljava/lang/Iterable;

    check-cast p1, Lcom/google/common/base/BinaryPredicates$And;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/common/base/BinaryPredicates$And;->predicates:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/common/base/BinaryPredicates;->access$000(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    .line 323
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lcom/google/common/base/BinaryPredicates$And;, "Lcom/google/common/base/BinaryPredicates$And<TX;TY;>;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$And;->predicates:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/base/BinaryPredicates;->access$100(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method
