.class public final Lcom/google/android/gms/wearable/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/wearable/b/a;


# instance fields
.field final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/wearable/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/wearable/b/a;->b:Landroid/content/Context;

    .line 50
    if-eqz p2, :cond_1

    .line 51
    const-string v0, "WearableLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "WearableLogger"

    const-string v1, "Logging enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableAppLogger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v1, Lcom/google/android/gms/wearable/b/c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/wearable/b/c;-><init>(Lcom/google/android/gms/wearable/b/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/b/a;->c:Lcom/google/android/gms/wearable/b/c;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/b/a;->c:Lcom/google/android/gms/wearable/b/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/c/f/e;)V
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/wearable/b/a;->c:Lcom/google/android/gms/wearable/b/c;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/b/a;->c:Lcom/google/android/gms/wearable/b/c;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/wearable/b/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, p0, p1, v4, v5}, Lcom/google/android/gms/wearable/b/b;-><init>(Lcom/google/android/gms/wearable/b/a;Lcom/google/c/f/e;J)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/b/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
