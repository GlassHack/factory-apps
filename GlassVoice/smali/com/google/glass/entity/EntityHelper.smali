.class public Lcom/google/glass/entity/EntityHelper;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedInstance:Lcom/google/glass/entity/EntityHelper;


# instance fields
.field private final boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/boutique/BoutiqueQueryHelper;)V
    .locals 0
    .param p1, "boutiqueQueryHelper"    # Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .line 47
    return-void
.end method

.method private static varargs constructQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 325
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 326
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 327
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 329
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v3

    .line 331
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 332
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    .local v6, "c":Landroid/database/Cursor;
    return-object v6

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    move v0, v3

    .line 327
    goto :goto_0
.end method

.method private varargs executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1, p2, p3}, Lcom/google/glass/entity/EntityHelper;->constructQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 291
    .local v0, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v1

    .line 292
    .local v1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 294
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :goto_0
    return-object v2

    .line 299
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private varargs executeQueryForList(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {p1, p2, p3}, Lcom/google/glass/entity/EntityHelper;->constructQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    .local v0, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-virtual {v3, p1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v1

    .line 309
    .local v1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-eqz v0, :cond_1

    .line 312
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_1
    return-object v2
.end method

.method public static getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 134
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSelfEntityByEmail(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 85
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 86
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "email":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Email is empty; returning a null self entity!"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-object v5

    .line 94
    :cond_0
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v10

    const-string v3, "email=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 98
    .local v9, "foundEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v6, :cond_3

    .line 100
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    .line 102
    .local v8, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    move-object v9, v8

    .line 104
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v8    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_3
    if-nez v9, :cond_4

    .line 120
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not find self entity; returning null."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v5, v9

    .line 122
    goto :goto_0

    .line 107
    .restart local v8    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    :try_start_1
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    move-object v9, v8

    .line 110
    :cond_6
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    move-object v9, v8

    goto :goto_1

    .line 115
    .end local v8    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method public static removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 5
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    .local v0, "enabledPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;>;"
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 342
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v3, v4, v1

    .line 343
    .local v3, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v2

    .line 344
    .local v2, "isSmsPersona":Z
    if-nez v2, :cond_0

    .line 345
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasSource()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    .end local v2    # "isSmsPersona":Z
    .end local v3    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 351
    return-object p0
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/glass/entity/EntityHelper;

    .prologue
    .line 50
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 51
    return-void
.end method


# virtual methods
.method public getContentValuesForUpdatingUsage(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "protobuf_blob"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 391
    return-object v0
.end method

.method public getEntityByGuid(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entityGuid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 221
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->parseSourceAndIdFromEntityGuid(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 222
    .local v3, "sourceAndIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "source":Ljava/lang/String;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "entityId":Ljava/lang/String;
    const-string v4, "source=? AND _id=?"

    new-array v5, v9, [Ljava/lang/String;

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    invoke-direct {p0, p1, v4, v5}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 231
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez v0, :cond_0

    .line 232
    sget-object v4, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No entity found for GUID [entityGuid=%s, source=%s, entityId=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object v2, v6, v8

    aput-object v1, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEntityByMessagingPersonaId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "personaSource"    # Ljava/lang/String;
    .param p3, "personaId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 241
    const-string v1, "messaging_persona_source_ids LIKE \'%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {p2, p3}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    .line 241
    invoke-direct {p0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 243
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-nez v0, :cond_0

    .line 244
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No entity found with messaging persona [personaSource=%s, personaId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_0
    return-object v0
.end method

.method public getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 195
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const/4 v1, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v1

    .line 199
    :cond_1
    invoke-static {p2, v9}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "formattedEmail":Ljava/lang/String;
    const-string v4, "email= ? OR messaging_persona_source_ids LIKE ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, p1, v4, v5}, Lcom/google/glass/entity/EntityHelper;->executeQueryForList(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .line 206
    .local v2, "entityToReturn":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 209
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v2, :cond_2

    .line 212
    :cond_3
    move-object v2, v1

    goto :goto_1

    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    move-object v1, v2

    .line 216
    goto :goto_0
.end method

.method public getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 146
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    const-string v1, "phone_number = ? OR secondary_phone_numbers LIKE ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "\'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    goto :goto_0
.end method

.method public getPictureUrlViaEmail(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 175
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasEmail()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "entityByEmail":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 186
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 190
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPictureUrlViaPhoneNumber(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 159
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 165
    .local v0, "entityByPhoneNumber":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 63
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v7

    const-string v3, "source=? AND _id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "api:SELF"

    aput-object v0, v4, v7

    const-string v0, "SELF"

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Found self entity with id value \'SELF\'."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    if-eqz v6, :cond_2

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Did not find self entity with id value \'SELF\', fallback to email."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityHelper;->getSelfEntityByEmail(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "email=?"

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 259
    invoke-static {p2, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    const-string v1, "phone_number=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    const-string v1, "secondary_phone_numbers LIKE \'%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public updateEntityUsage(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 360
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public updateEntityUsage(Landroid/content/ContentResolver;Ljava/util/List;)I
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 371
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 372
    .local v0, "allValues":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 373
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 374
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getContentValuesForUpdatingUsage(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v2

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    sget-object v4, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "EntityProvider updating entity usage for %d entities."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    sget-object v4, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "updateUsage"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 379
    .local v3, "updatePath":Landroid/net/Uri;
    invoke-virtual {p1, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    return v4
.end method
