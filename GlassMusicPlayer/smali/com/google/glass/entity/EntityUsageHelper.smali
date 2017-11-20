.class public Lcom/google/glass/entity/EntityUsageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENTITY_SELECTION:Ljava/lang/String; = "(_id=? AND source=?)"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityUsageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;
    .locals 5

    .prologue
    .line 189
    sget-object v0, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 190
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "(_id=? AND source=?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "recent_action_type"

    .line 192
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "share_time"

    .line 193
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method private isPhoneCallTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 177
    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 178
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 179
    const-string v3, "application/vnd.google-glass.phone-call-proto"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const/4 v1, 0x1

    .line 184
    :cond_0
    return v1

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private retrieveEntityFromCallItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p2, v0, v2, v1}, Lcom/google/glass/entity/EntityHelper;->getEntityByMessagingPersonaId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 167
    goto :goto_0
.end method

.method private updateEntityUsageInDb(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 147
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Ljava/util/List;)I

    .line 150
    return-void
.end method


# virtual methods
.method findMatchingDeviceEntities(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 111
    sget-object v5, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 114
    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 116
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    sget-object v5, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_2

    .line 123
    sget-object v6, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 124
    invoke-static {v6, v5}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    iget-object v6, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/google/glass/entity/EntityHelper;->getEntityByGuid(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 127
    if-eqz v5, :cond_2

    .line 128
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    iget-object v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    return-object v3
.end method

.method public updateEntityUsageFromItems(Ljava/util/List;Z)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityUsageHelper;->findMatchingDeviceEntities(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityUsageHelper;->updateEntityUsageInDb(Ljava/util/List;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PPL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityUsageHelper;->updateRecentActionsInDb(Ljava/util/List;Z)V

    .line 52
    :cond_1
    return-void
.end method

.method updateRecentActionsInDb(Ljava/util/List;Z)V
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 60
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 66
    sget-object v5, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 69
    if-eqz v5, :cond_0

    if-eq v5, v2, :cond_0

    .line 70
    const-string v6, "incoming_email"

    .line 71
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v7

    .line 70
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    sget-object v5, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 77
    if-eqz v5, :cond_0

    .line 78
    const-string v6, "incoming_message"

    .line 79
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v7

    .line 78
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityUsageHelper;->isPhoneCallTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromCallItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_0

    .line 85
    const-string v6, "incoming_voice_call"

    .line 86
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v7

    .line 85
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.glass.entity"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :cond_4
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/google/glass/entity/EntityUsageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Batch db update failed."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    sget-object v1, Lcom/google/glass/entity/EntityUsageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "RemoteException: batch db update failed."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
