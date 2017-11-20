.class final Lcom/google/android/gms/blescanner/compat/d;
.super Lcom/google/android/gms/blescanner/compat/a;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/blescanner/b/b;

.field final b:Ljava/util/HashMap;

.field final c:Ljava/util/HashMap;

.field final d:Ljava/util/HashMap;

.field private final e:Landroid/app/AlarmManager;

.field private final f:Landroid/app/PendingIntent;

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/bluetooth/BluetoothAdapter;

.field private final m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothManager;Landroid/app/AlarmManager;Lcom/google/android/gms/blescanner/b/b;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/a;-><init>()V

    .line 113
    const/16 v0, 0x34bc

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->h:I

    .line 114
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->i:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->j:I

    .line 128
    new-instance v0, Lcom/google/android/gms/blescanner/compat/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/blescanner/compat/e;-><init>(Lcom/google/android/gms/blescanner/compat/d;)V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->l:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->b:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    .line 169
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/d;->e:Landroid/app/AlarmManager;

    .line 170
    iput-object p4, p0, Lcom/google/android/gms/blescanner/compat/d;->f:Landroid/app/PendingIntent;

    .line 171
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/d;->a:Lcom/google/android/gms/blescanner/b/b;

    .line 172
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;Landroid/app/AlarmManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/google/android/gms/blescanner/b/d;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/b/d;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/blescanner/compat/ScanWakefulBroadcastReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/google/android/gms/blescanner/compat/d;-><init>(Landroid/bluetooth/BluetoothManager;Landroid/app/AlarmManager;Lcom/google/android/gms/blescanner/b/b;Landroid/app/PendingIntent;)V

    .line 156
    return-void
.end method

.method private static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 497
    packed-switch p0, :pswitch_data_0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown scan mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    .line 506
    :goto_0
    :pswitch_0
    return v0

    .line 499
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 501
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "LE Scan callback already registered"

    new-array v1, v2, [Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    move v0, v2

    .line 314
    :goto_0
    return v0

    .line 287
    :cond_0
    new-instance v4, Lcom/google/android/gms/blescanner/compat/g;

    invoke-direct {v4, p1, p2, p3}, Lcom/google/android/gms/blescanner/compat/g;-><init>(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, v4, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b()I

    move-result v0

    .line 291
    and-int/lit8 v1, v0, 0x2

    .line 292
    and-int/lit8 v0, v0, 0x1

    .line 296
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 300
    invoke-static {p2, v0}, Lcom/google/android/gms/blescanner/compat/d;->a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :try_start_0
    iget-object v0, v4, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_2
    iget-object v0, v4, Lcom/google/android/gms/blescanner/compat/g;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v6, "Failure while handling scan result for new listener"

    new-array v7, v3, [Ljava/lang/Exception;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_2

    .line 313
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->c()V

    move v0, v3

    .line 314
    goto :goto_0
.end method

.method static a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanResult;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 558
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 566
    :goto_0
    return v0

    .line 561
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanFilter;

    .line 562
    invoke-virtual {v0, p1}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a(Lcom/google/android/gms/blescanner/compat/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 563
    goto :goto_0

    .line 566
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->a:Lcom/google/android/gms/blescanner/b/b;

    invoke-interface {v0}, Lcom/google/android/gms/blescanner/b/b;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->e()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->f()I

    move-result v6

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    .line 354
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 358
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanResult;->d()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/g;

    iget-object v6, v0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    invoke-virtual {v6}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    invoke-virtual {v7}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    iget-object v8, v0, Lcom/google/android/gms/blescanner/compat/g;->b:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    or-int/2addr v6, v7

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "Failure while sending \'lost\' scan result to listener"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Exception;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_1

    .line 360
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0, v9}, Lcom/google/android/gms/blescanner/compat/d;->a(Z)V

    .line 366
    return-void
.end method

.method private b(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "Batch LE Scan callback already registered"

    new-array v2, v1, [Ljava/lang/Exception;

    invoke-static {v0, v2}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    move v0, v1

    .line 431
    :goto_0
    return v0

    .line 407
    :cond_0
    new-instance v0, Lcom/google/android/gms/blescanner/compat/f;

    new-instance v3, Lcom/google/android/gms/blescanner/compat/g;

    invoke-direct {v3, p1, p2, p3}, Lcom/google/android/gms/blescanner/compat/g;-><init>(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)V

    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->d()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gms/blescanner/compat/f;-><init>(Lcom/google/android/gms/blescanner/compat/g;J)V

    .line 410
    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 415
    invoke-static {p2, v0}, Lcom/google/android/gms/blescanner/compat/d;->a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanResult;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 424
    :try_start_0
    invoke-virtual {p3, v3}, Lcom/google/android/gms/blescanner/compat/k;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->c()V

    move v0, v2

    .line 431
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string v3, "Failure while sending first scan results for new batch listener"

    new-array v4, v2, [Ljava/lang/Exception;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private c()V
    .locals 7

    .prologue
    const/16 v6, 0x5dc

    const/4 v2, -0x1

    .line 536
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/g;

    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/blescanner/compat/d;->a(I)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/d;->a(I)I

    move-result v5

    if-le v4, v5, :cond_7

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/f;

    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/f;->a:Lcom/google/android/gms/blescanner/compat/g;

    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/blescanner/compat/d;->a(I)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/d;->a(I)I

    move-result v5

    if-le v4, v5, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a()I

    move-result v1

    goto :goto_2

    :cond_4
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x34bc

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->h:I

    iput v6, p0, Lcom/google/android/gms/blescanner/compat/d;->i:I

    .line 538
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 540
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->e:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 541
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/blescanner/compat/d;->g:J

    .line 542
    const-string v0, "Scan : No clients left, canceling alarm."

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    .line 555
    :cond_5
    :goto_4
    return-void

    .line 536
    :pswitch_1
    const/16 v0, 0xa7

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->h:I

    iput v6, p0, Lcom/google/android/gms/blescanner/compat/d;->i:I

    goto :goto_3

    :pswitch_2
    const v0, 0x24414

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/d;->h:I

    iput v6, p0, Lcom/google/android/gms/blescanner/compat/d;->i:I

    goto :goto_3

    .line 544
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->f()I

    move-result v0

    .line 545
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 546
    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/blescanner/compat/d;->g:J

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 547
    int-to-long v0, v1

    iput-wide v0, p0, Lcom/google/android/gms/blescanner/compat/d;->g:J

    .line 549
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->e:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/d;->a:Lcom/google/android/gms/blescanner/b/b;

    invoke-interface {v2}, Lcom/google/android/gms/blescanner/b/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/blescanner/compat/d;->g:J

    iget-object v6, p0, Lcom/google/android/gms/blescanner/compat/d;->f:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan alarm setup complete @ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()J
    .locals 4

    .prologue
    .line 574
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->a:Lcom/google/android/gms/blescanner/b/b;

    invoke-interface {v1}, Lcom/google/android/gms/blescanner/b/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->j:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->i:I

    goto :goto_0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->k:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/d;->h:I

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v0, "Starting BLE Active Scan Cycle."

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->e()I

    move-result v0

    .line 189
    if-lez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->l:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/d;->m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    int-to-long v0, v0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->l:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->b()V

    .line 204
    :cond_0
    :goto_0
    const-string v0, "Stopping BLE Active Scan Cycle."

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_3
    const-string v1, "Exception in ScanCycle Sleep"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Exception;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->l:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 198
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/d;->l:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/d;->m:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final declared-synchronized a(II)V
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/blescanner/compat/d;->j:I

    .line 326
    iput p2, p0, Lcom/google/android/gms/blescanner/compat/d;->k:I

    .line 328
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/blescanner/compat/k;)V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/blescanner/compat/ScanResult;)V
    .locals 7

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/g;

    .line 243
    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/g;->a:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/google/android/gms/blescanner/compat/d;->a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/g;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 245
    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 246
    and-int/lit8 v4, v1, 0x2

    .line 247
    and-int/lit8 v1, v1, 0x1

    .line 250
    or-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 252
    if-nez v3, :cond_2

    .line 253
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_1
    :goto_1
    if-nez v3, :cond_0

    .line 262
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_2
    if-eqz v1, :cond_1

    .line 255
    :try_start_3
    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 257
    :catch_0
    move-exception v1

    .line 258
    :try_start_4
    const-string v4, "Failure while handling scan result"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Exception;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    monitor-exit p0

    return-void
.end method

.method final a(Z)V
    .locals 8

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/d;->d()J

    move-result-wide v2

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/f;

    .line 469
    if-nez p1, :cond_1

    iget-wide v6, v0, Lcom/google/android/gms/blescanner/compat/f;->c:J

    cmp-long v1, v6, v2

    if-gtz v1, :cond_0

    .line 470
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/gms/blescanner/compat/f;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v0, Lcom/google/android/gms/blescanner/compat/f;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/blescanner/compat/f;->a:Lcom/google/android/gms/blescanner/compat/g;

    iget-object v5, v5, Lcom/google/android/gms/blescanner/compat/g;->c:Lcom/google/android/gms/blescanner/compat/k;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/blescanner/compat/k;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v6, v0, Lcom/google/android/gms/blescanner/compat/f;->c:J

    cmp-long v1, v6, v2

    if-gtz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/blescanner/compat/f;->a:Lcom/google/android/gms/blescanner/compat/g;

    iget-object v1, v1, Lcom/google/android/gms/blescanner/compat/g;->d:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/google/android/gms/blescanner/compat/f;->c:J

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Failure during forced deliver of batch results"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Exception;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_1

    .line 473
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanSettings;Lcom/google/android/gms/blescanner/compat/k;)Z
    .locals 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 274
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/blescanner/compat/d;->b(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 276
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/blescanner/compat/d;->a(Lcom/google/android/gms/blescanner/compat/ScanSettings;Ljava/util/List;Lcom/google/android/gms/blescanner/compat/k;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
