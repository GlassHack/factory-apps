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
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/boutique/BoutiqueQueryHelper;)V
    .locals 0
    .param p1, "boutiqueQueryHelper"    # Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    .line 45
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

    .line 322
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 323
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 324
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 326
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v3

    .line 328
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 329
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, "c":Landroid/database/Cursor;
    return-object v6

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    move v0, v3

    .line 324
    goto :goto_0
.end method

.method private varargs executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p1, p2, p3}, Lcom/google/glass/entity/EntityHelper;->constructQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 288
    .local v0, "c":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v1

    .line 289
    .local v1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 291
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/nano/Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 296
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    :goto_0
    return-object v2

    .line 296
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 296
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
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {p1, p2, p3}, Lcom/google/glass/entity/EntityHelper;->constructQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 305
    .local v0, "c":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/google/glass/entity/EntityHelper;->boutiqueQueryHelper:Lcom/google/glass/boutique/BoutiqueQueryHelper;

    invoke-virtual {v3, p1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v1

    .line 306
    .local v1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 307
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    if-eqz v0, :cond_1

    .line 309
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/entity/EntityHelper;->removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/nano/Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_1
    return-object v2
.end method

.method public static getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 131
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSelfEntityByEmail(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 83
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "email":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Email is empty; returning a null self entity!"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-object v5

    .line 91
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

    .line 94
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 95
    .local v9, "foundEntity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-eqz v6, :cond_3

    .line 97
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v8

    .line 99
    .local v8, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    move-object v9, v8

    .line 101
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v8    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    if-nez v9, :cond_4

    .line 117
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not find self entity; returning null."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v5, v9

    .line 119
    goto :goto_0

    .line 104
    .restart local v8    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_5
    :try_start_1
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    move-object v9, v8

    .line 107
    :cond_6
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    move-object v9, v8

    goto :goto_1

    .line 112
    .end local v8    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method public static removeDisabledPersonas(Lcom/google/googlex/glass/common/proto/nano/Entity;Ljava/util/Set;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 6
    .param p0, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/nano/Entity;"
        }
    .end annotation

    .prologue
    .local p1, "enabledGlasswareSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 336
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 337
    .local v0, "enabledPersonas":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;>;"
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 339
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    aget-object v3, v5, v1

    .line 340
    .local v3, "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    iget-object v5, v3, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->phoneNumberPersona:Lcom/google/googlex/glass/common/proto/nano/MessagingPersona$PhoneNumberPersona;

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 341
    .local v2, "isSmsPersona":Z
    :goto_1
    if-nez v2, :cond_0

    .line 342
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->hasSource()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isSmsPersona":Z
    :cond_2
    move v2, v4

    .line 340
    goto :goto_1

    .line 347
    .end local v1    # "i":I
    .end local v3    # "persona":Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;
    :cond_3
    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .line 348
    return-object p0
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/glass/entity/EntityHelper;

    .prologue
    .line 48
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 49
    return-void
.end method


# virtual methods
.method public getContentValuesForUpdatingUsage(Lcom/google/googlex/glass/common/proto/nano/Entity;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "protobuf_blob"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 388
    return-object v0
.end method

.method public getEntityByGuid(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entityGuid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->parseSourceAndIdFromEntityGuid(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 219
    .local v3, "sourceAndIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, "source":Ljava/lang/String;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "entityId":Ljava/lang/String;
    const-string v4, "source=? AND _id=?"

    new-array v5, v9, [Ljava/lang/String;

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    invoke-direct {p0, p1, v4, v5}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 228
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-nez v0, :cond_0

    .line 229
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

.method public getEntityByMessagingPersonaId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "personaSource"    # Ljava/lang/String;
    .param p3, "personaId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 238
    const-string v1, "messaging_persona_source_ids LIKE \'%"

    .line 239
    invoke-static {p2, p3}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersonaGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    .line 238
    invoke-direct {p0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 240
    .local v0, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-nez v0, :cond_0

    .line 241
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No entity found with messaging persona [personaSource=%s, personaId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-object v0
.end method

.method public getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const/4 v1, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v1

    .line 196
    :cond_1
    invoke-static {p2, v8}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "formattedEmail":Ljava/lang/String;
    const-string v4, "email= ? OR messaging_persona_source_ids LIKE ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "\'%"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {p0, p1, v4, v5}, Lcom/google/glass/entity/EntityHelper;->executeQueryForList(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    const/4 v2, 0x0

    .line 203
    .local v2, "entityToReturn":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 206
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v2, :cond_2

    .line 209
    :cond_3
    move-object v2, v1

    goto :goto_1

    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_4
    move-object v1, v2

    .line 213
    goto :goto_0
.end method

.method public getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    const-string v1, "phone_number = ? OR secondary_phone_numbers LIKE ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "\'%"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v1

    goto :goto_0
.end method

.method public getPictureUrlViaEmail(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 172
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasEmail()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 187
    :goto_0
    return-object v1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "entityByEmail":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 183
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 187
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPictureUrlViaPhoneNumber(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 156
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 162
    .local v0, "entityByPhoneNumber":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/nano/Entity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 61
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

    .line 67
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Did not find self entity with id value \'SELF\', fallback to email."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityHelper;->getSelfEntityByEmail(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "email=?"

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 256
    invoke-static {p2, v3}, Lcom/google/glass/entity/EntityUtils;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 255
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 267
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    const-string v1, "phone_number=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 280
    :cond_0
    invoke-static {p2}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    const-string v1, "secondary_phone_numbers LIKE \'%"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/entity/EntityHelper;->executeQueryForFirstResult(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public updateEntityUsage(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/nano/Entity;)I
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity;

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
            "Lcom/google/googlex/glass/common/proto/nano/Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 368
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 369
    .local v0, "allValues":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 370
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 371
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getContentValuesForUpdatingUsage(Lcom/google/googlex/glass/common/proto/nano/Entity;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v2

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/nano/Entity;
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

    .line 375
    sget-object v4, Lcom/google/glass/entity/EntityProviderConstants;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "updateUsage"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 376
    .local v3, "updatePath":Landroid/net/Uri;
    invoke-virtual {p1, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    return v4
.end method
