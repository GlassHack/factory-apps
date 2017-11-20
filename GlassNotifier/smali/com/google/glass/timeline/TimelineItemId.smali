.class public Lcom/google/glass/timeline/TimelineItemId;
.super Ljava/lang/Object;
.source "TimelineItemId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7fdc6d07f9e24d48L


# instance fields
.field private final bundleId:Ljava/lang/String;

.field private final displayTime:J

.field private final isBundleCover:Z

.field private final isPinned:Z

.field private final itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v3

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v4

    .line 24
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsBundleCover()Z

    move-result v7

    move-object v1, p0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJLjava/lang/String;Z)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "isPinned"    # Z
    .param p3, "displayTime"    # J
    .param p5, "bundleId"    # Ljava/lang/String;
    .param p6, "isBundleCover"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 30
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    .line 32
    iput-wide p3, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    .line 33
    iput-object p5, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    .line 34
    iput-boolean p6, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 61
    instance-of v1, p1, Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 63
    .local v0, "id":Lcom/google/glass/timeline/TimelineItemId;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    .end local v0    # "id":Lcom/google/glass/timeline/TimelineItemId;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBundleCover()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemId;->itemId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemId;->isPinned:Z

    iget-wide v2, p0, Lcom/google/glass/timeline/TimelineItemId;->displayTime:J

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemId;->bundleId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/glass/timeline/TimelineItemId;->isBundleCover:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x62

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "{ itemId: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", isPinned: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBundleCover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
