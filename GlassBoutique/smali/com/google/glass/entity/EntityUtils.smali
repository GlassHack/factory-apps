.class public final Lcom/google/glass/entity/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# static fields
.field private static final CONTACT_GAIA_DELIMITER:Ljava/lang/String; = "_"

.field private static final CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field static final ENTITY_GUID_PREFIX:Ljava/lang/String; = "entity_guid:"

.field static final ENTITY_GUID_SEPARATOR:Ljava/lang/String; = "/"

.field public static final FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

.field private static final GMAIL_DOMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ","

.field public static final PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

.field public static final SELF_ENTITY_ID:Ljava/lang/String; = "SELF"

.field public static final SELF_ENTITY_SOURCE:Ljava/lang/String; = "api:SELF"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final sanitizedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sanitizedStrippedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityUtils;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

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
    .locals 6
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 135
    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v1, v4, v0

    .line 140
    .local v1, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    sget-object v4, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_3
    move v2, v3

    .line 145
    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 718
    if-eqz p0, :cond_0

    .line 720
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 728
    :goto_0
    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone entity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static componentMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "componentPrefix"    # Ljava/lang/String;

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
    .param p0, "type"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "entities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 328
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 329
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    .end local v0    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-object v1
.end method

.method public static doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 6
    .param p0, "first"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p1, "second"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 229
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 230
    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "secondId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "secondEmail":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "compare":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 249
    goto :goto_0
.end method

.method private static ensurePriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "cursor"    # Landroid/database/Cursor;

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
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 585
    if-nez p0, :cond_0

    .line 597
    :goto_0
    return-object v1

    .line 591
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    goto :goto_0

    .line 592
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error deserializing protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "source":Ljava/lang/String;
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

    move-result-object v1

    .line 569
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "entityId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 5
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 424
    .local v0, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    .end local v0    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :goto_1
    return-object v0

    .line 423
    .restart local v0    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .locals 4
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v2, 0x0

    .line 382
    if-nez p0, :cond_1

    move-object v0, v2

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 388
    goto :goto_0

    .line 391
    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 392
    .local v1, "spaceIndex":I
    if-lez v1, :cond_0

    .line 395
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 736
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 737
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 744
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to parse entity from intent %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    .end local v1    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;
    .locals 6
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 439
    .local v1, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isHangoutPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .restart local v0    # "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_2
    return-object v0
.end method

.method public static getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;
    .locals 6
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v2

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    const/4 v1, 0x0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    const/4 v0, 0x0

    .line 268
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 269
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    goto :goto_0

    .line 270
    :cond_4
    if-eqz v1, :cond_5

    .line 271
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_0

    .line 272
    :cond_5
    if-eqz v0, :cond_0

    .line 273
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method public static getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 2
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 410
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getHangoutsPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, "hangoutsPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    goto :goto_0
.end method

.method public static getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "personaSource"    # Ljava/lang/String;
    .param p1, "personaId"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    .line 207
    .end local p0    # "personaSource":Ljava/lang/String;
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
    .end local p1    # "personaId":Ljava/lang/String;
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
    .param p0, "entityId"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 709
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 280
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "source":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    const-string v1, ""

    .line 287
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSpeakableName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .locals 5
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v1, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 539
    sget-object v2, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Entity was null."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :goto_0
    return v1

    .line 543
    :cond_0
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    sget-object v2, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Entity component was empty."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    :cond_1
    const-string v1, "com.android.multimediamessage"

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v1, 0x0

    .line 518
    if-nez p0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getComponentFromSource(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    const-string v2, "com.google.android.apps.googlevoice"

    invoke-static {v0, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.mms"

    .line 528
    invoke-static {v0, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.multimediamessage"

    .line 529
    invoke-static {v0, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.glass.companion.sms"

    .line 530
    invoke-static {v0, v2}, Lcom/google/glass/entity/EntityUtils;->componentMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "persona"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .locals 3
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p1, "allowSms"    # Z

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 307
    .local v0, "isFavorite":Z
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityUtils;->isSmsEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-static {p0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 313
    :cond_1
    return v1
.end method

.method static isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getShouldSync()Z

    move-result v0

    return v0
.end method

.method private static isSmsEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z
    .locals 2
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p1, "allowSms"    # Z

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v0, 0x1

    .line 296
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 297
    invoke-static {v1, v0}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSourceAndIdFromEntityGuid(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p0, "entityGuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "source":Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, "entityId":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v4, "entity_guid:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "entity_guid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 188
    .local v3, "sourceIdx":I
    const-string v4, "/"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 190
    .local v1, "separatorIdx":I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local v1    # "separatorIdx":I
    .end local v3    # "sourceIdx":I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    :cond_1
    sget-object v4, Lcom/google/glass/entity/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unrecognized entity GUID format [entityGuid=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    const/4 v4, 0x0

    .line 198
    :goto_0
    return-object v4

    :cond_2
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0
.end method

.method public static sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "stripGmailPlus"    # Z

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    .line 464
    if-nez p0, :cond_1

    .line 465
    const/4 v1, 0x0

    .line 511
    :cond_0
    :goto_0
    return-object v1

    .line 470
    :cond_1
    if-eqz p1, :cond_2

    .line 471
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 477
    .local v0, "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    .local v1, "cached":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 482
    sget-object v7, Lcom/google/glass/entity/EntityUtils;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 485
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 488
    invoke-virtual {v0, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 489
    goto :goto_0

    .line 473
    .end local v0    # "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "cached":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->sanitizedEmailCache:Landroid/util/LruCache;

    .restart local v0    # "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 492
    .restart local v1    # "cached":Ljava/lang/String;
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v3, "emailBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "domain":Ljava/lang/String;
    if-eqz p1, :cond_6

    sget-object v7, Lcom/google/glass/entity/EntityUtils;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 499
    .local v5, "removePlus":Z
    :goto_3
    if-nez v5, :cond_4

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 500
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_4
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v0, p0, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 511
    goto/16 :goto_0

    .line 496
    .end local v2    # "domain":Ljava/lang/String;
    .end local v5    # "removePlus":Z
    .end local v6    # "result":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 497
    .restart local v2    # "domain":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;
    .locals 21
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 604
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .local v17, "values":Landroid/content/ContentValues;
    const-string v18, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v18, "source"

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v19, "is_communication_target"

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getIsCommunicationTarget()Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    :goto_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 607
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v18, "phone_number"

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 609
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v18, "email"

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 611
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "displayName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 615
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    const-string v18, "image_url"

    invoke-static/range {p0 .. p0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v18, "protobuf_blob"

    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasType()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 620
    const-string v18, "type"

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/glass/entity/EntityUtils;->convertToDBType(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    :cond_1
    const-string v19, "can_hangout"

    invoke-static/range {p0 .. p0}, Lcom/google/glass/entity/EntityUtils;->canHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    const/4 v13, 0x0

    .line 625
    .local v13, "obfuscatedGaiaId":Ljava/lang/String;
    sget-object v18, Lcom/google/glass/entity/EntityUtils;->PLUS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v13

    .line 630
    :goto_2
    if-eqz v13, :cond_2

    .line 631
    const-string v18, "obfuscated_gaia_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 635
    invoke-static/range {v18 .. v19}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v8, 0x1

    .line 636
    .local v8, "isInMyContacts":Z
    :goto_3
    const-string v19, "is_in_my_contacts"

    if-eqz v8, :cond_b

    const/16 v18, 0x1

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    invoke-static/range {p0 .. p0}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v14

    .line 640
    .local v14, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 641
    const-string v18, "messaging_persona_source"

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 649
    const-string v18, "share_priority"

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getGlasswareAffinity()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 649
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    :cond_4
    const-string v19, "is_share_target"

    .line 654
    invoke-static/range {p0 .. p0}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 653
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v12

    .line 658
    .local v12, "numSecondaryPhoneNumbers":I
    if-lez v12, :cond_e

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v3, "allSecondaryNumbers":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v12, :cond_d

    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 662
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 666
    .local v15, "phone":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 667
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 608
    .end local v3    # "allSecondaryNumbers":Ljava/lang/StringBuilder;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "isInMyContacts":Z
    .end local v12    # "numSecondaryPhoneNumbers":I
    .end local v13    # "obfuscatedGaiaId":Ljava/lang/String;
    .end local v14    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v15    # "phone":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 622
    .restart local v4    # "displayName":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 628
    .restart local v13    # "obfuscatedGaiaId":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/glass/entity/EntityUtils;->getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 635
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 636
    .restart local v8    # "isInMyContacts":Z
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 654
    .restart local v14    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_c
    const/16 v18, 0x0

    goto :goto_5

    .line 670
    .restart local v3    # "allSecondaryNumbers":Ljava/lang/StringBuilder;
    .restart local v6    # "i":I
    .restart local v12    # "numSecondaryPhoneNumbers":I
    :cond_d
    const-string v18, "secondary_phone_numbers"

    .line 671
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 670
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .end local v3    # "allSecondaryNumbers":Ljava/lang/StringBuilder;
    .end local v6    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v11

    .line 675
    .local v11, "numMessagingPersonas":I
    if-lez v11, :cond_13

    .line 676
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .local v9, "messagingPersonaIdSources":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v11, :cond_12

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-object/from16 v18, v0

    aget-object v10, v18, v6

    .line 679
    .local v10, "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 680
    :cond_f
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "id":Ljava/lang/String;
    sget-object v18, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 683
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v7, v0}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 685
    :cond_10
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 686
    .local v16, "sourceId":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .end local v7    # "id":Ljava/lang/String;
    .end local v16    # "sourceId":Ljava/lang/String;
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 691
    .end local v10    # "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_12
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, "fullString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_13

    .line 693
    const-string v18, "messaging_persona_source_ids"

    const/16 v19, 0x0

    .line 694
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 693
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v5    # "fullString":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "messagingPersonaIdSources":Ljava/lang/StringBuilder;
    :cond_13
    return-object v17
.end method

.method public static updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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
