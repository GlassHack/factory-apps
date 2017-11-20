.class public final Lcom/google/android/gms/config/ConfigService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final h:Ljava/nio/charset/Charset;

.field private static final k:[C


# instance fields
.field private a:Lcom/google/android/gms/config/i;

.field private b:Lcom/google/android/gms/config/k;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/TreeMap;

.field private g:Ljava/security/MessageDigest;

.field private i:Z

.field private j:Lcom/google/android/gms/config/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    .line 656
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/config/ConfigService;->k:[C

    return-void

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    .line 46
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    .line 53
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigService;->i:Z

    .line 388
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 642
    if-nez p0, :cond_0

    const-string v0, "null"

    .line 653
    :goto_0
    return-object v0

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 649
    sget-object v1, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/config/ConfigService;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/config/ConfigService;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 498
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 499
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    iget-object v2, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    iget-object v4, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 505
    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigService;->i:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :catch_0
    move-exception v0

    :goto_1
    return-void

    .line 304
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14

    .prologue
    .line 515
    const-string v1, "ConfigService"

    const-string v2, "handleOverride"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v1, "__package__"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-direct {p0, v5}, Lcom/google/android/gms/config/ConfigService;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v1}, Lcom/google/android/gms/config/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 522
    const-string v1, "DELETE FROM overrides WHERE package = ? AND key = ?"

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 524
    const-string v1, "INSERT OR REPLACE INTO overrides (package, key, value) VALUES (?, ?, ?)"

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 527
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 529
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 530
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    if-eqz v1, :cond_1

    .line 532
    const-string v2, "__package__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 534
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 535
    if-nez v2, :cond_2

    .line 537
    const/4 v2, 0x1

    invoke-virtual {v8, v2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 538
    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 539
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 540
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 569
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 570
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 571
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 541
    :cond_2
    :try_start_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 543
    const/4 v3, 0x1

    invoke-virtual {v8, v3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 544
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 545
    const/4 v3, 0x3

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    sget-object v2, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 546
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    .line 547
    :cond_3
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 548
    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v2, v3

    .line 549
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 550
    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    .line 551
    const/4 v3, 0x1

    invoke-virtual {v8, v3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 552
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 553
    const/4 v1, 0x3

    invoke-virtual {v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 554
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    .line 549
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0x30

    if-lt v3, v12, :cond_6

    const/16 v12, 0x39

    if-gt v3, v12, :cond_6

    add-int/lit8 v3, v3, -0x30

    :goto_4
    rem-int/lit8 v12, v4, 0x2

    if-nez v12, :cond_9

    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v4, 0x2

    aget-byte v13, v2, v13

    and-int/lit8 v13, v13, 0xf

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v13

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    :goto_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_6
    const/16 v12, 0x41

    if-lt v3, v12, :cond_7

    const/16 v12, 0x46

    if-gt v3, v12, :cond_7

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    goto :goto_4

    :cond_7
    const/16 v12, 0x61

    if-lt v3, v12, :cond_8

    const/16 v12, 0x66

    if-gt v3, v12, :cond_8

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v4, 0x2

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xf0

    or-int/2addr v3, v13

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    goto :goto_5

    .line 556
    :cond_a
    const-string v1, "ConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to parse \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" as hex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :cond_b
    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 560
    const/4 v2, 0x1

    invoke-virtual {v7, v2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 561
    const/4 v2, 0x2

    invoke-virtual {v7, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 562
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_1

    .line 566
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/config/j;->a:Z

    .line 567
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 570
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 571
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 574
    invoke-direct {p0, v5}, Lcom/google/android/gms/config/ConfigService;->b(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0, v5}, Lcom/google/android/gms/config/ConfigService;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/config/ConfigService;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Lcom/google/android/gms/config/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "SELECT package, key, value FROM main ORDER BY package, key"

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v0, v2

    move-object v1, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-eqz v3, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_2
    invoke-virtual {v0, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    iget-boolean v0, v0, Lcom/google/android/gms/config/j;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "SELECT package, key, value FROM overrides"

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :cond_5
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {v0, v7}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    :try_start_3
    invoke-virtual {v0, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iput-object v5, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    iput-object v6, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_a
    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/config/ConfigService;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 7

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Lcom/google/android/gms/config/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "DELETE FROM main WHERE package = ?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const-string v0, "INSERT INTO main (package, key, value) VALUES (?, ?, ?)"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v3, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v6, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/ConfigService;->b(Ljava/lang/String;Ljava/util/TreeMap;)V

    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/config/ConfigService;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/TreeMap;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    sget-object v1, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update(B)V

    .line 134
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    iget-object v3, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update(B)V

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    sget-object v1, Lcom/google/android/gms/config/ConfigService;->h:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/config/ConfigService;)Lcom/google/android/gms/config/j;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 663
    sget-object v4, Lcom/google/android/gms/config/ConfigService;->k:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    sget-object v4, Lcom/google/android/gms/config/ConfigService;->k:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/TreeMap;
    .locals 2

    .prologue
    .line 491
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 493
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    const-string v0, "ConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadValuesOnePackage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Lcom/google/android/gms/config/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 223
    const/4 v0, 0x0

    .line 224
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 226
    const-string v4, "SELECT key, value FROM main WHERE package = ? ORDER BY key"

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 229
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 232
    const-string v5, "ConfigService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " main key = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/google/android/gms/config/ConfigService;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 241
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/config/ConfigService;->a(Ljava/lang/String;Ljava/util/TreeMap;)[B

    move-result-object v0

    .line 245
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/config/ConfigService;->b(Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    if-eqz v0, :cond_3

    .line 249
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    iget-boolean v0, v0, Lcom/google/android/gms/config/j;->a:Z

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Lcom/google/android/gms/config/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 262
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 263
    const-string v2, "SELECT key, value FROM overrides WHERE package = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 266
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    const/4 v0, 0x0

    .line 269
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 271
    :cond_2
    const-string v3, "ConfigService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " override key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz v2, :cond_1

    .line 278
    if-nez v0, :cond_3

    .line 279
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 281
    :cond_3
    :try_start_1
    invoke-virtual {p2, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 285
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.config.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/google/android/gms/config/ConfigService;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/config/ConfigService;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigService;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/config/ConfigService;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigService;->b()Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 581
    if-nez p1, :cond_0

    .line 582
    const-string v1, "ConfigService"

    const-string v2, "specify package to override in __package__ extra"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return v0

    .line 586
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->c:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 594
    if-nez v2, :cond_1

    .line 595
    const-string v1, "ConfigService"

    const-string v2, "failed to get target package info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    const-string v1, "ConfigService"

    const-string v2, "target package not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->c:Landroid/content/pm/PackageManager;

    const-string v3, "com.google.android.gms.config.override"

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 607
    if-nez v1, :cond_2

    .line 608
    const-string v1, "ConfigService"

    const-string v2, "failed to get signal package info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :catch_1
    move-exception v1

    const-string v1, "ConfigService"

    const-string v2, "signal package not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :cond_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 612
    const-string v1, "ConfigService"

    const-string v2, "signal package may not have a shared user id"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 617
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 618
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 621
    :cond_4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_6

    aget-object v5, v2, v1

    .line 622
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 623
    const-string v1, "ConfigService"

    const-string v2, "signatures aren\'t compatible; override disallowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 628
    :cond_6
    const-string v0, "ConfigService"

    const-string v1, "signatures are compatible; override allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/gms/config/ConfigService;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/config/ConfigService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/config/ConfigService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 694
    const-string v0, "=== dumping config for all packages\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/google/android/gms/config/ConfigService;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "  -- package "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (digest "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/config/ConfigService;->f:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/google/android/gms/config/ConfigService;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 700
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigService;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "ConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBind for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "com.google.android.gms.config.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigService;->a()V

    .line 315
    const-string v0, "ConfigService"

    const-string v1, "onBind returning config service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->a:Lcom/google/android/gms/config/i;

    invoke-virtual {v0}, Lcom/google/android/gms/config/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 317
    :cond_0
    const-string v1, "com.google.android.gms.config.UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigService;->a()V

    .line 319
    const-string v0, "ConfigService"

    const-string v1, "onBind returning update interface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->b:Lcom/google/android/gms/config/k;

    invoke-virtual {v0}, Lcom/google/android/gms/config/k;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    const-string v0, "ConfigService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/google/android/gms/config/i;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/config/i;-><init>(Lcom/google/android/gms/config/ConfigService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->a:Lcom/google/android/gms/config/i;

    .line 106
    new-instance v0, Lcom/google/android/gms/config/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/config/k;-><init>(Lcom/google/android/gms/config/ConfigService;)V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->b:Lcom/google/android/gms/config/k;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->c:Landroid/content/pm/PackageManager;

    .line 110
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->g:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    new-instance v0, Lcom/google/android/gms/config/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/config/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigService;->i:Z

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/config/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/config/h;-><init>(Lcom/google/android/gms/config/ConfigService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigService;->a()V

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigService;->j:Lcom/google/android/gms/config/j;

    invoke-virtual {v0}, Lcom/google/android/gms/config/j;->close()V

    .line 294
    const-string v0, "ConfigService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 326
    const-string v0, "ConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "com.google.android.gms.config.OVERRIDE"

    if-ne v0, v1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigService;->a()V

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/ConfigService;->a(Landroid/content/Intent;)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigService;->stopSelf()V

    .line 335
    const/4 v0, 0x2

    return v0
.end method
