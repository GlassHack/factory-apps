.class public final Lcom/google/glass/sync/SharingUtils;
.super Ljava/lang/Object;
.source "SharingUtils.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SharingUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populateForCloud(Lcom/google/googlex/glass/common/proto/nano/Entity;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Z)V
    .locals 7
    .param p0, "selfEntity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .param p1, "sourceItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "newItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p3, "isReplyingAll"    # Z

    .prologue
    const/4 v3, 0x0

    .line 19
    sget-object v4, Lcom/google/glass/sync/SharingUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Replying to timeline item via cloud-based Glassware ..."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 22
    .local v0, "replyToEntity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/Entity;

    .end local v0    # "replyToEntity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    .line 25
    .restart local v0    # "replyToEntity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/nano/Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 29
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 30
    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)V

    .line 33
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 40
    :cond_1
    if-eqz p0, :cond_2

    .line 41
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v4

    iput-object v4, p2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 42
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 43
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "userEmail":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_3

    .line 49
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 50
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_6

    aget-object v1, v4, v3

    .line 51
    .local v1, "shareTarget":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {p2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)V

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v1    # "shareTarget":Lcom/google/googlex/glass/common/proto/nano/Entity;
    .end local v2    # "userEmail":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    .restart local v2    # "userEmail":Ljava/lang/String;
    goto :goto_0

    .line 55
    :cond_3
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasEmail()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasId()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 60
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 61
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v1, v4, v3

    .line 62
    .restart local v1    # "shareTarget":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {p2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 67
    .end local v1    # "shareTarget":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_6
    return-void
.end method
