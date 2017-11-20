.class public final Lcom/google/android/gms/analytics/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/t;

.field private final c:Lcom/google/android/gms/analytics/internal/b;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;

.field private final f:I

.field private volatile g:Lcom/google/android/gms/analytics/internal/i;

.field private final h:Lcom/google/android/gms/analytics/internal/h;

.field private i:Lcom/google/android/gms/common/util/i;

.field private j:J

.field private k:Lcom/google/android/gms/analytics/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' TEXT);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/analytics/internal/b;Lcom/google/android/gms/analytics/internal/h;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "google_analytics.db"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/analytics/internal/s;-><init>(Lcom/google/android/gms/analytics/internal/b;Lcom/google/android/gms/analytics/internal/h;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/analytics/internal/b;Lcom/google/android/gms/analytics/internal/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    .line 121
    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/s;->d:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/s;->h:Lcom/google/android/gms/analytics/internal/h;

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    .line 124
    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->i:Lcom/google/android/gms/common/util/i;

    .line 125
    new-instance v0, Lcom/google/android/gms/analytics/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/s;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/internal/t;-><init>(Lcom/google/android/gms/analytics/internal/s;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->b:Lcom/google/android/gms/analytics/internal/t;

    .line 126
    new-instance v0, Lcom/google/android/gms/analytics/internal/c;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/c;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->g:Lcom/google/android/gms/analytics/internal/i;

    .line 127
    invoke-static {p3}, Lcom/google/android/gms/analytics/internal/s;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/internal/s;->f:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/s;->j:J

    .line 130
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 222
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->i:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    const-string v1, "Skipping null value for param %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 386
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 387
    if-gtz p1, :cond_0

    .line 388
    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    move-object v0, v9

    .line 418
    :goto_0
    return-object v0

    .line 391
    :cond_0
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 392
    if-nez v0, :cond_1

    move-object v0, v9

    .line 393
    goto :goto_0

    .line 398
    :cond_1
    :try_start_0
    const-string v1, "hits"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 406
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 414
    :cond_3
    if-eqz v1, :cond_4

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v9

    .line 418
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 412
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    if-eqz v1, :cond_4

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 414
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_5

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 414
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 411
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/util/Collection;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    const-string v0, "Null passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    .line 576
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/l;

    .line 577
    add-int/lit8 v2, v1, 0x1

    iget-wide v6, v0, Lcom/google/android/gms/analytics/internal/l;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 578
    goto :goto_1

    .line 579
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/analytics/internal/s;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 589
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 590
    :cond_0
    const-string v0, "Empty hitIds passed to deleteHits."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 594
    if-eqz v2, :cond_1

    .line 597
    const-string v3, "HIT_ID in (%s)"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, ","

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 601
    :try_start_0
    const-string v4, "hits"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/internal/b;->a(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deleting hit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 602
    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)Ljava/util/List;
    .locals 16

    .prologue
    .line 429
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 430
    const-string v2, "Error opening database for peekHits."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 431
    if-nez v2, :cond_0

    move-object v2, v11

    .line 526
    :goto_0
    return-object v2

    .line 435
    :cond_0
    const/4 v12, 0x0

    .line 443
    :try_start_0
    const-string v3, "hits"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_time"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "hit_app_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "hit_id"

    aput-object v14, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 452
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    :cond_1
    new-instance v3, Lcom/google/android/gms/analytics/internal/l;

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/analytics/internal/l;-><init>(JJLjava/lang/String;)V

    .line 461
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 468
    :cond_2
    if-eqz v12, :cond_3

    .line 469
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_3
    const/4 v13, 0x0

    .line 475
    :try_start_2
    const-string v3, "hits"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_string"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "hit_url"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "hit_id"

    aput-object v15, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 484
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v13

    .line 487
    :goto_1
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_8

    .line 491
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    .line 492
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/analytics/internal/l;->e:Ljava/lang/String;

    .line 499
    :goto_2
    add-int/lit8 v2, v4, 0x1

    .line 500
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-nez v4, :cond_d

    .line 525
    :cond_4
    if-eqz v3, :cond_5

    .line 526
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v2, v11

    goto/16 :goto_0

    .line 464
    :catch_0
    move-exception v2

    move-object v3, v12

    .line 465
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 468
    if-eqz v3, :cond_6

    .line 469
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v2, v11

    goto/16 :goto_0

    .line 468
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v12, :cond_7

    .line 469
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 495
    :cond_8
    :try_start_5
    const-string v5, "HitString for hitId %d  too large.  Hit will be deleted."

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    iget-wide v8, v2, Lcom/google/android/gms/analytics/internal/l;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 503
    :catch_1
    move-exception v2

    move-object v12, v3

    .line 504
    :goto_5
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in peekHits fetching hitString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 512
    const/4 v4, 0x0

    .line 513
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/internal/l;

    .line 514
    iget-object v6, v2, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 515
    if-nez v4, :cond_b

    .line 516
    const/4 v4, 0x1

    .line 521
    :cond_9
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 525
    :catchall_1
    move-exception v2

    :goto_7
    if-eqz v12, :cond_a

    .line 526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .line 525
    :cond_b
    if-eqz v12, :cond_c

    .line 526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v2, v3

    goto/16 :goto_0

    .line 525
    :catchall_2
    move-exception v2

    move-object v12, v3

    goto :goto_7

    .line 503
    :catch_2
    move-exception v2

    goto :goto_5

    .line 468
    :catchall_3
    move-exception v2

    move-object v12, v3

    goto :goto_4

    .line 464
    :catch_3
    move-exception v2

    move-object v3, v12

    goto/16 :goto_3

    :cond_d
    move v4, v2

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 343
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 375
    :goto_0
    return-object v0

    .line 347
    :cond_1
    const-string v0, "Error opening database for peekHitIdsForApp."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 348
    if-nez v0, :cond_2

    move-object v0, v9

    .line 349
    goto :goto_0

    .line 354
    :cond_2
    :try_start_0
    const-string v1, "hits"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "hit_app_id"

    aput-object v4, v2, v3

    const-string v3, "hit_app_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_id"

    sget-object v8, Lcom/google/android/gms/analytics/internal/k;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v8}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 363
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 371
    :cond_4
    if-eqz v1, :cond_5

    .line 372
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v9

    .line 375
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 369
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHitsForApp fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    if-eqz v1, :cond_5

    .line 372
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 371
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 372
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 371
    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_3

    .line 368
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/internal/s;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    .line 709
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 710
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/gms/analytics/internal/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 610
    .line 611
    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 612
    if-nez v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    :try_start_0
    const-string v3, "SELECT COUNT(*) from %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "hits"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 618
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v0, v2

    .line 624
    :cond_2
    if-eqz v1, :cond_0

    .line 625
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    if-eqz v1, :cond_0

    .line 625
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 625
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    const-string v0, "Dispatch running..."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->d(Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->g:Lcom/google/android/gms/analytics/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 639
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->b(I)Ljava/util/List;

    move-result-object v3

    .line 640
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    const-string v0, "Nothing to dispatch."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->d(Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/internal/b;->a(Z)V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->k:Lcom/google/android/gms/analytics/internal/r;

    if-nez v0, :cond_2

    .line 647
    new-instance v4, Lcom/google/android/gms/analytics/internal/r;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "_t=dispatch&_gmsv="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/analytics/internal/r;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/s;->k:Lcom/google/android/gms/analytics/internal/r;

    .line 651
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v0

    .line 652
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gt v0, v4, :cond_3

    move v0, v1

    .line 654
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/s;->g:Lcom/google/android/gms/analytics/internal/i;

    iget-object v5, p0, Lcom/google/android/gms/analytics/internal/s;->k:Lcom/google/android/gms/analytics/internal/r;

    invoke-interface {v4, v3, v5, v0}, Lcom/google/android/gms/analytics/internal/i;->a(Ljava/util/List;Lcom/google/android/gms/analytics/internal/r;Z)I

    move-result v0

    .line 655
    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/analytics/internal/u;->a(I)V

    .line 656
    const-string v4, "Sent %d of %d hits."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/q;->d(Ljava/lang/String;)I

    .line 662
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/internal/s;->a(Ljava/util/Collection;)V

    .line 664
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    .line 669
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v0

    if-lez v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->h:Lcom/google/android/gms/analytics/internal/h;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/h;->a()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 652
    goto :goto_1

    .line 674
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->k:Lcom/google/android/gms/analytics/internal/r;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    const-string v2, "Error opening database for clearHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_0

    .line 172
    new-array v3, v0, [Ljava/lang/String;

    .line 173
    aput-object p1, v3, v1

    .line 174
    const-string v4, "hits"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/internal/b;->a(Z)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    .line 178
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    :cond_0
    const-string v0, "Skipping empty hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->i:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/internal/s;->j:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    iput-wide v4, p0, Lcom/google/android/gms/analytics/internal/s;->j:J

    const-string v0, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->i:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v6

    const-string v0, "hits"

    const-string v7, "HIT_TIME < ?"

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {v3, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/google/android/gms/analytics/internal/b;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v0

    if-le v6, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/u;->b()V

    .line 202
    :cond_3
    const-string v0, "_v"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    const-string v4, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "_v"

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "_gmsv"

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "AppUID"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    :cond_6
    const-string v0, "Missing App UID, using 0."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    const-string v0, "0"

    move-object v3, v0

    .line 204
    :goto_2
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/analytics/internal/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v0

    if-ltz v0, :cond_7

    const-string v6, "App exceeded storage limit, deleting %d hits."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/analytics/internal/q;->f(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v5, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/u;->b()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v0

    sub-int/2addr v0, v4

    if-ltz v0, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v4, "Store full, deleting %d hits."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/q;->f(Ljava/lang/String;)I

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/u;->b()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    .line 205
    :cond_8
    const-string v0, "Error opening database for putHit."

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/s;->c(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hit_string"

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/s;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "hit_app_id"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v1, "hit_url"

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Using destination "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "hit_url"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    :goto_4
    :try_start_0
    const-string v0, "hits"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/s;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/u;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->c:Lcom/google/android/gms/analytics/internal/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/internal/b;->a(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Error storing hit."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 201
    goto/16 :goto_1

    .line 205
    :cond_b
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->j:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_3

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " Using destination "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    const-string v0, "hit_url"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v3, v0

    goto/16 :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/analytics/internal/s;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/s;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    const-string v0, "Error closing database."

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/q;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
