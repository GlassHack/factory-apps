.class public final Lcom/google/glass/companion/CompanionTimelineUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MMS_ATTACHMENT_FILENAME_FORMAT:Ljava/lang/String; = "mms_%s_%s"

.field private static final NOTIFY_LATENCY_MS:J = 0x2932e00L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionTimelineUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMultimediaMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;[B)Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    .line 180
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 182
    invoke-static {p0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 184
    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MultimediaMessage;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 185
    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iput-object v1, v0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 187
    return-object v0
.end method

.method public static generateSmsSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    if-eqz p3, :cond_0

    .line 200
    sget v0, Lcom/google/glass/common/R$string;->sms_outgoing_speakable_text:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/glass/common/R$string;->sms_unknown_sender:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    sget v0, Lcom/google/glass/common/R$string;->sms_incoming_no_body_speakable_text:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    sget v0, Lcom/google/glass/common/R$string;->sms_incoming_speakable_text:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCompanionSmsTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/google/glass/companion/CompanionTimelineUtils$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    .line 96
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "companion:"

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 105
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 106
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 107
    const-string v0, "companion:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p7}, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->access$000(Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 110
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    invoke-virtual {v2, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 112
    invoke-virtual {v2, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 118
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 119
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 124
    :cond_1
    :goto_2
    if-eqz p6, :cond_a

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 132
    :goto_3
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 133
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 134
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/glass/common/R$string;->sms_speakable_type:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 140
    invoke-static {p0, p2, p1, p6}, Lcom/google/glass/companion/CompanionTimelineUtils;->generateSmsSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 143
    :cond_2
    sget-object v0, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_MMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    if-ne p7, v0, :cond_b

    const/16 v0, 0xe

    :goto_4
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 145
    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 147
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-static {v1, v5}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 150
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 153
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 154
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 156
    :cond_5
    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 159
    if-nez p6, :cond_6

    const-wide/32 v2, 0x2932e00

    add-long/2addr v2, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 160
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    .line 161
    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->setLevel(I)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 165
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 166
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setNotification(Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 169
    :cond_6
    return-object v1

    .line 107
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto/16 :goto_1

    .line 120
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {v2, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto/16 :goto_2

    .line 129
    :cond_a
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto/16 :goto_3

    .line 143
    :cond_b
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public static getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lcom/google/glass/util/HashUtil;->hashPiiField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 262
    :goto_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 264
    return-object v0

    .line 258
    :cond_0
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    goto :goto_0
.end method

.method public static getTimelineitem(Lcom/google/glass/companion/Proto$MultimediaMessage;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MultimediaMessage;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 293
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    .line 294
    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v3

    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 299
    :goto_0
    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MultimediaMessage;->attachmentContent:[[B

    aget-object v3, v3, v0

    .line 302
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 303
    const-string v4, "mms_%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    .line 306
    sget-object v6, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    new-instance v7, Lcom/google/glass/companion/CompanionTimelineUtils$2;

    invoke-direct {v7, v3}, Lcom/google/glass/companion/CompanionTimelineUtils$2;-><init>([B)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 318
    sget-object v3, Lcom/google/glass/companion/CompanionTimelineUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Saving attachment to %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v0

    sget-object v6, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 320
    invoke-virtual {v5, v6, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-object v2
.end method

.method public static sendTimelineItem(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4

    .prologue
    .line 271
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 275
    iget-object v2, v1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_0

    .line 276
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 284
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v0

    return v0

    .line 278
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 279
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, v1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public static updateCompanionSyncStatus(Ljava/lang/String;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;Z)V
    .locals 5

    .prologue
    .line 221
    sget-object v0, Lcom/google/glass/companion/CompanionTimelineUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Updating sync status of item %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v0, Lcom/google/glass/companion/CompanionTimelineUtils$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/glass/companion/CompanionTimelineUtils$1;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V

    .line 236
    if-eqz p3, :cond_0

    .line 237
    invoke-virtual {p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    goto :goto_0
.end method
