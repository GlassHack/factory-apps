.class final Lcom/google/android/gms/wearable/node/bd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/node/ay;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bd;->a:Lcom/google/android/gms/wearable/node/ay;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    .line 91
    const-string v0, "wearable"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "wearable"

    const-string v1, "Checking if write is stuck."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/node/bb;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bb;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string v2, "com.google.android.gms.wearable.ACTION_WRITE_STUCK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bd;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/ay;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    new-instance v1, Lcom/google/c/f/e;

    invoke-direct {v1}, Lcom/google/c/f/e;-><init>()V

    .line 100
    new-instance v2, Lcom/google/c/f/d;

    invoke-direct {v2}, Lcom/google/c/f/d;-><init>()V

    iput-object v2, v1, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    .line 101
    iget-object v2, v1, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    const/4 v3, 0x5

    iput v3, v2, Lcom/google/c/f/d;->a:I

    .line 102
    sget-object v2, Lcom/google/android/gms/wearable/b/a;->a:Lcom/google/android/gms/wearable/b/a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/wearable/b/a;->a(Lcom/google/c/f/e;)V

    .line 108
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write is stuck. Killing thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/bb;->a:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bb;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v0, "wearable"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "wearable"

    const-string v1, "Write is not stuck. No action needed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
