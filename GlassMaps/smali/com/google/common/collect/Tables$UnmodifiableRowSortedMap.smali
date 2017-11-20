.class final Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;
.super Lcom/google/common/collect/Tables$UnmodifiableTable;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ls;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ls;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/google/common/collect/Tables$UnmodifiableTable;-><init>(Lcom/google/common/collect/nw;)V

    .line 707
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/collect/ls;
    .locals 1

    .prologue
    .line 711
    invoke-super {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ls;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Lcom/google/common/collect/nw;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/ls;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/ls;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final rowKeySet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ls;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final rowMap()Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 716
    invoke-static {}, Lcom/google/common/collect/Tables;->a()Lcom/google/common/base/w;

    move-result-object v0

    .line 717
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/ls;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ls;->rowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/SortedMap;Lcom/google/common/base/w;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
