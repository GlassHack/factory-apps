.class public Lcom/google/android/gsf/gservices/GservicesProvider;
.super Landroid/content/ContentProvider;
.source "GservicesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;,
        Lcom/google/android/gsf/gservices/GservicesProvider$OverrideReceiver;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final HEX:[C

.field public static final UPDATE_MAIN_DIFF_URI:Landroid/net/Uri;

.field public static final UPDATE_MAIN_URI:Landroid/net/Uri;

.field public static final UPDATE_OVERRIDE_URI:Landroid/net/Uri;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

.field private mPushToSecure:Z

.field private mPushToSystem:Z

.field private mValues:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "content://com.google.android.gsf.gservices/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.google.android.gsf.gservices/main_diff"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_DIFF_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://com.google.android.gsf.gservices/override"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_OVERRIDE_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    return-void

    .line 67
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    .line 80
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    .line 101
    return-void
.end method

.method private computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V
    .locals 19
    .param p1, "dbHelper"    # Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 395
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 397
    .local v11, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v17, "SHA-1"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 401
    const/4 v5, 0x0

    .line 403
    .local v5, "currentDigest":Ljava/lang/String;
    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    .line 405
    .local v16, "values":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 407
    :try_start_1
    const-string v17, "SELECT name, value FROM main ORDER BY name"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 409
    .local v4, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 410
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "key":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 412
    .local v15, "value":Ljava/lang/String;
    const-string v17, "digest"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-eqz v17, :cond_0

    .line 415
    move-object v5, v15

    .line 416
    goto :goto_0

    .line 398
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "currentDigest":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "values":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 418
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "currentDigest":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "values":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    sget-object v17, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 419
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 420
    sget-object v17, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 421
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 423
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 426
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    .end local v4    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v17

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v17

    .line 426
    .restart local v4    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 429
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v17, "1-"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .local v2, "arr$":[B
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_2

    aget-byte v3, v2, v8

    .line 432
    .local v3, "b":B
    sget-object v17, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    shr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    sget-object v17, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    and-int/lit8 v18, v3, 0xf

    aget-char v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 435
    .end local v3    # "b":B
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, "newDigest":Ljava/lang/String;
    const-string v17, "digest"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 440
    const-string v17, "INSERT OR REPLACE INTO main (name, value) VALUES (?, ?)"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v14

    .line 443
    .local v14, "update":Landroid/database/sqlite/SQLiteStatement;
    const/16 v17, 0x1

    :try_start_6
    const-string v18, "digest"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 444
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v14, v0, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 445
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 447
    :try_start_7
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 451
    .end local v14    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 452
    const-string v17, "SELECT name, value FROM overrides"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v4

    .line 454
    :goto_2
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 455
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 456
    .restart local v9    # "key":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 457
    .restart local v15    # "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 460
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v17

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v17

    .line 447
    .restart local v14    # "update":Landroid/database/sqlite/SQLiteStatement;
    :catchall_3
    move-exception v17

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v17

    .line 460
    .end local v14    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 465
    :try_start_a
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    .line 466
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 468
    :try_start_b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 470
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 472
    return-void

    .line 466
    :catchall_4
    move-exception v17

    :try_start_c
    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method static getPrefixLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 206
    .local v2, "len":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    .local v0, "c":C
    const v3, 0xffff

    if-ge v0, v3, :cond_0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .end local v0    # "c":C
    :goto_1
    return-object v3

    .line 206
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 212
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 216
    iget-object v9, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 217
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 218
    .local v6, "prefix":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/gsf/gservices/GservicesProvider;->getPrefixLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "limit":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 221
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v7

    .line 225
    .local v7, "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v10, v11

    const/4 v11, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v10, v11

    invoke-virtual {p1, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "len$":I
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 223
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "limit":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v7

    .restart local v7    # "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 217
    .end local v3    # "i$":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 229
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method private querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 192
    iget-object v5, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 193
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 194
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 197
    return-void

    .line 196
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private syncAllSettings()V
    .locals 3

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "system:"

    const-string v2, "saved_system"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    if-eqz v0, :cond_1

    .line 485
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "secure:"

    const-string v2, "saved_secure"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 487
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "global:"

    const-string v2, "saved_global"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1
    return-void
.end method

.method private syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localTable"    # Ljava/lang/String;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 502
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 504
    .local v2, "r":Landroid/content/ContentResolver;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v20, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 507
    .local v17, "mc":Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    .line 509
    :goto_0
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v3

    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V

    throw v3

    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->close()V

    .line 518
    const/4 v12, 0x0

    .line 519
    .local v12, "delete":Landroid/database/sqlite/SQLiteStatement;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v10, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 522
    .local v8, "args":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT name, value FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 524
    .local v9, "c":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 526
    .local v16, "key":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 527
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v5, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 532
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 553
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 554
    if-eqz v12, :cond_1

    .line 555
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v3

    .line 536
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_2
    if-nez v12, :cond_3

    .line 537
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " WHERE name = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 540
    :cond_3
    if-nez v19, :cond_4

    .line 541
    const/4 v3, 0x0

    aput-object v16, v8, v3

    .line 542
    const-string v3, "name=?"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 549
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    .line 544
    :cond_4
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v3, "value"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 553
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 554
    if-eqz v12, :cond_6

    .line 555
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 563
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR REPLACE INTO "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (name, value) VALUES (?, ?)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 566
    .local v15, "insert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v4, v3

    .line 568
    .local v4, "projection":[Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 569
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 570
    .restart local v16    # "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 571
    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v9

    .line 573
    const/16 v18, 0x0

    .line 575
    .local v18, "origValue":Ljava/lang/String;
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 576
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v18

    .line 579
    :cond_7
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 582
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 583
    if-nez v18, :cond_8

    .line 584
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 588
    :goto_4
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 589
    const-string v3, "name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v3, "value"

    move-object/from16 v0, v19

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 594
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "origValue":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3

    .line 579
    .restart local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "origValue":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 586
    :cond_8
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 594
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "origValue":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 597
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "insert":Landroid/database/sqlite/SQLiteStatement;
    :cond_a
    return-void
.end method

.method private updateMain(Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "settings"    # Landroid/content/ContentValues;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 355
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 357
    :try_start_0
    const-string v7, "DELETE FROM main"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_2

    .line 359
    const-string v7, "INSERT INTO main (name, value) VALUES (?, ?)"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 363
    .local v5, "update":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 364
    .local v4, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 367
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 368
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 369
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 378
    .end local v5    # "update":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 373
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 376
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 380
    iget-object v7, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 381
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 382
    sget-object v7, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 383
    const-string v7, "GservicesProvider"

    const-string v8, "main update completed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private updateMainDiff(Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "settings"    # Landroid/content/ContentValues;

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 316
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "INSERT OR REPLACE INTO main (name, value) VALUES (?, ?)"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 319
    .local v6, "update":Landroid/database/sqlite/SQLiteStatement;
    const-string v8, "DELETE FROM main WHERE name = ?"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 324
    .local v2, "delete":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 325
    .local v5, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 327
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 328
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 338
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v8

    .line 331
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "value":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 332
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 333
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 338
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 340
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 341
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 343
    sget-object v8, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 344
    const-string v8, "GservicesProvider"

    const-string v9, "main difference update completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private updateOverride(Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "settings"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x1

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 274
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    .line 275
    const-string v8, "DELETE FROM overrides"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    .line 305
    :goto_0
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 307
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 309
    sget-object v8, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 310
    const-string v8, "GservicesProvider"

    const-string v9, "override update completed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 278
    :cond_0
    const-string v8, "INSERT OR REPLACE INTO overrides (name, value) VALUES (?, ?)"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 281
    .local v6, "update":Landroid/database/sqlite/SQLiteStatement;
    const-string v8, "DELETE FROM overrides WHERE name = ?"

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 286
    .local v2, "delete":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 287
    .local v5, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 288
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 289
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 290
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 299
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 300
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v8

    .line 293
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v6, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 294
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 295
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 299
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 300
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 302
    iget-object v8, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    iput-boolean v9, v8, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 161
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 162
    .local v1, "pid":I
    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    .line 165
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    move v5, v4

    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 168
    const-string v3, "GservicesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gservices pushing to system: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; secure/global: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v3, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {v3, v0}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    .line 172
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    .line 173
    iget-object v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 174
    return v4

    :cond_1
    move v3, v5

    .line 162
    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-nez p4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 184
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    sget-object v2, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "table":Ljava/lang/String;
    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateMain(Landroid/content/ContentValues;)V

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    const/4 v1, 0x0

    return v1

    .line 252
    :cond_0
    const-string v1, "main_diff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateMainDiff(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 254
    :cond_1
    const-string v1, "override"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateOverride(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 257
    :cond_2
    const-string v1, "GservicesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad Gservices update URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
