.class public final Lcom/google/android/location/fused/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/android/location/fused/ap;

.field private final c:Lcom/google/android/location/o/ag;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/ap;Landroid/os/Looper;Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    .line 73
    new-instance v0, Lcom/google/android/location/fused/br;

    invoke-direct {v0, p0, p2}, Lcom/google/android/location/fused/br;-><init>(Lcom/google/android/location/fused/bq;Landroid/os/Looper;)V

    .line 111
    new-instance v1, Lcom/google/android/location/o/ag;

    invoke-direct {v1, p3, v0}, Lcom/google/android/location/o/ag;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    .line 112
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    new-instance v1, Lcom/google/android/location/fused/bs;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/fused/bs;-><init>(Lcom/google/android/location/fused/bq;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/ag;->a(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 128
    return-void

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->c:Lcom/google/android/location/o/ag;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/location/fused/bq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/fused/bq;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->e()Lcom/google/android/location/o/k;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
