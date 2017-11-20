.class Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ft;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ft;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lcom/google/common/collect/jt;)V

    .line 679
    return-void
.end method


# virtual methods
.method public delegate()Lcom/google/common/collect/ft;
    .locals 1

    .prologue
    .line 683
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ft;

    return-object v0
.end method

.method public bridge synthetic delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lcom/google/common/collect/ft;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ft;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 698
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
