.class public final Lcom/google/android/gms/maps/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/google/android/gms/maps/internal/b;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;
    .locals 2

    .prologue
    .line 199
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-static {}, Lcom/google/android/gms/maps/b;->a()Lcom/google/android/gms/maps/internal/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/internal/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;
    .locals 3

    .prologue
    .line 233
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-static {}, Lcom/google/android/gms/maps/b;->a()Lcom/google/android/gms/maps/internal/b;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/maps/internal/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/a;
    .locals 3

    .prologue
    .line 261
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-static {}, Lcom/google/android/gms/maps/b;->a()Lcom/google/android/gms/maps/internal/b;

    move-result-object v1

    const/16 v2, 0x30

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/maps/internal/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;II)Lcom/google/android/gms/maps/a;
    .locals 3

    .prologue
    .line 287
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-static {}, Lcom/google/android/gms/maps/b;->a()Lcom/google/android/gms/maps/internal/b;

    move-result-object v1

    const/16 v2, 0x30

    invoke-interface {v1, p0, p1, p2, v2}, Lcom/google/android/gms/maps/internal/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static a()Lcom/google/android/gms/maps/internal/b;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/internal/b;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/b;

    return-object v0
.end method
