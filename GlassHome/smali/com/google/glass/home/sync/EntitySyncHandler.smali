.class Lcom/google/glass/home/sync/EntitySyncHandler;
.super Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;
.source "EntitySyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;,
        Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    }
.end annotation


# static fields
.field static final ENTITY_SYNC_SHARED_PREFS_NAME:Ljava/lang/String; = "entity_sync"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FULL_REFRESH_INTERVAL_MS:J = 0xa4cb800L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LAST_FULL_REFRESH_MS:Ljava/lang/String; = "preference_lastFullRefreshMs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

.field static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field static final PHONE_MESSAGING_PERSONA_SOURCE:Ljava/lang/String; = "com.google.glass.companion.sms"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WHERE:Ljava/lang/String; = "(_id=? AND source=?)"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final application:Lcom/google/glass/home/HomeApplication;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/home/sync/EntitySyncHandler$1;

    invoke-direct {v1}, Lcom/google/glass/home/sync/EntitySyncHandler$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/entity/EntityMetadataDatabaseHelper;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/time/Clock;)V
    .locals 2
    .param p1, "application"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "entityMetadataHelper"    # Lcom/google/glass/entity/EntityMetadataDatabaseHelper;
    .param p3, "dispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p4, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 89
    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    .line 90
    iput-object p3, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 91
    const-string v0, "entity_sync"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/HomeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    .line 93
    iput-object p4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/time/Clock;

    .line 94
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getEntities(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 489
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->getContactsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    move-result-object v1

    .line 490
    .local v1, "contactsInfo":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->getShareTargetsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;

    move-result-object v6

    .line 492
    .local v6, "shareTargetsInfo":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;
    if-nez v1, :cond_0

    move v3, v7

    .line 493
    .local v3, "numContacts":I
    :goto_0
    if-nez v6, :cond_1

    move v4, v7

    .line 495
    .local v4, "numShareTargets":I
    :goto_1
    sget-object v8, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Received %s contacts and %s share targets."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 498
    .local v2, "entitiesFromCloud":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-eqz v1, :cond_2

    iget-object v8, v1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 499
    iget-object v9, v1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v10, v9

    move v8, v7

    :goto_2
    if-ge v8, v10, :cond_2

    aget-object v0, v9, v8

    .line 500
    .local v0, "contact":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 492
    .end local v0    # "contact":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2    # "entitiesFromCloud":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v3    # "numContacts":I
    .end local v4    # "numShareTargets":I
    :cond_0
    iget-object v8, v1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->contact:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 493
    .restart local v3    # "numContacts":I
    :cond_1
    iget-object v8, v6, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 494
    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 503
    .restart local v2    # "entitiesFromCloud":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .restart local v4    # "numShareTargets":I
    :cond_2
    if-eqz v6, :cond_3

    iget-object v8, v6, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 504
    iget-object v8, v6, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ShareTargetsInfo;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_3

    aget-object v5, v8, v7

    .line 505
    .local v5, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 508
    .end local v5    # "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    return-object v2
.end method

.method private getEntitiesFromDevice()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 467
    .local v7, "entitiesFromDevice":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 470
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    .line 473
    .local v8, "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v8, :cond_0

    .line 474
    new-instance v1, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    invoke-direct {v1, v8}, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 478
    .end local v8    # "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 478
    :cond_2
    if-eqz v6, :cond_3

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_3
    return-object v7
.end method

.method private getMessagingPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/Map;
    .locals 6
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 454
    .local v1, "personas":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 456
    .local v0, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    new-instance v5, Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;

    invoke-direct {v5, p0, v0}, Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;-><init>(Lcom/google/glass/home/sync/EntitySyncHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_0
    return-object v1
.end method

.method private newDeleteOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 4
    .param p1, "entityId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 544
    sget-object v0, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 545
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "(_id=? AND source=?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 546
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method adjustPhonePersonaForEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 5
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 291
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 293
    .local v0, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    const-string v4, "com.google.glass.companion.sms"

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 295
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setPersonaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    return-void
.end method

.method createRequest(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 8
    .param p1, "requiresFullRefresh"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 115
    new-instance v2, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;-><init>()V

    .line 116
    .local v2, "request":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    new-instance v4, Lcom/google/glass/util/SettingsSecure;

    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 117
    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v5, "android_id"

    invoke-virtual {v4, v5}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {v2, v4}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 118
    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setUsePeopleApi(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 122
    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setContactSync(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 123
    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setShareTargetSync(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "peopleApiSyncToken":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 128
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contact_sync_token"

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->getValueAsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setPeopleApiSyncToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 137
    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "verbose_server_logging"

    .line 136
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->getValueAsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "verboseServerLoggingStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setVerboseServerLogging(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 144
    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "focus_version_info"

    .line 143
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->getValueAsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "focusVersionInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->setFocusVersionInfo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 148
    :cond_2
    return-object v2
.end method

.method createResponseHandler(Ljava/util/Map;ZZ)Lcom/google/glass/net/ProtoResponseHandler;
    .locals 1
    .param p2, "isFullSync"    # Z
    .param p3, "verboseServerLogging"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;ZZ)",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "entitiesFromDevice":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncHandler$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/home/sync/EntitySyncHandler$2;-><init>(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/Map;ZZ)V

    return-object v0
.end method

.method getCloudEntityToUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 15
    .param p1, "fromCloud"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "fromDevice"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPriority()Z

    move-result v13

    if-nez v13, :cond_1

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 358
    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 359
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/home/sync/EntitySyncHandler;->getMessagingPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/util/Map;

    move-result-object v2

    .line 360
    .local v2, "cloudPersonas":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v9, "updatedCloudPersonas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    const/4 v4, 0x0

    .line 362
    .local v4, "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 363
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v13, v13

    if-ge v6, v13, :cond_6

    .line 364
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v5, v13, v6

    .line 365
    .local v5, "devicePersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    new-instance v3, Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;

    invoke-direct {v3, p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;-><init>(Lcom/google/glass/home/sync/EntitySyncHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    .line 366
    .local v3, "currentPersonaId":Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 367
    .local v1, "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-nez v1, :cond_4

    .line 363
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 341
    .end local v1    # "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v2    # "cloudPersonas":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    .end local v3    # "currentPersonaId":Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;
    .end local v4    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v5    # "devicePersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v6    # "i":I
    .end local v9    # "updatedCloudPersonas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getUsageCount()I

    move-result v10

    .line 342
    .local v10, "usageCount":I
    if-lez v10, :cond_2

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setUsageCount(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 345
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getContentUsageTimestampMs()J

    move-result-wide v11

    .line 346
    .local v11, "usageTimestamp":J
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_3

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setContentUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 349
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getPhoneUsageTimestampMs()J

    move-result-wide v7

    .line 350
    .local v7, "phoneUsageTimestamp":J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_0

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->setPhoneUsageTimestampMs(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    goto :goto_0

    .line 373
    .end local v7    # "phoneUsageTimestamp":J
    .end local v10    # "usageCount":I
    .end local v11    # "usageTimestamp":J
    .restart local v1    # "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v2    # "cloudPersonas":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    .restart local v3    # "currentPersonaId":Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;
    .restart local v4    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v5    # "devicePersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v6    # "i":I
    .restart local v9    # "updatedCloudPersonas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 374
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 375
    move-object v4, v1

    .line 379
    :cond_5
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 385
    .end local v1    # "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v3    # "currentPersonaId":Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;
    .end local v5    # "devicePersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v6    # "i":I
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    if-eqz v4, :cond_8

    .line 389
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 390
    .restart local v1    # "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eq v1, v4, :cond_7

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 391
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->clearIsDefault()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    goto :goto_3

    .line 397
    .end local v1    # "cloudPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 396
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 402
    .end local v2    # "cloudPersonas":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniquePersonaId;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    .end local v4    # "defaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v9    # "updatedCloudPersonas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    :cond_9
    invoke-virtual/range {p1 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 405
    .end local p1    # "fromCloud":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_4
    return-object p1

    .restart local p1    # "fromCloud":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_a
    const/16 p1, 0x0

    goto :goto_4
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method newDeleteOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;
    .locals 2
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 540
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method newInsertOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;
    .locals 5
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 515
    sget-object v2, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 516
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 517
    .local v1, "opBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 518
    .local v0, "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 520
    .end local v0    # "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method newUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;
    .locals 7
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 527
    sget-object v2, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    .line 528
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "(_id=? AND source=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 529
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 530
    .local v1, "opBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    .local v0, "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 533
    .end local v0    # "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method processSyncResponse(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;Ljava/util/Map;ZZ)V
    .locals 22
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;
    .param p3, "isFullSync"    # Z
    .param p4, "verboseServerLogging"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "entitiesFromDevice":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/home/sync/EntitySyncHandler;->getEntities(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;)Ljava/util/ArrayList;

    move-result-object v8

    .line 191
    .local v8, "entitiesFromCloud":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 192
    .local v14, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v12, 0x0

    .line 193
    .local v12, "numInserts":I
    const/4 v13, 0x0

    .line 194
    .local v13, "numUpdates":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 198
    .local v9, "fromCloud":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/glass/home/sync/EntitySyncHandler;->adjustPhonePersonaForEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 200
    new-instance v4, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    invoke-direct {v4, v9}, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 201
    .local v4, "cloudId":Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 202
    .local v10, "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez v10, :cond_0

    .line 204
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/glass/home/sync/EntitySyncHandler;->newInsertOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 208
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/google/glass/home/sync/EntitySyncHandler;->getCloudEntityToUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 209
    .local v3, "cloudEntityToUpdate":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v3, :cond_1

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v13, v13, 0x1

    .line 214
    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    .end local v3    # "cloudEntityToUpdate":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v4    # "cloudId":Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    .end local v9    # "fromCloud":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v10    # "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    const/4 v11, 0x0

    .line 220
    .local v11, "numDeletes":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->getContactsInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;

    move-result-object v5

    .line 221
    .local v5, "contactsInfo":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;
    if-eqz v5, :cond_3

    iget-object v0, v5, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 222
    iget-object v0, v5, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->deletedEntityId:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v6, v18, v17

    .line 223
    .local v6, "deletedId":Ljava/lang/String;
    sget-object v20, Lcom/google/glass/entity/EntityUtils;->FOCUS_GLASSWARE_SOURCE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v11, v11, 0x1

    .line 222
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 229
    .end local v6    # "deletedId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;->getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v15

    .line 231
    .local v15, "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const-string v17, "api:SELF"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 232
    const-string v17, "SELF"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 234
    new-instance v17, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 235
    .local v16, "selfEntityFromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez v16, :cond_7

    .line 236
    sget-object v17, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Inserting self entity."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/glass/home/sync/EntitySyncHandler;->newInsertOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v15    # "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v16    # "selfEntityFromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 248
    .restart local v10    # "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez p3, :cond_6

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getShouldSync()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 249
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 238
    .end local v10    # "fromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v15    # "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v16    # "selfEntityFromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_7
    invoke-virtual/range {v15 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 239
    sget-object v17, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Updating self entity."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    .end local v15    # "selfEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v16    # "selfEntityFromDevice":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "com.google.glass.entity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_4
    sget-object v17, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Updating entities: %s inserts, %s updates, %s deletes."

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 268
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 267
    invoke-interface/range {v17 .. v19}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_9
    if-eqz v5, :cond_a

    .line 273
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse$ContactsInfo;->getPeopleApiNextSyncToken()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/sync/EntitySyncHandler;->storeSyncToken(Ljava/lang/String;Z)V

    .line 278
    :cond_a
    if-eqz p4, :cond_b

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "verbose_server_logging"

    invoke-virtual/range {v17 .. v19}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->deleteKey(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 282
    :cond_b
    return-void

    .line 258
    :catch_0
    move-exception v7

    .line 261
    .local v7, "e":Landroid/content/OperationApplicationException;
    sget-object v17, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Batch db update failed."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 262
    .end local v7    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v7

    .line 264
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v17, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v18, "Unexpected RemoteException, batch db update failed."

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method requiresFullRefresh(Ljava/util/Map;)Z
    .locals 12
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "entitiesFromDevice":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 312
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 324
    :goto_0
    return v6

    .line 317
    :cond_0
    iget-object v8, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "preference_lastFullRefreshMs"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 318
    .local v1, "lastRefreshTimeMs":J
    iget-object v8, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v8}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 319
    .local v4, "msSinceLastRefresh":J
    const-wide/32 v8, 0xa4cb800

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    move v0, v6

    .line 320
    .local v0, "fullRefresh":Z
    :goto_1
    sget-object v8, Lcom/google/glass/home/sync/EntitySyncHandler;->LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "lastRefreshTimeStr":Ljava/lang/String;
    sget-object v9, Lcom/google/glass/home/sync/EntitySyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "%s [lastRefreshTime=%s, msSinceLastRefresh=%s]."

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v8, "Full refresh of entities"

    :goto_2
    aput-object v8, v11, v7

    aput-object v3, v11, v6

    const/4 v6, 0x2

    .line 323
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    .line 321
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    .line 324
    goto :goto_0

    .end local v0    # "fullRefresh":Z
    .end local v3    # "lastRefreshTimeStr":Ljava/lang/String;
    :cond_1
    move v0, v7

    .line 319
    goto :goto_1

    .line 321
    .restart local v0    # "fullRefresh":Z
    .restart local v3    # "lastRefreshTimeStr":Ljava/lang/String;
    :cond_2
    const-string v8, "Incremental sync of entities"

    goto :goto_2
.end method

.method storeSyncToken(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "peopleApiSyncToken"    # Ljava/lang/String;
    .param p2, "fullRefresh"    # Z

    .prologue
    .line 412
    if-nez p1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contact_sync_token"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->deleteKey(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 422
    :goto_0
    if-eqz p2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_lastFullRefreshMs"

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->entityMetadataHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contact_sync_token"

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->storeKeyValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public syncEntities()V
    .locals 8

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->getEntitiesFromDevice()Ljava/util/Map;

    move-result-object v0

    .line 101
    .local v0, "entitiesFromDevice":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->requiresFullRefresh(Ljava/util/Map;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler;->createRequest(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    move-result-object v2

    .line 102
    .local v2, "request":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->getPeopleApiSyncToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 103
    .local v1, "isFullSync":Z
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->getVerboseServerLogging()Z

    move-result v4

    .line 105
    .local v4, "verboseServerLogging":Z
    invoke-virtual {p0, v0, v1, v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->createResponseHandler(Ljava/util/Map;ZZ)Lcom/google/glass/net/ProtoResponseHandler;

    move-result-object v3

    .line 107
    .local v3, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;>;"
    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/glass/home/sync/EntitySyncHandler;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v5, v6, v2, v7, v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 111
    :cond_0
    return-void
.end method
