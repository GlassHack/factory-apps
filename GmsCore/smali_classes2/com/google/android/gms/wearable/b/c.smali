.class final Lcom/google/android/gms/wearable/b/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/b/a;

.field private b:Lcom/google/android/gms/playlog/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/b/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/gms/wearable/b/c;->a:Lcom/google/android/gms/wearable/b/a;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x2

    .line 87
    const-string v0, "WearableLogger"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "WearableLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/b/b;

    iget-object v1, v0, Lcom/google/android/gms/wearable/b/b;->a:Lcom/google/c/f/e;

    const/4 v2, 0x4

    iput v2, v1, Lcom/google/c/f/e;->b:I

    invoke-static {}, Lcom/google/android/gms/wearable/service/h;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "peer_android_id"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/wearable/b/b;->a:Lcom/google/c/f/e;

    iput-wide v2, v1, Lcom/google/c/f/e;->a:J

    :cond_1
    const-string v1, "WearableLogger"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WearableLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/wearable/b/b;->a:Lcom/google/c/f/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/wearable/b/b;->a:Lcom/google/c/f/e;

    invoke-static {v1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/wearable/b/c;->b:Lcom/google/android/gms/playlog/a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/playlog/a;

    iget-object v2, p0, Lcom/google/android/gms/wearable/b/c;->a:Lcom/google/android/gms/wearable/b/a;

    iget-object v2, v2, Lcom/google/android/gms/wearable/b/a;->b:Landroid/content/Context;

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/b/c;->b:Lcom/google/android/gms/playlog/a;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/b/c;->b:Lcom/google/android/gms/playlog/a;

    iget-wide v2, v0, Lcom/google/android/gms/wearable/b/b;->b:J

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/a;->b()V

    iget-object v1, v1, Lcom/google/android/gms/playlog/a;->a:Lcom/google/android/gms/playlog/b;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/playlog/b;->a(JLjava/lang/String;[B[Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v8, v0, v1}, Lcom/google/android/gms/wearable/b/c;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    :cond_4
    :goto_0
    return-void

    .line 92
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v8, :cond_4

    .line 93
    invoke-virtual {p0, v8}, Lcom/google/android/gms/wearable/b/c;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/b/c;->b:Lcom/google/android/gms/playlog/a;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/a;->a()V

    iput-object v4, p0, Lcom/google/android/gms/wearable/b/c;->b:Lcom/google/android/gms/playlog/a;

    goto :goto_0
.end method
