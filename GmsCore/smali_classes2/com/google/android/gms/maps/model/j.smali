.class public final Lcom/google/android/gms/maps/model/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/a/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/a/p;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/p;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 428
    instance-of v0, p1, Lcom/google/android/gms/maps/model/j;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    check-cast p1, Lcom/google/android/gms/maps/model/j;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/a/p;->a(Lcom/google/android/gms/maps/model/a/p;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/j;->a:Lcom/google/android/gms/maps/model/a/p;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/p;->k()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
