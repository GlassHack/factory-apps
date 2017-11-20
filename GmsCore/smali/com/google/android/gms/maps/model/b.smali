.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/maps/model/a/a;


# direct methods
.method public static a()Lcom/google/android/gms/maps/model/a;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/a;

    move-result-object v1

    const v2, 0x7f0201dc

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/model/a/a;->a(I)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;
    .locals 2

    .prologue
    .line 163
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->b()Lcom/google/android/gms/maps/model/a/a;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/maps/model/a/a;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static b()Lcom/google/android/gms/maps/model/a/a;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/a/a;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/a/a;

    return-object v0
.end method
