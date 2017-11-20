.class public Lcom/google/glass/entity/EntityCache$EntityData;
.super Ljava/lang/Object;
.source "EntityCache.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityData"
.end annotation


# instance fields
.field final affinity:I

.field final contentUsageTimestampMs:J

.field final entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

.field final entityGuid:Ljava/lang/String;

.field final formattedPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/nano/Entity;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .param p3, "sanitizedEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "formattedPhoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 95
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 96
    iput-object p3, p0, Lcom/google/glass/entity/EntityCache$EntityData;->sanitizedEmail:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isSpeakable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isSpeakable:Z

    .line 99
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isStarred()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isStarred:Z

    .line 100
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    .line 101
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    .line 102
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache$EntityData;->isInShareTargetBlacklist(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isInShareTargetBlacklist:Z

    .line 103
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isSendMenuTarget()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isSendMenuTarget:Z

    .line 104
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isShareMenuTarget()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isShareMenuTarget:Z

    .line 105
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isHangoutEntity()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isHangoutEntity:Z

    .line 106
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->isValidItemTarget()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->isValidItemTarget:Z

    .line 107
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache$EntityData;->createMimeTypeMatcher()Lcom/google/glass/util/MimeTypeMatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->mimeTypeMatcher:Lcom/google/glass/util/MimeTypeMatcher;

    .line 108
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    if-eqz v1, :cond_2

    move v0, v3

    .line 109
    .local v0, "hasPriority":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->getUsageCount()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    .line 110
    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->getGlasswareAffinity()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    .line 111
    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->getContentUsageTimestampMs()J

    move-result-wide v4

    :goto_3
    iput-wide v4, p0, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    .line 112
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/nano/Entity;->priority:Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity$Priority;->getPhoneUsageTimestampMs()J

    move-result-wide v6

    :cond_0
    iput-wide v6, p0, Lcom/google/glass/entity/EntityCache$EntityData;->phoneUsageTimestampMs:J

    .line 113
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entityGuid:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->hasPhoneNumber:Z

    .line 115
    return-void

    .end local v0    # "hasPriority":Z
    :cond_2
    move v0, v2

    .line 108
    goto :goto_0

    .restart local v0    # "hasPriority":Z
    :cond_3
    move v1, v2

    .line 109
    goto :goto_1

    :cond_4
    move v1, v2

    .line 110
    goto :goto_2

    :cond_5
    move-wide v4, v6

    .line 111
    goto :goto_3
.end method

.method private createMimeTypeMatcher()Lcom/google/glass/util/MimeTypeMatcher;
    .locals 10

    .prologue
    .line 164
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object v4

    .line 169
    .local v4, "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    if-nez v4, :cond_1

    .line 171
    const/4 v3, 0x0

    .line 203
    .end local v4    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_0
    :goto_0
    return-object v3

    .line 174
    .restart local v4    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_1
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    iget-object v1, v4, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 188
    .end local v4    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    .local v1, "entityAcceptTypeList":[Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v3}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 189
    .local v3, "matcher":Lcom/google/glass/util/MimeTypeMatcher;
    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    const-string v5, "*/*"

    invoke-virtual {v3, v5}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Lcom/google/glass/util/MimeTypeMatcher;

    goto :goto_0

    .line 177
    .end local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    .end local v3    # "matcher":Lcom/google/glass/util/MimeTypeMatcher;
    .restart local v4    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    .end local v4    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v5, v5, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v1, v5, Lcom/google/googlex/glass/common/proto/nano/Entity;->acceptType:[Ljava/lang/String;

    .restart local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "entityAcceptTypeList":[Ljava/lang/String;
    goto :goto_1

    .line 194
    .restart local v3    # "matcher":Lcom/google/glass/util/MimeTypeMatcher;
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 196
    :try_start_0
    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Lcom/google/glass/util/MimeTypeMatcher;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Entity has malformed Accept-Type: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v1, v2

    aput-object v9, v7, v8

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private isFocusEntity()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    return v0
.end method

.method private isHangoutEntity()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    return v0
.end method

.method private isInShareTargetBlacklist(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z
    .locals 2
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 134
    sget-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPlusEntity()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    return v0
.end method

.method private isSendMenuTarget()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityUtils;->isSendTarget(Lcom/google/googlex/glass/common/proto/nano/Entity;Z)Z

    move-result v0

    return v0
.end method

.method private isShareMenuTarget()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 143
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 144
    invoke-static {v1, v0}, Lcom/google/glass/entity/EntityUtils;->isSendTarget(Lcom/google/googlex/glass/common/proto/nano/Entity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 145
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeakable()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 122
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    return v0
.end method

.method private isValidItemTarget()Z
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object v0

    .line 155
    .local v0, "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 159
    .end local v0    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    iget-wide v2, p0, Lcom/google/glass/entity/EntityCache$EntityData;->contentUsageTimestampMs:J

    iget v4, p0, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "EntityData<Name:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
