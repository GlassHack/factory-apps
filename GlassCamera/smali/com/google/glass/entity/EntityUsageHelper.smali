.class public Lcom/google/glass/entity/EntityUsageHelper;
.super Ljava/lang/Object;
.source "EntityUsageHelper.java"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;
    .locals 6
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "recentActionType"    # Ljava/lang/String;
    .param p3, "modifiedTime"    # J

    .prologue
    .line 189
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 190
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "(_id=? AND source=?)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "recent_action_type"

    .line 192
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "share_time"

    .line 193
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 195
    .local v0, "operation":Landroid/content/ContentProviderOperation;
    return-object v0
.end method

.method private isPhoneCallTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 176
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 177
    .local v0, "attachments":[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 179
    const-string v2, "application/vnd.google-glass.phone-call-proto"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x1

    .line 184
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 178
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private retrieveEntityFromCallItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "helper"    # Lcom/google/glass/entity/EntityHelper;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "phoneNumber":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "helper"    # Lcom/google/glass/entity/EntityHelper;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "email":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "email":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "helper"    # Lcom/google/glass/entity/EntityHelper;

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "obfuscatedGaiaId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v1}, Lcom/google/glass/entity/EntityHelper;->getEntityByMessagingPersonaId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0

    .line 167
    .end local v1    # "obfuscatedGaiaId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEntityUsageInDb(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 147
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0

    .line 149
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Ljava/util/List;)I

    .line 150
    return-void
.end method


# virtual methods
.method findMatchingDeviceEntities(Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .param p2, "includeGmail"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "timelineItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    .line 108
    .local v2, "entityHelper":Lcom/google/glass/entity/EntityHelper;
    iget-object v8, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v8, v9}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v7

    .line 109
    .local v7, "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 111
    .local v4, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v9, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 112
    if-eqz p2, :cond_0

    .line 114
    invoke-direct {p0, v4, v2}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 115
    .local v5, "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v5, :cond_0

    if-eq v5, v7, :cond_0

    .line 116
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v5    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    sget-object v9, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 121
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "conversationId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 123
    sget-object v9, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 124
    invoke-static {v9, v0}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "guidToLookup":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9, v3}, Lcom/google/glass/entity/EntityHelper;->getEntityByGuid(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 127
    .restart local v5    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v5, :cond_2

    .line 128
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v3    # "guidToLookup":Ljava/lang/String;
    .end local v5    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    iget-object v9, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v9}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_0

    .line 135
    invoke-direct {p0, v4, v2}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    .line 136
    .local v6, "matchedPersonaEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "conversationId":Ljava/lang/String;
    .end local v4    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v6    # "matchedPersonaEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    return-object v1
.end method

.method public updateEntityUsageFromItems(Ljava/util/List;Z)V
    .locals 2
    .param p2, "includeGmail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "timelineItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityUsageHelper;->findMatchingDeviceEntities(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "deviceEntities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityUsageHelper;->updateEntityUsageInDb(Ljava/util/List;)V

    .line 49
    :cond_0
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->PPL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityUsageHelper;->updateRecentActionsInDb(Ljava/util/List;Z)V

    .line 52
    :cond_1
    return-void
.end method

.method updateRecentActionsInDb(Ljava/util/List;Z)V
    .locals 11
    .param p2, "includeGmail"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "timelineItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v10, 0x0

    .line 60
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    .line 61
    .local v1, "entityHelper":Lcom/google/glass/entity/EntityHelper;
    iget-object v6, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v6, v7}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 62
    .local v5, "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 63
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 66
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v7, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-direct {p0, v2, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromGmailItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 69
    .local v3, "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v3, :cond_0

    if-eq v3, v5, :cond_0

    .line 70
    const-string v7, "incoming_email"

    .line 71
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v8

    .line 70
    invoke-direct {p0, v3, v7, v8, v9}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v3    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    sget-object v7, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    iget-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    .line 76
    invoke-direct {p0, v2, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveFocusEntityFromHangoutsItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 77
    .restart local v3    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v3, :cond_0

    .line 78
    const-string v7, "incoming_message"

    .line 79
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v8

    .line 78
    invoke-direct {p0, v3, v7, v8, v9}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v3    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/glass/entity/EntityUsageHelper;->isPhoneCallTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-direct {p0, v2, v1}, Lcom/google/glass/entity/EntityUsageHelper;->retrieveEntityFromCallItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntityHelper;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 84
    .restart local v3    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v3, :cond_0

    .line 85
    const-string v7, "incoming_voice_call"

    .line 86
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v8

    .line 85
    invoke-direct {p0, v3, v7, v8, v9}, Lcom/google/glass/entity/EntityUsageHelper;->createRecentActionUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "matchedEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 92
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/entity/EntityUsageHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.google.glass.entity"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
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
    .local v0, "e":Landroid/content/OperationApplicationException;
    sget-object v6, Lcom/google/glass/entity/EntityUsageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Batch db update failed."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/google/glass/entity/EntityUsageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "RemoteException: batch db update failed."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
