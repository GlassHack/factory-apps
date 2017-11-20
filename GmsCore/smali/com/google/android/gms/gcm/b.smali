.class final Lcom/google/android/gms/gcm/b;
.super Lcom/google/b/a/a;
.source "SourceFile"


# static fields
.field static c:Landroid/os/Messenger;


# instance fields
.field private final Q:Landroid/content/Context;

.field private final R:Lcom/google/android/gms/gcm/ay;

.field private final S:Lcom/google/android/gms/gcm/ai;

.field private final T:Lcom/google/android/gms/gcm/au;

.field private final U:Lcom/google/android/gms/gcm/bf;

.field private final V:Lcom/google/android/gms/gcm/ab;

.field private final W:Landroid/os/PowerManager$WakeLock;

.field a:I

.field final b:Lcom/google/android/gms/gcm/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/ay;Lcom/google/android/gms/gcm/ai;Lcom/google/android/gms/gcm/au;Lcom/google/android/gms/gcm/g;Lcom/google/android/gms/gcm/bf;Lcom/google/android/gms/gcm/ab;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 131
    invoke-direct {p0}, Lcom/google/b/a/a;-><init>()V

    .line 111
    iput v4, p0, Lcom/google/android/gms/gcm/b;->a:I

    .line 132
    iput-object p2, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/gcm/b;->e:I

    .line 134
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 135
    const/4 v1, 0x1

    const-string v2, "GCM_CONN"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/b;->W:Landroid/os/PowerManager$WakeLock;

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->W:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 138
    iput-object p3, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/gcm/ai;->a(Lcom/google/b/a/a;)V

    .line 141
    iput-object p4, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/gcm/au;->a(Lcom/google/android/gms/gcm/b;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/gcm/au;->a(Lcom/google/android/gms/gcm/g;)V

    .line 145
    iput-object p5, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a;)V

    .line 147
    iput-object p6, p0, Lcom/google/android/gms/gcm/b;->U:Lcom/google/android/gms/gcm/bf;

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ay;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iput-object p7, p0, Lcom/google/android/gms/gcm/b;->V:Lcom/google/android/gms/gcm/ab;

    .line 157
    iput-object p1, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_ssl_handshake_timeout_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gcm_so_timeout"

    iget v3, p0, Lcom/google/android/gms/gcm/b;->C:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/gcm/b;->C:I

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/b;->s:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gcm_message_remove_ack_threshold"

    invoke-static {v0, v1, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/b;->a:I

    .line 177
    return-void

    .line 168
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 170
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/google/android/gms/gcm/b;->s:Ljavax/net/ssl/SSLSocketFactory;

    .line 171
    const-string v0, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Use default socket factory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V
    .locals 4

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 520
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 509
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 510
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/google/protobuf/a/f;->g()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 511
    const-string v2, "type"

    invoke-static {p1}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;)B

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 512
    const-string v2, "tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 515
    sget-object v1, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "GCM"

    const-string v2, "Failed to instrument"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/b/a/a;Lcom/google/android/gms/gcm/g;)V

    .line 185
    return-void
.end method

.method protected final a(ILjava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ai;->c()V

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ai;->a()V

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/gcm/au;->a(IZ)V

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->e()I

    move-result v1

    .line 356
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/b;->l()J

    move-result-wide v2

    .line 357
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 358
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    shl-int/lit8 v0, v1, 0x8

    add-int/2addr v0, p1

    const v3, 0x31ce3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne v1, v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Close err:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NO NETWORK  time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 367
    :goto_1
    sget-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "in"

    new-instance v1, Lcom/google/b/a/a/d;

    invoke-direct {v1}, Lcom/google/b/a/a/d;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V

    .line 370
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gcm.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    return-void

    .line 358
    :sswitch_0
    const-string v0, "IOException"

    goto :goto_0

    :sswitch_1
    const-string v0, "FIN"

    goto :goto_0

    :sswitch_2
    const-string v0, "RST"

    goto :goto_0

    :sswitch_3
    const-string v0, "FailedHeartbeat"

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Close err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " net:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/b;->g()I

    move-result v0

    const/high16 v2, 0x1000000

    shl-int/lit8 v3, v0, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const v3, 0x31ce2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed connection NO NETWORK ev:1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed connection ev:1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " err:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " net:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x10 -> :sswitch_0
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/b/a/a/m;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ay;->b()V

    .line 304
    const-string v0, "gms-6.1.11-300"

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/m;->a(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/m;->b(I)Lcom/google/b/a/a/m;

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/m;->h(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->U:Lcom/google/android/gms/gcm/bf;

    if-eqz v0, :cond_0

    .line 312
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->U:Lcom/google/android/gms/gcm/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/gcm/bf;->a(Ljava/util/Map;I)Z

    .line 314
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    new-instance v4, Lcom/google/b/a/a/r;

    invoke-direct {v4}, Lcom/google/b/a/a/r;-><init>()V

    .line 317
    invoke-virtual {v4, v0}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 318
    invoke-virtual {v4, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 319
    invoke-virtual {p1, v4}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    iget-wide v0, v0, Lcom/google/android/gms/gcm/au;->i:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 327
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 328
    const-string v1, "networkOn"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    iget-wide v4, v1, Lcom/google/android/gms/gcm/au;->i:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    iget-wide v0, v0, Lcom/google/android/gms/gcm/au;->j:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 333
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 334
    const-string v1, "networkOff"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    iget-wide v4, v1, Lcom/google/android/gms/gcm/au;->j:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 338
    :cond_2
    return-void
.end method

.method protected final a(Lcom/google/b/a/a/n;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v0, p1, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    .line 245
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/b/a/a/f;->a:I

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/google/b/a/a/f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/gcm/au;->a(IZ)V

    .line 275
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "GCM"

    const-string v1, "Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/ai;->a(Lcom/google/b/a/a/n;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->f()V

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->V:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ab;->c()V

    .line 266
    const v0, 0x31ce2

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 268
    const-string v0, "Connected"

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 270
    const-string v0, "login"

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V

    .line 273
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gcm.CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/protobuf/a/f;)V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "out"

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message written:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/b;->b(Ljava/lang/String;)V

    .line 283
    instance-of v0, p1, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flushed GCM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/google/b/a/a/e;

    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 296
    :cond_1
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->c()V

    .line 297
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/ay;->b(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 487
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    if-nez p2, :cond_1

    .line 489
    const-string v0, "GCM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const-string v0, "GCM"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    new-instance v1, Lcom/google/android/gms/gcm/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/gcm/c;-><init>(Lcom/google/android/gms/gcm/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/android/gms/gcm/bb;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/util/List;)I

    move-result v0

    .line 220
    iget v1, p0, Lcom/google/android/gms/gcm/b;->a:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/gcm/b;->a:I

    if-lt v0, v1, :cond_0

    .line 223
    invoke-static {}, Lcom/google/b/a/f;->a()Lcom/google/b/a/a/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/au;->c(Z)V

    .line 227
    return-void
.end method

.method public final a(ZILjava/lang/String;II)V
    .locals 4

    .prologue
    .line 385
    if-eqz p1, :cond_0

    neg-int p2, p2

    .line 386
    :cond_0
    const v0, 0x31ce5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 387
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->W:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 190
    const-string v0, "GCM/Wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "GCM/Wake"

    const-string v1, "Acquired read lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method protected final b(Lcom/google/protobuf/a/f;)V
    .locals 4

    .prologue
    .line 439
    instance-of v0, p1, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 440
    check-cast v0, Lcom/google/b/a/a/e;

    .line 441
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GCM message "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->T:Lcom/google/android/gms/gcm/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/au;->c(Z)V

    .line 449
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ai;->b()V

    .line 451
    sget-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "in"

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V

    .line 455
    :cond_0
    instance-of v0, p1, Lcom/google/b/a/a/e;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    check-cast p1, Lcom/google/b/a/a/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/g;->c(Lcom/google/b/a/a/e;)V

    .line 459
    :cond_1
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->d()V

    .line 460
    return-void

    .line 444
    :cond_2
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final b(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->R:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/ay;->b(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "GCM/Wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "GCM/Wake"

    const-string v1, "Released read lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->W:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    return-void
.end method

.method protected final c(Lcom/google/protobuf/a/f;)V
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 464
    iget-object v2, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    iget-object v2, v2, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iget-boolean v2, v2, Lcom/google/android/gms/gcm/bc;->h:Z

    .line 465
    iget-object v3, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    iget-object v3, v3, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v3}, Lcom/google/android/gms/gcm/bc;->a()Z

    move-result v4

    .line 466
    if-eqz v2, :cond_1

    move-wide v2, v0

    :goto_0
    if-eqz v4, :cond_2

    :goto_1
    or-long/2addr v0, v2

    .line 467
    invoke-static {p1, v0, v1}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;J)V

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->Q:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/d;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/d;->a()Lcom/google/b/a/a/c;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-static {p1, v0}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;Lcom/google/b/a/a/c;)V

    .line 472
    :cond_0
    return-void

    .line 466
    :cond_1
    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->S:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ai;->c()V

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/gcm/b;->b:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->e()V

    .line 483
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    invoke-super {p0}, Lcom/google/b/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/b;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/gcm/b;->f:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nconnectTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/b;->m()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/gcm/b;->J:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 532
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndisconnectTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/gcm/b;->u:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/gcm/b;->J:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nlostConnection="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/gcm/b;->u:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
