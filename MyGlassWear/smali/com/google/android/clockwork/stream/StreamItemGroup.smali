.class public Lcom/google/android/clockwork/stream/StreamItemGroup;
.super Ljava/lang/Object;
.source "StreamItemGroup.java"

# interfaces
.implements Lcom/google/android/clockwork/stream/StreamItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/StreamItemGroup$1;,
        Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    }
.end annotation


# instance fields
.field private final mChildren:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

.field private final mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

.field private final mSummary:Lcom/google/android/clockwork/stream/StreamItemEntry;


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;Lcom/google/common/collect/ImmutableList;)V
    .locals 6
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemGroupId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/clockwork/stream/StreamItemGroupId;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "members":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 23
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Stream item groups must have at least one member"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    .local v3, "summary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 28
    .local v0, "childrenBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 29
    .local v2, "member":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/clockwork/stream/StreamItemGroupId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "All group members must have the group id of the group"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 34
    move-object v3, v2

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 39
    .end local v2    # "member":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mChildren:Lcom/google/common/collect/ImmutableList;

    .line 40
    iput-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mSummary:Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 41
    if-eqz v3, :cond_4

    .end local v3    # "summary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :goto_1
    iput-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 42
    return-void

    .line 41
    .restart local v3    # "summary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_4
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mChildren:Lcom/google/common/collect/ImmutableList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-object v3, v4

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;Lcom/google/common/collect/ImmutableList;Lcom/google/android/clockwork/stream/StreamItemGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/StreamItemGroupId;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableList;
    .param p3, "x2"    # Lcom/google/android/clockwork/stream/StreamItemGroup$1;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;-><init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/stream/StreamItemGroup;)Lcom/google/android/clockwork/stream/StreamItemGroupId;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/StreamItemGroup;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    return-object v0
.end method


# virtual methods
.method public getChildren()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mChildren:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getCreatorNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mId:Lcom/google/android/clockwork/stream/StreamItemGroupId;

    return-object v0
.end method

.method public bridge synthetic getId()Lcom/google/android/clockwork/stream/StreamItemId;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v0

    return-object v0
.end method

.method public getLastInterruptTime()J
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getLastInterruptTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastOngoingTime()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getLastOngoingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMembers()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 117
    .local v0, "membersBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mSummary:Lcom/google/android/clockwork/stream/StreamItemEntry;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mSummary:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mChildren:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 121
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getPostTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRepresentative()Lcom/google/android/clockwork/stream/StreamItemEntry;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Lcom/google/android/clockwork/stream/StreamItemEntry;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mSummary:Lcom/google/android/clockwork/stream/StreamItemEntry;

    return-object v0
.end method

.method public getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mRepresentative:Lcom/google/android/clockwork/stream/StreamItemEntry;

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->isLocal()Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;-><init>(Lcom/google/android/clockwork/stream/StreamItemGroup;Lcom/google/android/clockwork/stream/StreamItemGroup$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "StreamItemGroup["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creatorNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originalPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", postTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getPostTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastInterruptTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getLastInterruptTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getSummary()Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroup;->mChildren:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " members"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
