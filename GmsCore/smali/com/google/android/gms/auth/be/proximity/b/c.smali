.class public Lcom/google/android/gms/auth/be/proximity/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/be/proximity/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/b/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 251
    .line 254
    :try_start_0
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v8

    .line 259
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    const-string v2, "license__id"

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "license__type"

    invoke-static {p1, v3}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "license__data"

    invoke-static {p1, v4}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/Cursor;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 273
    :try_start_2
    new-instance v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    invoke-direct {v9}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;-><init>()V

    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a:Ljava/lang/String;

    const-string v2, "account_id"

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->b:Ljava/lang/String;

    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->c:Ljava/lang/String;

    iput-object v0, v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->d:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 287
    :try_start_3
    const-string v0, "allowed_channels"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 291
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/b/f;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 293
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    .line 294
    invoke-virtual {v9, v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    invoke-static {p0, v8}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 265
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating permit from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 316
    :catch_1
    move-exception v0

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_0

    .line 317
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 319
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Got invalid permit from database."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {p0, v8}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 268
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating permit from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :catch_3
    move-exception v0

    invoke-static {p0, v8}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 280
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating permit from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :catch_4
    move-exception v0

    invoke-static {p0, v8}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 283
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating permit from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    const-string v1, "permit__requester_access"

    const/4 v2, 0x0

    const-string v3, "permit_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 312
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 314
    invoke-virtual {v9}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a()Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    return-object v0

    .line 316
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 4

    .prologue
    .line 326
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-static {p0, v2}, Lcom/google/android/gms/auth/g/b;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-static {p0, v3}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/Cursor;Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 331
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating premit requester access from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    const-string v1, "Error when creating premit requester access from Cursor."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    :try_start_0
    const-string v2, "permit"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 346
    const-string v3, "permit__requester_access"

    const-string v4, "permit_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    if-lez v2, :cond_0

    .line 352
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :cond_0
    move v0, v1

    .line 350
    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 125
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    const-string v1, "Getting permit with permitId: %s..."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    :try_start_0
    const-string v1, "permit"

    const/4 v2, 0x0

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 137
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 139
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    return-object v0

    :cond_0
    move-object v0, v8

    .line 137
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 8

    .prologue
    .line 184
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    const-string v1, "Getting all permits..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    :try_start_0
    const-string v1, "permit"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 196
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    :goto_0
    return-object v0

    .line 199
    :cond_0
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    invoke-static {v0, v2}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    throw v0

    .line 205
    :cond_1
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 85
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    const-string v1, "Saving permit with id: %s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->c(Ljava/lang/String;)Z

    move-result v2

    .line 89
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    const-string v0, "permit"

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "id"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "account_id"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "type"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "license__id"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "license__data"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "license__type"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "allowed_channels"

    sget-object v6, Lcom/google/android/gms/auth/be/proximity/b/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-gez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to add permit with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    throw v0

    .line 99
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 100
    const-string v4, "permit__requester_access"

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "permit_id"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "id"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "type"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    .line 104
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to add permit access with permit id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    return v2
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    const-string v1, "Getting permits under account: %s..."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    :try_start_0
    const-string v1, "permit"

    const/4 v2, 0x0

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 164
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    :goto_0
    return-object v0

    .line 167
    :cond_0
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    invoke-static {v0, v2}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    throw v0

    .line 173
    :cond_1
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 239
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/c;->a:Ljava/lang/String;

    const-string v1, "Removing permit with permitId: %s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b/c;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/proximity/b/a;->b()V

    throw v0
.end method
