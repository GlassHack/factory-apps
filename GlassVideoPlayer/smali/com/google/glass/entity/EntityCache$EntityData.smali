.class public Lcom/google/glass/entity/EntityCache$EntityData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final affinity:I

.field final contentUsageTimestampMs:J

.field final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field final entityGuid:Ljava/lang/String;

.field final formattedPhoneNumbers:Ljava/util/List;

.field final hasPhoneNumber:Z

.field final isFocusEntity:Z

.field final isHangoutEntity:Z

.field final isInShareTargetBlacklist:Z

.field final isPlusEntity:Z

.field final isSendMenuTarget:Z

.field final isShareMenuTarget:Z

.field final isSpeakable:Z

.field final isStarred:Z

.field final isValidItemTarget:Z

.field final mimeTypeMatcher:Lcom/google/glass/util/MimeTypeMatcher;

.field final phoneUsageTimestampMs:J

.field final sanitizedEmail:Ljava/lang/String;

.field final usageCount:I


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 99
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 100
    iput-object p3, p0, Lcom/google/glass/entity/EntityCache$EntityData;->sanitizedEmail:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isSpeakable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isSpeakable:Z

    .line 103
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isStarred()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isStarred:Z

    .line 104
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    .line 105
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    .line 106
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache$EntityData;->isInShareTargetBlacklist(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isInShareTargetBlacklist:Z

    .line 107
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isSendMenuTarget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isSendMenuTarget:Z

    .line 108
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isShareMenuTarget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isShareMenuTarget:Z

    .line 109
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isHangoutEntity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isHangoutEntity:Z

    .line 110
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isValidItemTarget()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isValidItemTarget:Z

    .line 111
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->createMimeTypeMatcher()Lcom/google/glass/util/MimeTypeMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->mimeTypeMatcher:Lcom/google/glass/util/MimeTypeMatcher;

    .line 112
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getUsageCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    .line 113
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getGlasswareAffinity()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    .line 114
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getContentUsageTimestampMs()J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    .line 116
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getPhoneUsageTimestampMs()J

    move-result-wide v4

    :cond_0
    iput-wide v4, p0, Lcom/google/glass/entity/EntityCache$EntityData;->phoneUsageTimestampMs:J

    .line 118
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->hasPhoneNumber:Z

    .line 120
    return-void

    :cond_2
    move v0, v1

    .line 112
    goto :goto_0

    :cond_3
    move v0, v1

    .line 113
    goto :goto_1

    :cond_4
    move-wide v2, v4

    .line 115
    goto :goto_2
.end method

.method private createMimeTypeMatcher()Lcom/google/glass/util/MimeTypeMatcher;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 193
    :cond_1
    :goto_1
    new-instance v2, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v2}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 194
    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const-string v0, "*/*"

    invoke-virtual {v2, v0}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    :cond_2
    move-object v0, v2

    .line 203
    goto :goto_0

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_4
    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 200
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isFocusEntity()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method

.method private isHangoutEntity()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method

.method private isInShareTargetBlacklist(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPlusEntity()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method

.method private isSendMenuTarget()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityUtils;->isSendTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z

    move-result v0

    return v0
.end method

.method private isShareMenuTarget()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 148
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 149
    invoke-static {v1, v0}, Lcom/google/glass/entity/EntityUtils;->isSendTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 150
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeakable()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/au;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStarred()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method

.method private isValidItemTarget()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    iget-wide v2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    iget v4, p0, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "EntityData<Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", usageCount:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentUsageTimestampMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affinity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
