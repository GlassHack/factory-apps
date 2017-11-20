.class public final Lcom/google/android/gms/gcm/ai;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/gcm/a;

.field b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/google/b/a/a;

.field private e:Lcom/google/android/gms/gcm/au;

.field private f:Z

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/au;)V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/gms/gcm/ai;->c:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/google/android/gms/gcm/ai;->e:Lcom/google/android/gms/gcm/au;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/gcm/ai;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_wifi_max_heartbeat_ping_interval_ms"

    const v3, 0xdbba0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/gcm/ai;->j:I

    .line 127
    const-string v1, "gtalk_heartbeat_ack_timeout_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/ai;->b:I

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_nosync_heartbeat_ping_interval_ms"

    const v2, 0x19a280

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/ai;->h:I

    .line 137
    new-instance v0, Lcom/google/android/gms/gcm/a;

    const-string v1, "GCM_HB_ALARM"

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/gcm/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    const-string v1, "com.google.android.intent.action.MCS_HEARTBEAT"

    iput-object v1, v0, Lcom/google/android/gms/gcm/a;->b:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->b()V

    .line 140
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 162
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    iget v1, p0, Lcom/google/android/gms/gcm/ai;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/a;->a(J)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    iget v0, p0, Lcom/google/android/gms/gcm/ai;->h:I

    int-to-long v2, v0

    iget v0, p0, Lcom/google/android/gms/gcm/ai;->i:I

    int-to-long v0, v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/gcm/ai;->k:Z

    iget-object v2, p0, Lcom/google/android/gms/gcm/ai;->e:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/au;->e()I

    move-result v2

    if-ne v2, v8, :cond_1

    iget v2, p0, Lcom/google/android/gms/gcm/ai;->j:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/gcm/ai;->j:I

    int-to-long v0, v0

    iput-boolean v8, p0, Lcom/google/android/gms/gcm/ai;->k:Z

    :cond_1
    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/gcm/a;->a(J)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->e()V

    .line 206
    return-void
.end method

.method public final a(Lcom/google/b/a/a/n;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 239
    iget-object v0, p1, Lcom/google/b/a/a/n;->b:Lcom/google/b/a/a/i;

    .line 241
    if-eqz v0, :cond_0

    .line 243
    iget v1, v0, Lcom/google/b/a/a/i;->a:I

    if-lez v1, :cond_0

    .line 244
    iget v0, v0, Lcom/google/b/a/a/i;->a:I

    iput v0, p0, Lcom/google/android/gms/gcm/ai;->i:I

    .line 248
    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/gms/gcm/ai;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    invoke-direct {p0}, Lcom/google/android/gms/gcm/ai;->d()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    iget-wide v0, v0, Lcom/google/android/gms/gcm/a;->c:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->e:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->e()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    invoke-virtual {v0}, Lcom/google/b/a/a;->n()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const v2, 0x31ce4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 253
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/google/b/a/a;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/b/a/a;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    .line 144
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Heartbeat waiting ack "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 278
    iget-wide v2, p0, Lcom/google/android/gms/gcm/ai;->g:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last heartbeat reset connection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/android/gms/gcm/ai;->g:J

    sub-long v4, v0, v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/gcm/ai;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last ping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/android/gms/gcm/ai;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/gcm/ai;->g:J

    sub-long/2addr v0, v4

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    :cond_1
    return-void

    .line 272
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Heartbeat: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->k:Z

    if-eqz v0, :cond_3

    const-string v0, " wifi "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, " cell "

    goto :goto_1
.end method

.method public final b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    .line 227
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/ai;->l:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/ai;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ai;->m:J

    .line 230
    iput-wide v4, p0, Lcom/google/android/gms/gcm/ai;->l:J

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ai;->d()V

    .line 233
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    iget-object v0, v0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    invoke-virtual {v0}, Lcom/google/b/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "GCM"

    const-string v1, "Ignoring attempt to send heartbeat on dead connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    if-eqz v0, :cond_1

    .line 299
    const-string v0, "GCM"

    const-string v1, "Heartbeat timeout, GCM connection reset"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/ai;->a()V

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/b/a/a;->b(I)V

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ai;->g:J

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    iget-object v0, v0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    invoke-virtual {v1}, Lcom/google/b/a/a;->h()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/gcm/ai;->d:Lcom/google/b/a/a;

    invoke-virtual {v0}, Lcom/google/b/a/a;->i()V

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/ai;->l:J

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/ai;->f:Z

    .line 321
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ai;->d()V

    goto :goto_0
.end method
