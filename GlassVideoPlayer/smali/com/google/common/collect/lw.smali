.class public interface abstract Lcom/google/common/collect/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jt;


# virtual methods
.method public abstract entries()Ljava/util/Set;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Set;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
.end method
