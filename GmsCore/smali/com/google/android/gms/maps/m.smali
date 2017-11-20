.class public final Lcom/google/android/gms/maps/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/cj;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/h;
    :try_end_0
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/maps/m;->a(Lcom/google/android/gms/maps/internal/h;)V

    .line 49
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/i;->a:I

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/maps/internal/h;)V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/h;->a()Lcom/google/android/gms/maps/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/internal/b;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/b;

    sput-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/internal/b;

    .line 58
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/h;->b()Lcom/google/android/gms/maps/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/a;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/a;

    sput-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
