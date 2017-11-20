.class public final Lcom/google/android/gms/wearable/node/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/wearable/node/ar;


# instance fields
.field public b:Lcom/google/android/gms/wearable/node/at;

.field public final c:Ljava/lang/Object;

.field public d:Lcom/google/android/gms/wearable/node/as;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ar;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/wearable/node/a;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7

    .prologue
    .line 31
    const-string v0, "rpcs"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "rpcs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/wearable/node/ar;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ar;->d:Lcom/google/android/gms/wearable/node/as;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ar;->d:Lcom/google/android/gms/wearable/node/as;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/as;->a(ILcom/google/android/gms/wearable/node/a;Ljava/lang/String;[BLjava/lang/String;)V

    .line 39
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
