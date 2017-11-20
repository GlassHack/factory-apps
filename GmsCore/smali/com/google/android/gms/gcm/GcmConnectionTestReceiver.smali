.class public Lcom/google/android/gms/gcm/GcmConnectionTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 45
    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v1

    .line 47
    const-string v0, "cmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string v2, "connect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->j()V

    .line 84
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    const-string v1, "d2cFallback"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/gcm/g;->j:Z

    .line 87
    const-string v0, "result_wait_messenger"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_1
    :goto_1
    const-string v0, "messenger"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 89
    if-eqz v0, :cond_2

    .line 90
    sput-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    .line 92
    :cond_2
    return-void

    .line 51
    :cond_3
    const-string v2, "disconnect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/b;->b(I)V

    goto :goto_0

    .line 53
    :cond_4
    const-string v2, "idle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/google/android/gms/gcm/bc;->g:J

    .line 55
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iput-boolean v4, v0, Lcom/google/android/gms/gcm/bc;->e:Z

    .line 56
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->d()V

    goto :goto_0

    .line 57
    :cond_5
    const-string v2, "receive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    new-instance v2, Lcom/google/b/a/a/e;

    invoke-direct {v2}, Lcom/google/b/a/a/e;-><init>()V

    const-string v3, "BF0E6E96"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->a(Ljava/lang/String;)Lcom/google/b/a/a/e;

    const-string v3, "334574555924"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->b(Ljava/lang/String;)Lcom/google/b/a/a/e;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    const-string v3, "do_not_collapse"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->e(Ljava/lang/String;)Lcom/google/b/a/a/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->a(Z)Lcom/google/b/a/a/e;

    const-string v3, "0:1394832231562933%136ddda6f9fd7ecd"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->f(Ljava/lang/String;)Lcom/google/b/a/a/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->a(I)Lcom/google/b/a/a/e;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->b(I)Lcom/google/b/a/a/e;

    const-string v3, "send_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/b/a/a/e;->b(J)Lcom/google/b/a/a/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->b(Z)Lcom/google/b/a/a/e;

    const-string v3, "binary_payload"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/b/a/a/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/b;->b(Lcom/google/protobuf/a/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v2, "GCM"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 63
    :cond_6
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 64
    const-string v0, "feature"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v2

    .line 66
    const-string v3, "encryption"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    iput-boolean v4, v2, Lcom/google/android/gms/gcm/at;->i:Z

    goto/16 :goto_0

    .line 68
    :cond_7
    const-string v3, "registration_store"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, v2, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    iput v5, v0, Lcom/google/android/gms/gcm/aw;->c:I

    .line 70
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->i:Lcom/google/android/gms/gcm/aw;

    iput v5, v0, Lcom/google/android/gms/gcm/aw;->c:I

    goto/16 :goto_0

    .line 72
    :cond_8
    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "feature"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v2

    .line 75
    const-string v3, "encryption"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 76
    iput-boolean v6, v2, Lcom/google/android/gms/gcm/at;->i:Z

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v3, "registration_store"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, v2, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    iput v6, v0, Lcom/google/android/gms/gcm/aw;->c:I

    .line 79
    iget-object v0, v1, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->i:Lcom/google/android/gms/gcm/aw;

    iput v6, v0, Lcom/google/android/gms/gcm/aw;->c:I

    goto/16 :goto_0

    .line 87
    :catch_1
    move-exception v0

    const-string v0, "GCM"

    const-string v1, "failed to send back msg via messenger"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
