.class Lcom/google/common/collect/Tables$UnmodifiableTable;
.super Lcom/google/common/collect/cr;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/nw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/nw;)V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/google/common/collect/cr;-><init>()V

    .line 604
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/nw;

    iput-object v0, p0, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate:Lcom/google/common/collect/nw;

    .line 605
    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 616
    invoke-super {p0}, Lcom/google/common/collect/cr;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 621
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 626
    invoke-super {p0, p1}, Lcom/google/common/collect/cr;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 631
    invoke-super {p0}, Lcom/google/common/collect/cr;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 636
    invoke-static {}, Lcom/google/common/collect/Tables;->a()Lcom/google/common/base/w;

    move-result-object v0

    .line 637
    invoke-super {p0}, Lcom/google/common/collect/cr;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/w;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/nw;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate:Lcom/google/common/collect/nw;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/nw;)V
    .locals 1

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/google/common/collect/cr;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 662
    invoke-super {p0}, Lcom/google/common/collect/cr;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Lcom/google/common/collect/Tables;->a()Lcom/google/common/base/w;

    move-result-object v0

    .line 668
    invoke-super {p0}, Lcom/google/common/collect/cr;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/w;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Lcom/google/common/collect/cr;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
