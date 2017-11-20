.class final Lcom/google/android/maps/driveabout/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private final a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/p;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 228
    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/p;->b:Ljava/lang/Runnable;

    .line 229
    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/p;->c:Z

    .line 230
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/p;->c:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f()V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    .prologue
    .line 237
    instance-of v0, p1, Lcom/google/android/maps/driveabout/util/q;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/p;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/p;->c:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/p;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()V

    .line 243
    :cond_0
    return-void
.end method

.method public final onNetworkError(IZLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 246
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_2

    .line 248
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->c()Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/p;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/p;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/p;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 253
    :cond_0
    const-class v1, Lcom/google/android/maps/driveabout/util/n;

    monitor-enter v1

    .line 254
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/util/n;->a(Z)Z

    .line 255
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    return-void

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
