.class public Lcom/google/android/clockwork/stream/StreamChangeEvent;
.super Ljava/lang/Object;
.source "StreamChangeEvent.java"


# instance fields
.field private mHasReordered:Z

.field private mModifiedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mModifiedTopLevelItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedTopLevelItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    .line 15
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    .line 17
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    .line 19
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mHasReordered:Z

    return-void
.end method


# virtual methods
.method public getModifiedItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    return-object v0
.end method

.method public getModifiedTopLevelItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    return-object v0
.end method

.method public getRemovedItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    return-object v0
.end method

.method public getRemovedTopLevelItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mHasReordered:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReordered()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mHasReordered:Z

    return v0
.end method

.method public itemModified(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamChangeEvent;
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public itemRemoved(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamChangeEvent;
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p0
.end method

.method public setHasReordered(Z)V
    .locals 0
    .param p1, "hasReordered"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mHasReordered:Z

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "verbose"    # Z

    .prologue
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StreamChangeEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modified="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", modifiedTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", removedTop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", reorder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mHasReordered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-eqz p1, :cond_3

    .line 95
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const-string v3, "\n  modified:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 98
    .local v1, "id":Lcom/google/android/clockwork/stream/StreamItemId;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    :cond_0
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    const-string v3, "\n  removed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 104
    .restart local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    :cond_1
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    const-string v3, "\n  modifiedTopLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemId;

    .line 110
    .restart local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    :cond_2
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    const-string v3, "\n  removedTopLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemId;

    .line 116
    .restart local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public topLevelItemModified(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/StreamChangeEvent;
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public topLevelItemRemoved(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/StreamChangeEvent;
    .locals 2
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mModifiedTopLevelItems:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamChangeEvent;->mRemovedTopLevelItems:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object p0
.end method
