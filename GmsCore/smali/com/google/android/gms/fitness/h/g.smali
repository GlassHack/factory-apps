.class public final Lcom/google/android/gms/fitness/h/g;
.super Lcom/google/c/j/a/k;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Lcom/google/c/j/a/ad;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/c/j/a/k;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/fitness/h/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Lcom/google/c/j/a/ad;

    invoke-direct {v0}, Lcom/google/c/j/a/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/h/g;->b:Lcom/google/c/j/a/ad;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/c/j/a/v;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/g;->b:Lcom/google/c/j/a/ad;

    return-object v0
.end method

.method protected final bridge synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/g;->b:Lcom/google/c/j/a/ad;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/g;->b:Lcom/google/c/j/a/ad;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/g;->b:Lcom/google/c/j/a/ad;

    invoke-virtual {v0, p2}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/fitness/h/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
