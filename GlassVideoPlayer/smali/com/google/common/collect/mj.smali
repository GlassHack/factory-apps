.class public interface abstract Lcom/google/common/collect/mj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lw;


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
.end method

.method public abstract valueComparator()Ljava/util/Comparator;
.end method
