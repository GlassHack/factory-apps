.class public Lcom/google/android/gms/common/download/DownloadService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;

.field static b:Landroid/os/PowerManager$WakeLock;

.field static c:Z

.field private static d:J

.field private static e:J

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/util/regex/Pattern;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/google/android/gms/common/download/DownloadService;->d:J

    .line 98
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/android/gms/common/download/DownloadService;->e:J

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/download/DownloadService;->a:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/download/DownloadService;->g:Ljava/lang/Object;

    .line 104
    const-string v0, "[a-zA-Z0-9_\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/download/DownloadService;->h:Ljava/util/regex/Pattern;

    .line 109
    sput-boolean v2, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    .line 112
    sput-boolean v2, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "GmsDownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static declared-synchronized a(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 681
    const-class v2, Lcom/google/android/gms/common/download/DownloadService;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "testing123"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :goto_0
    monitor-exit v2

    return-object v0

    .line 685
    :cond_0
    :try_start_1
    const-string v0, "SHA1"

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 686
    if-nez v3, :cond_1

    .line 687
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x0

    .line 691
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 692
    const/16 v1, 0x2000

    :try_start_3
    new-array v1, v1, [B

    .line 694
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 695
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 700
    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 702
    if-eqz v0, :cond_2

    .line 704
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_3
    move-object v0, v1

    .line 707
    goto :goto_0

    .line 697
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    .line 702
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_4
    move-object v0, v1

    .line 707
    goto :goto_0

    .line 705
    :catch_1
    move-exception v3

    .line 706
    :try_start_8
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 705
    :catch_2
    move-exception v3

    .line 706
    :try_start_9
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 702
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_5
    if-eqz v0, :cond_5

    .line 704
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 707
    :cond_5
    :goto_6
    :try_start_b
    throw v1

    .line 705
    :catch_3
    move-exception v3

    .line 706
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 702
    :catchall_2
    move-exception v1

    goto :goto_5

    .line 700
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 583
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
    const-string v2, "ds__downloads_json__"

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->a(J)V

    .line 363
    return-void
.end method

.method private a(J)V
    .locals 9

    .prologue
    .line 366
    sget-wide v0, Lcom/google/android/gms/common/download/DownloadService;->e:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 367
    sget-wide p1, Lcom/google/android/gms/common/download/DownloadService;->e:J

    .line 370
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 372
    add-long v4, v2, p1

    .line 373
    const-string v0, "ds__next_alarm__"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 375
    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    .line 376
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadAlarmReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 378
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 379
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 381
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds__next_alarm__"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 383
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/download/a;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    const-string v0, "DownloadDetails required"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v3, Lcom/google/android/gms/common/download/DownloadService;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v2

    .line 510
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 511
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "filename"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 514
    iget-object v6, p1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    new-instance v5, Lcom/google/android/gms/common/download/a;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, p1}, Lcom/google/android/gms/common/download/a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 517
    iget-object v0, p1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/download/i;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 544
    :goto_1
    return v0

    .line 510
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 526
    invoke-virtual {p1}, Lcom/google/android/gms/common/download/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 530
    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "ds__downloads_json__"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 534
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GmsDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Enabled "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    :cond_2
    monitor-exit v3

    .line 542
    iget-object v0, p1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/download/i;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadAlarmReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 544
    goto :goto_1

    .line 528
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/download/a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 535
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 536
    :try_start_4
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 537
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    goto :goto_1

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    new-instance v2, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/download/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    invoke-static {v2}, Lcom/google/android/gms/common/download/DownloadService;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "__sha1__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    const/4 v0, 0x1

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 446
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 636
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "DownloadService"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DownloadService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 461
    invoke-static {p0, p1}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/download/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :cond_2
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 394
    const/4 v1, 0x1

    const-string v2, "GmsDownloadService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 395
    sput-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 398
    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ds__storage_low__"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 660
    if-eqz v0, :cond_0

    move v0, v1

    .line 673
    :goto_0
    return v0

    .line 664
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Lcom/google/android/gms/common/download/DownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 667
    sub-long/2addr v2, p1

    long-to-float v2, v2

    .line 668
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 670
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    long-to-float v0, v4

    .line 671
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 673
    div-float/2addr v2, v0

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "downloadservice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/Set;
    .locals 4

    .prologue
    .line 591
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 592
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 593
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 594
    if-eqz v2, :cond_1

    .line 596
    :try_start_0
    const-string v0, "title"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 597
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 599
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_1
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-static {p0, p1}, Lcom/google/android/gms/common/download/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 478
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 479
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    const/4 v0, 0x1

    .line 490
    :cond_0
    :goto_1
    return v0

    .line 478
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private d()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 609
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 611
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    move v0, v2

    .line 612
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 613
    new-instance v4, Lcom/google/android/gms/common/download/a;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V

    .line 614
    iget-object v5, v4, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 619
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 620
    new-instance v4, Lcom/google/android/gms/common/download/a;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V

    .line 621
    iget-object v5, v4, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 624
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GmsDownloadService"

    const-string v3, "Bad JSON"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 632
    :goto_2
    return-object v0

    .line 628
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 630
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 632
    goto :goto_2
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 559
    sget-object v2, Lcom/google/android/gms/common/download/DownloadService;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 560
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "__enabled__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "__sha1__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "__dest__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "__failed__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 563
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 564
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 565
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 566
    const-string v5, "filename"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 567
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "ds__downloads_json__"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    return-void

    .line 575
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 576
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    const v12, 0x5d4044

    const/16 v0, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsDownloadService"

    const-string v1, "Not supported on Gingerbread or lower."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 127
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GmsDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandleIntent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 130
    const-string v0, "boot"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ds__last_process__"

    invoke-interface {v5, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    const-string v0, "ds__last_reset__"

    invoke-interface {v5, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v8, v6, v0

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2a

    .line 134
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds__next_alarm__"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds__last_reset__"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    move v2, v4

    .line 140
    :goto_1
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 142
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsDownloadService"

    const-string v1, "Not Enabled. Ending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    sget-wide v0, Lcom/google/android/gms/common/download/DownloadService;->d:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/download/DownloadService;->a(J)V

    .line 148
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GmsDownloadService"

    const-string v1, "No network. Retry in 30 minutes."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_5
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    if-eqz v0, :cond_7

    .line 154
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GmsDownloadService"

    const-string v2, "Already processing. Don\'t need another thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 157
    :cond_7
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 158
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "ds__last_process__"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 160
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GmsDownloadService"

    const-string v1, "processing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->b()V

    .line 171
    :try_start_2
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 172
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->c()Ljava/util/Set;

    move-result-object v8

    .line 195
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->d()Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 197
    :cond_9
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 198
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/download/a;

    .line 200
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gms/common/download/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not enabled and self managed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v3

    :goto_3
    if-nez v1, :cond_17

    .line 201
    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Download invalid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 316
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 317
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 319
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 320
    sget-boolean v1, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    if-nez v1, :cond_b

    .line 321
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b
    throw v0

    .line 179
    :catch_0
    move-exception v0

    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 180
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 181
    :try_start_7
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "GmsDownloadService"

    const-string v2, "Bad Json"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 183
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 316
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 317
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    const/4 v0, 0x0

    :try_start_8
    sput-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 319
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 320
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 183
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 319
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_d
    :try_start_a
    iget v1, v0, Lcom/google/android/gms/common/download/a;->f:I

    if-lt v12, v1, :cond_f

    iget v1, v0, Lcom/google/android/gms/common/download/a;->g:I

    if-gt v12, v1, :cond_f

    move v1, v4

    :goto_4
    if-nez v1, :cond_10

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not supported on GmsCore version."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v1, v3

    goto/16 :goto_3

    :cond_f
    move v1, v3

    goto :goto_4

    :cond_10
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->h:Ljava/util/regex/Pattern;

    iget-object v10, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " invalid filename."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v1, v3

    goto/16 :goto_3

    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    const-string v10, "https"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "GmsDownloadService"

    const-string v10, "Need https."

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v1, v3

    goto/16 :goto_3

    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    const-string v10, ".."

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bad relative path."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v1, v3

    goto/16 :goto_3

    :cond_16
    move v1, v4

    goto/16 :goto_3

    .line 205
    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 208
    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 209
    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " is already in DownloadManager."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 214
    :cond_18
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "__failed__"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sget-object v1, Lcom/google/android/gms/common/download/a/a;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v10, v1, :cond_1a

    .line 216
    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is at retry limit."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_19
    if-eqz v2, :cond_9

    .line 218
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "__failed__"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 224
    :cond_1a
    iget-object v1, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_1b

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "__sha1__"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-interface {v5, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v10, v0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-wide v10, v0, Lcom/google/android/gms/common/download/a;->c:J

    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/common/download/DownloadService;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 232
    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "File "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is updated."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 236
    :cond_1b
    iget-wide v10, v0, Lcom/google/android/gms/common/download/a;->c:J

    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/common/download/DownloadService;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 237
    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 238
    const-string v1, "GmsDownloadService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "File "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is new."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1c
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 246
    :cond_1d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/download/a;

    .line 247
    sget-object v1, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "GmsDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Enqueuing "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 249
    :cond_1e
    :try_start_b
    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/DownloadManager$Request;

    iget-object v7, v0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v7, v0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    :goto_6
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v8

    invoke-static {p0, v8, v9, v0}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;JLcom/google/android/gms/common/download/a;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 316
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 317
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 319
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 320
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 249
    :cond_1f
    const/4 v7, 0x0

    :try_start_d
    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 319
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 255
    :cond_20
    :try_start_e
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_7
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .line 261
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 262
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "GmsDownloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleting unused file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_21
    new-instance v0, Ljava/io/File;

    invoke-static {p0, v4}, Lcom/google/android/gms/common/download/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "__sha1__"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 277
    :cond_23
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 278
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v1

    .line 280
    if-eqz v1, :cond_25

    .line 282
    :goto_8
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 283
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 284
    const-string v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-static {p0, v4}, Lcom/google/android/gms/common/download/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_8

    .line 290
    :catchall_5
    move-exception v0

    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_25
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v1

    .line 296
    if-eqz v1, :cond_28

    .line 298
    :cond_26
    :goto_9
    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 299
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 300
    const-string v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {p0, v4}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 304
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 305
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_9

    .line 309
    :catchall_6
    move-exception v0

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_28
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "GmsDownloadService"

    const-string v1, "finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 316
    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/common/download/DownloadService;->a()V

    .line 317
    sget-object v1, Lcom/google/android/gms/common/download/DownloadService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    const/4 v0, 0x0

    :try_start_13
    sput-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->i:Z

    .line 319
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 320
    sget-boolean v0, Lcom/google/android/gms/common/download/DownloadService;->c:Z

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/google/android/gms/common/download/DownloadService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 319
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2a
    move v2, v3

    goto/16 :goto_1
.end method
