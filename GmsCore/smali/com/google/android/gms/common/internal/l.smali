.class public final Lcom/google/android/gms/common/internal/l;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Landroid/os/Bundle;

.field public final d:Landroid/os/IBinder;

.field final synthetic e:Lcom/google/android/gms/common/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    .line 570
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    .line 571
    iput p2, p0, Lcom/google/android/gms/common/internal/l;->b:I

    .line 572
    iput-object p3, p0, Lcom/google/android/gms/common/internal/l;->d:Landroid/os/IBinder;

    .line 573
    iput-object p4, p0, Lcom/google/android/gms/common/internal/l;->c:Landroid/os/Bundle;

    .line 574
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 563
    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/internal/l;->b:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->c:Landroid/os/Bundle;

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/e;->d(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/e;->e(Lcom/google/android/gms/common/internal/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/e;->d(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/e;->f(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v2, v5}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/b;

    iget v3, p0, Lcom/google/android/gms/common/internal/l;->b:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/b;)V

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->d:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->d:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/e;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->c(Lcom/google/android/gms/common/internal/e;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/m;->a(Landroid/os/Bundle;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->e(Lcom/google/android/gms/common/internal/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/e;->d(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->f(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/j;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/b;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/b;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method
