.class public final Lcom/google/glass/entity/EntityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTACT_GAIA_DELIMITER:Ljava/lang/String; = "_"

.field private static final CONTACT_GAIA_SPLITTER:Lcom/google/common/base/al;

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field static final ENTITY_GUID_PREFIX:Ljava/lang/String; = "entity_guid:"

.field static final ENTITY_GUID_SEPARATOR:Ljava/lang/String; = "/"

.field public static final FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

.field private static final GMAIL_DOMAINS:Ljava/util/List;

.field public static final GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ","

.field public static final PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final SELF_ENTITY_ID:Ljava/lang/String; = "SELF"

.field public static final SELF_ENTITY_SOURCE:Ljava/lang/String; = "api:SELF"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final sanitizedEmailCache:Landroid/util/LruCache;

.field private static final sanitizedStrippedEmailCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 54
    const-string v1, "api:"

    .line 55
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->getFocusProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/glass/entity/EntityUtils;->FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 56
    const-string v1, "api:"

    .line 57
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->getHangoutsProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 58
    const-string v1, "api:"

    .line 59
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->getPlusProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/google/glass/entity/EntityUtils;->PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 60
    const-string v0, "api:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/google/glass/sync/MirrorProjectIds;->getGmailProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    .line 68
    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v0, "_"

    invoke-static {v0}, Lcom/google/common/base/al;->a(Ljava/lang/String;)Lcom/google/common/base/al;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/al;

    .line 97
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 104
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedEmailCache:Landroid/util/LruCache;

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v3, v3, v0

    .line 140
    sget-object v4, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 141
    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4

    .prologue
    .line 718
    if-eqz p0, :cond_0

    .line 720
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 721
    :catch_0
    move-exception v0

    .line 724
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t clone entity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static componentMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 557
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ":"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static convertToDBType(I)I
    .locals 3

    .prologue
    .line 748
    packed-switch p0, :pswitch_data_0

    .line 754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :pswitch_0
    const/4 v0, 0x0

    .line 752
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createIdToEntityMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 327
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 328
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 329
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method

.method public static doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 224
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 238
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 244
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method private static ensurePriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 776
    :cond_0
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 574
    const-string v0, "protobuf_blob"

    .line 575
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 574
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 585
    if-nez p0, :cond_0

    .line 597
    :goto_0
    return-object v0

    .line 591
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    sget-object v2, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error deserializing protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const-string v1, "companion:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 713
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/al;

    invoke-virtual {v0, p0}, Lcom/google/common/base/al;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 424
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    :goto_1
    return-object v0

    .line 423
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing entity %s as displayName"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing entity without displayName as email %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Entity has nothing to display."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEntityGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 167
    const-string v0, "entity_guid:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getFirstName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 382
    if-nez p0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 392
    if-gtz v0, :cond_2

    move-object v0, v1

    .line 393
    goto :goto_0

    .line 395
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 6

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 736
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 737
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to parse entity from intent %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;
    .locals 6

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 439
    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->isHangoutPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_2
    return-object v0
.end method

.method public static getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 256
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    .line 268
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 269
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v2, v1, v4

    goto :goto_0

    .line 270
    :cond_4
    if-eqz v0, :cond_5

    .line 271
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v5

    goto :goto_0

    .line 272
    :cond_5
    if-eqz v2, :cond_0

    .line 273
    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method public static getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 2

    .prologue
    .line 410
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;

    move-result-object v0

    .line 411
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    goto :goto_0
.end method

.method public static getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    .line 207
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, ""

    .line 209
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 708
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    const-string v0, ""

    .line 287
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpeakableName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasSpeakableName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompanionMmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 539
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity was null."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :goto_0
    return v0

    .line 543
    :cond_0
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entity component was empty."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    :cond_1
    const-string v0, "com.android.multimediamessage"

    invoke-static {v1, v0}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    if-nez p0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    const-string v2, "com.google.android.apps.googlevoice"

    invoke-static {v1, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.mms"

    .line 528
    invoke-static {v1, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.multimediamessage"

    .line 529
    invoke-static {v1, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.glass.companion.sms"

    .line 530
    invoke-static {v1, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHangoutPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSendTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    .line 307
    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityUtils;->isSmsEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 313
    :cond_1
    return v0
.end method

.method static isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getShouldSync()Z

    move-result v0

    return v0
.end method

.method private static isSmsEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z
    .locals 2

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

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

.method public static isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 296
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 297
    invoke-static {v1, v0}, Lcom/google/common/primitives/Ints;->a([II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSourceAndIdFromEntityGuid(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    .line 186
    if-eqz p0, :cond_2

    const-string v0, "entity_guid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "entity_guid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 188
    const-string v2, "/"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 190
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unrecognized entity GUID format [entityGuid=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_1
    return-object v1

    :cond_1
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method public static sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 464
    if-nez p0, :cond_1

    .line 465
    const/4 v0, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    if-eqz p1, :cond_2

    .line 471
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    move-object v1, v0

    .line 477
    :goto_1
    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 485
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    invoke-virtual {v1, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    .line 489
    goto :goto_0

    .line 473
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedEmailCache:Landroid/util/LruCache;

    move-object v1, v0

    goto :goto_1

    .line 492
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 497
    if-eqz p1, :cond_6

    sget-object v5, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 499
    :goto_3
    if-nez v0, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 500
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 496
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 497
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 605
    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v4, "is_communication_target"

    .line 608
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getIsCommunicationTarget()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 607
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v0, "phone_number"

    .line 610
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "email"

    .line 612
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 611
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    const-string v4, "display_name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    const-string v0, "image_url"

    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "protobuf_blob"

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 619
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->convertToDBType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    :cond_1
    const-string v4, "can_hangout"

    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->canHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 626
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 630
    :goto_2
    if-eqz v0, :cond_2

    .line 631
    const-string v4, "obfuscated_gaia_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 635
    invoke-static {v0, v2}, Lcom/google/common/primitives/Ints;->a([II)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 636
    :goto_3
    const-string v4, "is_in_my_contacts"

    if-eqz v0, :cond_b

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 641
    const-string v4, "messaging_persona_source"

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    const-string v0, "share_priority"

    .line 650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getGlasswareAffinity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 649
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    :cond_4
    const-string v0, "is_share_target"

    .line 654
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 653
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v1

    .line 658
    if-lez v1, :cond_e

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    .line 660
    :goto_6
    if-ge v0, v1, :cond_d

    .line 661
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 662
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 666
    if-eqz v5, :cond_6

    .line 667
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    move v0, v2

    .line 608
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 622
    goto/16 :goto_1

    .line 628
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 635
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 636
    goto/16 :goto_4

    :cond_c
    move v1, v2

    .line 654
    goto :goto_5

    .line 670
    :cond_d
    const-string v0, "secondary_phone_numbers"

    .line 671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v4

    .line 675
    if-lez v4, :cond_13

    .line 676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 677
    :goto_7
    if-ge v1, v4, :cond_12

    .line 678
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v6, v0, v1

    .line 679
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 680
    :cond_f
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    .line 681
    sget-object v7, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 683
    invoke-static {v0, v2}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_10
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 691
    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 693
    const-string v1, "messaging_persona_source_ids"

    .line 694
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_13
    return-object v3
.end method

.method public static updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3

    .prologue
    .line 760
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->ensurePriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 761
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setContentUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 762
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getUsageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setUsageCount(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 763
    return-void
.end method

.method public static updatePhoneCallUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3

    .prologue
    .line 767
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->ensurePriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 768
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getUsageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setUsageCount(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 769
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setPhoneUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 770
    return-void
.end method
