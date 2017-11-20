.class public Lcom/google/android/gms/common/internal/e$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic Ak:Lcom/google/android/gms/common/internal/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e$a;->Aj:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c$e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/c$e;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;I)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e$a;->Aj:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c$e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/c$e;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$a$a;->Ak:Lcom/google/android/gms/common/internal/e$a;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e$a;->a(Lcom/google/android/gms/common/internal/e$a;I)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
