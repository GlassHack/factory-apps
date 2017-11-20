.class public final Lcom/google/android/gms/wearable/node/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static a:Lcom/google/android/gms/wearable/node/m;


# instance fields
.field public b:Lcom/google/android/gms/wearable/node/z;

.field public c:Lcom/google/android/gms/wearable/node/d;

.field public d:Lcom/google/android/gms/wearable/node/ax;

.field public e:Landroid/content/SharedPreferences;

.field public f:Landroid/content/ContentResolver;

.field public g:Lcom/google/android/gms/wearable/node/g;

.field public final h:Ljava/util/HashSet;

.field public i:J

.field private j:J

.field private k:J

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    .line 77
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->j:J

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/m;->l:Ljava/lang/Object;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->i:J

    .line 678
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;)J
    .locals 4

    .prologue
    .line 1540
    :try_start_0
    const-string v0, "SELECT _id FROM appkeys WHERE packageName=? AND signatureDigest=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1546
    :goto_0
    return-wide v0

    .line 1543
    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1544
    const-string v1, "packageName"

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    const-string v1, "signatureDigest"

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v1, "appkeys"

    const-string v2, "packageName"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 1528
    const-string v0, "DataItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertAssetRef: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1532
    const-string v1, "assets_digest"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v1, "dataitems_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v1, "assetname"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v1, "assetrefs"

    const-string v2, "assetname"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/Long;)J
    .locals 2

    .prologue
    .line 1007
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    .line 344
    iget-object v3, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    .line 345
    if-nez p3, :cond_0

    .line 346
    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    .line 347
    const-string v1, "deleted =0 AND packageName =? AND signatureDigest =?"

    .line 358
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND assetsPresent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " !=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select \'wear://\' || host || path as path,data as data,\'\' as tags,assetname as asset_key,assets_digest as asset_id from dataItemsAndAssets WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    const-string v1, "DataItems"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    const-string v1, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Raw query for getDataItemsForDataHolderByHostAndPath:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    array-length v4, v0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 366
    const-string v5, "DataItems"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "selection arg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 348
    :cond_0
    if-nez p2, :cond_1

    .line 349
    new-array v0, v6, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object p3, v0, v5

    .line 350
    const-string v1, "packageName =? AND signatureDigest =? AND path =? AND deleted =0"

    goto :goto_0

    .line 351
    :cond_1
    if-eqz p2, :cond_2

    .line 352
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    .line 353
    const-string v1, "packageName =? AND signatureDigest =? AND host =? AND path =? AND deleted =0"

    goto/16 :goto_0

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should never happen, since we intend to handle all the cases explicitly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_3
    invoke-virtual {p0, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    .line 285
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    .line 287
    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    .line 288
    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 289
    const-string v3, "packageName =? AND signatureDigest =?"

    .line 309
    :goto_0
    if-eqz p5, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND assetsPresent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " !=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    :cond_0
    :goto_1
    const-string v0, "DataItems"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDataItemsByHostAndPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with args "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "packageName, signatureDigest, host, path, deleted"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 290
    :cond_2
    if-nez p4, :cond_3

    if-nez p3, :cond_3

    .line 291
    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 292
    const-string v3, "deleted =0 AND packageName =? AND signatureDigest =?"

    goto :goto_0

    .line 293
    :cond_3
    if-eqz p4, :cond_4

    if-nez p2, :cond_4

    .line 294
    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object p3, v4, v5

    .line 295
    const-string v3, "packageName =? AND signatureDigest =? AND path =?"

    goto/16 :goto_0

    .line 296
    :cond_4
    if-eqz p4, :cond_5

    if-eqz v0, :cond_5

    .line 297
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    .line 298
    const-string v3, "packageName =? AND signatureDigest =? AND host =? AND path =?"

    goto/16 :goto_0

    .line 299
    :cond_5
    if-nez p2, :cond_6

    .line 300
    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object p3, v4, v5

    .line 301
    const-string v3, "packageName =? AND signatureDigest =? AND path =? AND deleted =0"

    goto/16 :goto_0

    .line 302
    :cond_6
    if-eqz p2, :cond_7

    .line 303
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    .line 304
    const-string v3, "packageName =? AND signatureDigest =? AND host =? AND path =? AND deleted =0"

    goto/16 :goto_0

    .line 306
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should never happen, since we intend to handle all the cases explicitly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1487
    const-string v0, "DataItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "createNewDataItem: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;)J

    move-result-wide v0

    .line 1494
    invoke-static {p1}, Lcom/google/android/gms/wearable/node/l;->c(Lcom/google/android/gms/wearable/node/k;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1495
    const-string v5, "appkeys_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1496
    const-string v0, "host"

    iget-object v1, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string v0, "path"

    iget-object v1, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v0, "dataitems"

    const-string v1, "host"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1499
    const-string v4, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inserted data item row "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 1503
    iget-boolean v0, p1, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v0, :cond_5

    .line 1505
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    invoke-static {p0, v4, v1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0

    .line 1510
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v4}, Lcom/google/android/gms/wearable/node/m;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p1, Lcom/google/android/gms/wearable/node/k;->d:Z

    .line 1516
    :goto_2
    iget-boolean v0, p1, Lcom/google/android/gms/wearable/node/k;->d:Z

    if-eqz v0, :cond_3

    .line 1517
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1518
    const-string v1, "assetsPresent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1519
    const-string v1, "dataitems"

    const-string v5, "_id =?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1523
    :cond_3
    return-object p1

    :cond_4
    move v0, v2

    .line 1510
    goto :goto_1

    .line 1513
    :cond_5
    iput-boolean v3, p1, Lcom/google/android/gms/wearable/node/k;->d:Z

    goto :goto_2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1355
    const-string v1, "DataItems"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    const-string v1, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateExistingDataItem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    iget-boolean v1, p3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p4, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v1, :cond_2

    .line 1363
    const-string v1, "DataItems"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateExistingDataItem: dropping delete since item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/i;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p3, v0

    .line 1439
    :goto_0
    return-object p3

    .line 1369
    :cond_2
    iget-boolean v1, p3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v1, :cond_4

    iget-boolean v1, p4, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v1, :cond_4

    iget-object v1, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    iget-object v4, p4, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-static {v1, v4}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/i;Lcom/google/android/gms/wearable/node/i;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1371
    const-string v1, "DataItems"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1372
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateExistingDataItem: dropping update since item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is the same as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object p3, v0

    .line 1375
    goto :goto_0

    .line 1385
    :cond_4
    iget-boolean v0, p3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v0, :cond_5

    .line 1386
    const-string v0, "assetrefs"

    const-string v1, "dataitems_id=?"

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v2

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1388
    invoke-static {p3}, Lcom/google/android/gms/wearable/node/l;->c(Lcom/google/android/gms/wearable/node/k;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1390
    const-string v1, "dataitems"

    const-string v4, "_id =?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    invoke-virtual {p1, v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1392
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/m;->c()V

    goto :goto_0

    .line 1398
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1400
    iget-object v0, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1401
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1406
    :cond_6
    iget-object v0, p4, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1408
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    iget-object v6, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    .line 1409
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1411
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1412
    :cond_7
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1414
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1418
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1423
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_3

    .line 1429
    :cond_a
    iget-boolean v0, p3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Lcom/google/android/gms/wearable/node/m;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v0, v3

    :goto_4
    iput-boolean v0, p3, Lcom/google/android/gms/wearable/node/k;->d:Z

    .line 1434
    invoke-static {p3}, Lcom/google/android/gms/wearable/node/l;->c(Lcom/google/android/gms/wearable/node/k;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1435
    const-string v1, "dataitems"

    const-string v4, "_id =?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    invoke-virtual {p1, v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1438
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/m;->c()V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1429
    goto :goto_4
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1277
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1278
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1279
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;Lcom/google/android/gms/wearable/node/a;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 582
    const-string v0, "DataItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addAsset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v0, p2}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 589
    new-array v1, v3, [Lcom/google/android/gms/wearable/node/a;

    aput-object p3, v1, v4

    invoke-virtual {p0, p1, v0, v3, v1}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/node/n;

    move-result-object v1

    .line 593
    iget-boolean v2, v1, Lcom/google/android/gms/wearable/node/n;->b:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/google/android/gms/wearable/node/n;->c:Z

    if-eqz v2, :cond_2

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/m;->g:Lcom/google/android/gms/wearable/node/g;

    iget-boolean v1, v1, Lcom/google/android/gms/wearable/node/n;->b:Z

    new-array v3, v3, [Lcom/google/android/gms/wearable/node/a;

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/wearable/node/g;->a(Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)V

    .line 596
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    invoke-static {p0}, Lcom/google/android/gms/wearable/node/aw;->a(Landroid/net/Uri;)I

    move-result v0

    .line 250
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    sget-object v0, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/aj;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 252
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 253
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    invoke-static {}, Lcom/google/android/gms/wearable/node/m;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/m;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 797
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "proper crypto support not installed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 837
    const-string v1, "appkeys"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 844
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 846
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 849
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 850
    const-string v4, "DataItems"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    const-string v4, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Package id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 858
    const-string v1, "DataItems"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PackageIdToName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 876
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "select "

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    const-string v0, ", sum("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    const-string v3, "length(%s)"

    move v0, v1

    .line 880
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 881
    new-array v4, v6, [Ljava/lang/Object;

    aget-object v5, p2, v0

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 883
    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    const-string v4, ") from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    const-string v4, " group by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 891
    :cond_1
    const-string v0, "DataItems"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DB query: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 895
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 899
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 901
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 904
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 906
    const-string v1, "DataItems"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 907
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Table "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", total storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_4
    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/node/i;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 519
    const-string v0, "DataItems"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processAssetsInDataItem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/c;

    .line 526
    const-string v2, "DataItems"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    const-string v2, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  processing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/wearable/node/c;->a:[B

    if-eqz v2, :cond_3

    move v2, v3

    .line 531
    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_4

    move v5, v3

    .line 532
    :goto_2
    iget-object v6, v1, Lcom/google/android/gms/wearable/node/c;->d:Landroid/net/Uri;

    if-eqz v6, :cond_5

    move v6, v3

    .line 535
    :goto_3
    if-eqz v2, :cond_a

    .line 536
    iget-object v1, v1, Lcom/google/android/gms/wearable/node/c;->a:[B

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addAssetByBytes: bytes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v4

    .line 530
    goto :goto_1

    :cond_4
    move v5, v4

    .line 531
    goto :goto_2

    :cond_5
    move v6, v4

    .line 532
    goto :goto_3

    .line 536
    :cond_6
    const-string v2, "DataItems"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addRawAsset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v2, v1}, Lcom/google/android/gms/wearable/node/d;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Lcom/google/android/gms/wearable/node/a;

    aput-object p2, v2, v4

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/node/n;

    move-result-object v2

    iget-boolean v5, v2, Lcom/google/android/gms/wearable/node/n;->b:Z

    if-nez v5, :cond_8

    iget-boolean v5, v2, Lcom/google/android/gms/wearable/node/n;->c:Z

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/wearable/node/m;->g:Lcom/google/android/gms/wearable/node/g;

    iget-boolean v2, v2, Lcom/google/android/gms/wearable/node/n;->b:Z

    new-array v6, v3, [Lcom/google/android/gms/wearable/node/a;

    aput-object p2, v6, v4

    invoke-virtual {v5, v1, v2, v6}, Lcom/google/android/gms/wearable/node/g;->a(Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)V

    .line 537
    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;

    goto/16 :goto_0

    .line 538
    :cond_a
    if-eqz v5, :cond_b

    .line 539
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 541
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;Lcom/google/android/gms/wearable/node/a;)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;

    goto/16 :goto_0

    .line 543
    :cond_b
    if-eqz v6, :cond_1

    .line 544
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/m;->f:Landroid/content/ContentResolver;

    iget-object v5, v1, Lcom/google/android/gms/wearable/node/c;->d:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 545
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;Lcom/google/android/gms/wearable/node/a;)Ljava/lang/String;

    move-result-object v5

    .line 546
    const-string v6, "DataItems"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 547
    const-string v6, "DataItems"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  closing: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_c
    invoke-static {v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    .line 550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;

    goto/16 :goto_0

    .line 553
    :cond_d
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1464
    const-string v0, "assetrefs"

    const-string v1, "dataitems_id=? AND assetname=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1467
    return-void
.end method

.method private static a(Lcom/google/android/gms/wearable/d/d;ZZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .prologue
    .line 1174
    const-string v0, "All Data Items:"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 1177
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "packageName, signatureDigest, host, path, deleted"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1186
    const/4 v9, 0x0

    .line 1187
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1188
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1189
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1190
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1191
    invoke-static {v8}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v1

    .line 1192
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1195
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-boolean v0, v1, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1200
    :goto_2
    iget-object v1, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1192
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1197
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1204
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1206
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "packageName, signatureDigest, host, path, deleted"

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1214
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 1215
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v9

    .line 1216
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1217
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1218
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v5

    .line 1220
    if-eqz v0, :cond_4

    iget-object v2, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1221
    :cond_4
    if-eqz v0, :cond_5

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 1225
    :cond_5
    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 1228
    :goto_5
    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1231
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataitems ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " deleted)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 1235
    :cond_6
    iget-object v4, v5, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    .line 1237
    if-nez p2, :cond_7

    iget-boolean v0, v5, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v0, :cond_f

    .line 1238
    :cond_7
    iget-boolean v0, v5, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v0, :cond_b

    const-string v0, " DELETED"

    move-object v3, v0

    .line 1243
    :goto_7
    const/4 v0, 0x0

    .line 1244
    iget-object v2, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    if-eqz v2, :cond_e

    iget-object v2, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1245
    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1247
    :goto_8
    invoke-static {v6, v7}, Lcom/google/android/gms/wearable/node/m;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 1249
    iget-object v0, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 1251
    if-eqz p1, :cond_8

    .line 1252
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pathhash="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/wearable/node/k;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%8s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/google/android/gms/wearable/node/k;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v7}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", data "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", assets: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    move-object v0, v4

    .line 1263
    goto/16 :goto_4

    .line 1225
    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5

    .line 1228
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1238
    :cond_b
    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_7

    .line 1265
    :cond_c
    if-eqz v0, :cond_d

    .line 1266
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 1268
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/d;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1272
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1273
    return-void

    .line 1272
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v2, v0

    goto/16 :goto_8

    :cond_f
    move-object v0, v4

    goto/16 :goto_4
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 628
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    iget-object v3, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 634
    const-string v3, "SELECT COUNT(*) FROM appKeyAcls WHERE assets_digest=? AND packageName=? AND signatureDigest=?"

    invoke-static {p0, v3, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 618
    :try_start_0
    const-string v3, "select dataPresent from assets WHERE digest=?"

    invoke-static {p0, v3, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 620
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 622
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 620
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/wearable/node/i;Lcom/google/android/gms/wearable/node/i;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1443
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1460
    :goto_0
    return v0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 1448
    goto :goto_0

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/c;

    .line 1452
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    .line 1453
    if-nez v0, :cond_3

    move v0, v2

    .line 1454
    goto :goto_0

    .line 1456
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1457
    goto :goto_0

    .line 1460
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()J
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v6, 0x2

    .line 809
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->j:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->e:Landroid/content/SharedPreferences;

    const-string v1, "nextSeqIdBlock"

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->k:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->j:J

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nextSeqIdBlock"

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/m;->k:J

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "DataItems"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrieved new seqId block, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/m;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/m;->k:J

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/m;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/wearable/node/m;->j:J

    add-long/2addr v0, v2

    .line 813
    const-string v2, "DataItems"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    const-string v2, "DataItems"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "issued seqId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    return-wide v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 791
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 962
    const-string v1, "assetsacls"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 969
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 971
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 974
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 976
    if-nez v0, :cond_0

    .line 977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 978
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 983
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 985
    const-string v0, "DataItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Package id to digests: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_2
    return-object v2
.end method

.method private b(Lcom/google/android/gms/wearable/node/k;)V
    .locals 3

    .prologue
    .line 140
    const-string v0, "DataItems"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyDataItemChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/j;

    .line 147
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/node/j;->a(Lcom/google/android/gms/wearable/node/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1472
    const-string v1, "assetsReadyStatus"

    sget-object v2, Lcom/google/android/gms/wearable/node/ab;->a:[Ljava/lang/String;

    const-string v3, "dataitems_id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1478
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/wearable/node/ab;->c:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    move v0, v8

    .line 1481
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    move v0, v9

    .line 1478
    goto :goto_0

    .line 1481
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1094
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const-string v3, "deleted =0"

    const-string v7, "packageName, signatureDigest, host, path, deleted"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 1574
    iget-wide v4, p0, Lcom/google/android/gms/wearable/node/m;->i:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/wearable/a/b;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/wearable/node/m;->i:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/wearable/node/m;->i:J

    add-long/2addr v4, v8

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 1655
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1574
    goto :goto_0

    .line 1578
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1580
    const-string v0, "DataItems"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1581
    const-string v0, "DataItems"

    const-string v2, "maybePerformGC: starting..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1599
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/d;->a()Ljava/util/Set;

    move-result-object v6

    .line 1603
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    .line 1604
    const-string v0, "DataItems"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1605
    const-string v0, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "maybePerformGC: storage has "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " known assets"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_4
    const-string v0, "SELECT COUNT(dataitems_id ), digest FROM assets LEFT OUTER JOIN assetrefs ON digest = assets_digest GROUP BY digest"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1610
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    .line 1612
    :try_start_1
    const-string v0, "DataItems"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1613
    const-string v0, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "maybePerformGC: db has "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " known assets"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v1

    .line 1615
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1616
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1617
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1619
    if-lez v0, :cond_6

    .line 1620
    invoke-interface {v6, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1632
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1647
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1648
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1624
    :cond_6
    :try_start_3
    const-string v0, "DataItems"

    const/4 v11, 0x3

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1625
    const-string v0, "DataItems"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "maybePerformGC: deleting asset row "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_7
    const-string v0, "assets"

    const-string v11, "digest=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {v3, v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1629
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1630
    goto :goto_2

    .line 1632
    :cond_8
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1635
    const-string v0, "DataItems"

    const/4 v8, 0x3

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1636
    const-string v0, "DataItems"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "maybePerformGC: there are "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " assets to remove from storage"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_9
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    const-string v8, "DataItems"

    const/4 v10, 0x3

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1641
    const-string v8, "DataItems"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "maybePerformGC: deleting asset bytes "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_a
    iget-object v8, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v8, v0}, Lcom/google/android/gms/wearable/node/d;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1644
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1645
    goto :goto_3

    .line 1647
    :cond_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1648
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/gms/wearable/node/m;->i:J

    .line 1651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1652
    const-string v0, "DataItems"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "maybePerformGC: complete, took "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v10, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " files, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " asset records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/node/a;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 173
    .line 175
    if-eqz p2, :cond_1

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    const-string v2, "DataItems"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "DataItems"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDataItemsForDataHolderByUri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 184
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v2

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x3

    .line 440
    const-string v0, "DataItems"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataItemInternal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/m;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/m;->b()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/gms/wearable/node/k;->f:J

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 456
    :try_start_1
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/node/i;)V

    .line 458
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 471
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {v2}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v1

    .line 474
    invoke-direct {p0, v0, v3, p1, v1}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v1

    .line 476
    const-string v4, "DataItems"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    if-eqz v1, :cond_1

    .line 478
    const-string v4, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "setDataItemInternal: updated "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 490
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 496
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 499
    if-nez v1, :cond_3

    .line 509
    :goto_1
    return-object p1

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_2
    :try_start_4
    invoke-static {v0, p1}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v1

    .line 484
    const-string v3, "DataItems"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    const-string v3, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setDataItemInternal: created "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 490
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 492
    :catch_0
    move-exception v1

    .line 493
    :try_start_6
    const-string v2, "DataItems"

    const-string v3, "error processing assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object p1, v6

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 503
    :cond_3
    iget-boolean v0, v1, Lcom/google/android/gms/wearable/node/k;->d:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v0, :cond_5

    .line 504
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/wearable/node/m;->b(Lcom/google/android/gms/wearable/node/k;)V

    :goto_2
    move-object p1, v1

    .line 509
    goto :goto_1

    .line 506
    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, v1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final varargs a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/node/n;
    .locals 11

    .prologue
    .line 692
    const-string v0, "DataItems"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeAssetMetadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owners "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    const/4 v0, 0x0

    .line 697
    const/4 v1, 0x0

    .line 700
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v3, v2

    .line 702
    :try_start_0
    const-string v2, "DataItems"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    const-string v2, "DataItems"

    const-string v4, "  query: select dataPresent from assets WHERE digest=?"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v2, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  digest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1
    const-wide/16 v4, 0x0

    const-string v2, "select dataPresent from assets WHERE digest=?"

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 711
    :goto_0
    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 712
    const/4 v0, 0x1

    .line 713
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 714
    const-string v4, "dataPresent"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v4, "timestampMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    const-string v4, "assets"

    const-string v5, "digest =?"

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move p3, v0

    .line 729
    :goto_1
    array-length v2, p4

    const/4 v0, 0x0

    move v8, v1

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v0, p4, v1

    .line 730
    invoke-static {p1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;)J

    move-result-wide v4

    .line 732
    const-string v0, "DataItems"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    const-string v0, "DataItems"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "writing to AssetAcls, digest "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_3
    const-string v0, "SELECT COUNT(*) FROM assetsacls WHERE assets_digest=? AND appkeys_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {p1, v0, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "appkeys_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "assets_digest"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "assetsacls"

    const-string v4, "appkeys_id"

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    .line 729
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    goto :goto_2

    .line 707
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 723
    const-string v0, "digest"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v3, "dataPresent"

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    const-string v0, "timestampMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 726
    const-string v0, "assets"

    const-string v3, "digest"

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_1

    .line 724
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 735
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 738
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 741
    const-string v1, "assetsReadyStatus"

    sget-object v2, Lcom/google/android/gms/wearable/node/ab;->a:[Ljava/lang/String;

    const-string v3, "nowReady !=markedReady"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 745
    :cond_8
    :goto_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 746
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 747
    sget v2, Lcom/google/android/gms/wearable/node/ab;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 748
    const-string v4, "assetsPresent"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 749
    sget v4, Lcom/google/android/gms/wearable/node/ab;->b:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 751
    const-string v5, "dataitems"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v7, v10

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 753
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    .line 754
    const-string v0, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "marked dataitem assets ready, dataitem "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 761
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 759
    :cond_9
    :try_start_2
    new-instance v0, Lcom/google/android/gms/wearable/node/n;

    invoke-direct {v0, p0, v9, p3, v8}, Lcom/google/android/gms/wearable/node/n;-><init>(Lcom/google/android/gms/wearable/node/m;Ljava/util/ArrayList;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1330
    new-instance v0, Lcom/google/android/gms/wearable/node/k;

    iget-object v1, p3, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/node/k;-><init>(Lcom/google/android/gms/wearable/node/a;)V

    .line 1331
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/m;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/m;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/wearable/node/k;->f:J

    .line 1333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/m;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    .line 1335
    iput-boolean v4, v0, Lcom/google/android/gms/wearable/node/k;->c:Z

    .line 1336
    iput-boolean v4, v0, Lcom/google/android/gms/wearable/node/k;->d:Z

    .line 1337
    new-instance v1, Lcom/google/android/gms/wearable/node/i;

    iget-object v2, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/node/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    .line 1340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1343
    :try_start_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v0

    .line 1344
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1346
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1348
    if-eqz v0, :cond_0

    .line 1349
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/m;->b(Lcom/google/android/gms/wearable/node/k;)V

    .line 1351
    :cond_0
    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1346
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 1115
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1116
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 1117
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    const-string v1, "Asset Buffered Data Items:"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const-string v3, "assetsPresent=0 AND deleted =0"

    const-string v7, "packageName, signatureDigest, host, path, deleted"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x9

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v3}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v5

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    if-eqz v1, :cond_4

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    invoke-static {v6, v7}, Lcom/google/android/gms/wearable/node/m;->a(J)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pathhash="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/wearable/node/k;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%8s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/google/android/gms/wearable/node/k;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v7}, Lcom/google/android/gms/wearable/node/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", data "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", assets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    iget-object v1, v5, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/c;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/node/m;->c(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 1118
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 1119
    const-string v1, "======"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 1121
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/d/d;ZZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 1122
    return-void

    :cond_4
    move-object v2, v4

    goto/16 :goto_1
.end method

.method public final a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    const-string v0, "DataItems"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestMissingAssets: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    const-string v3, "DataItems"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    const-string v3, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestMissingAssets: found digest of missing asset, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 208
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    const-string v3, "DataItems"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    const-string v3, "DataItems"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestMissingAssets: calling onAssetMissing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    invoke-static {v6, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    invoke-static {v6, p1, v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 223
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/m;->g:Lcom/google/android/gms/wearable/node/g;

    const-string v4, "assets"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "assets"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "onAssetPermissionMissing: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Lcom/google/android/gms/wearable/node/g;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Z)V

    goto :goto_1

    .line 228
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/m;->g:Lcom/google/android/gms/wearable/node/g;

    const-string v4, "assets"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "assets"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "onAssetMissing: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Lcom/google/android/gms/wearable/node/g;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 232
    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/node/j;)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 766
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 767
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 768
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const-string v3, "dataitems_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 776
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_0
    return-void

    .line 779
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/wearable/node/m;->b(Lcom/google/android/gms/wearable/node/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 6

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1284
    invoke-static {v0}, Lcom/google/android/gms/wearable/node/m;->c(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    .line 1286
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1287
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1288
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1289
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v3

    .line 1290
    iget-object v4, v3, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v4, v4, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1291
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/m;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v4}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1299
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1300
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 418
    const-string v0, "DataItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "DataItems"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteDataItems: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 422
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v1

    .line 425
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v3

    .line 429
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    add-int/lit8 v4, v4, 0x1

    .line 431
    goto :goto_0

    .line 434
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Set;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 649
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 650
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "appKeyAcls"

    const-string v3, "assets_digest=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 655
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget v0, Lcom/google/android/gms/wearable/node/aa;->c:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/wearable/node/aa;->d:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 662
    return-object v8
.end method

.method public final c(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 996
    const-string v1, "DataItems"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    if-eqz v0, :cond_1

    .line 998
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Asset file name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_1
    return-wide v0

    .line 1000
    :cond_1
    const-string v1, "DataItems"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No asset file for digest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1003
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1304
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1305
    const-string v1, "dataItemsAndAssets"

    sget-object v2, Lcom/google/android/gms/wearable/node/ac;->a:[Ljava/lang/String;

    const-string v3, "packageName =? AND deleted =0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1313
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1314
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1315
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1316
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v3

    .line 1317
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/m;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v4}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1318
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1323
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1324
    return-void
.end method
