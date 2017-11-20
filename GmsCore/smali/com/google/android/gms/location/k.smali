.class public final Lcom/google/android/gms/location/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/location/internal/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/google/android/gms/location/internal/p;

    const-string v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/location/internal/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/k;->a:Lcom/google/android/gms/location/internal/p;

    .line 147
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 363
    if-eqz p1, :cond_1

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 367
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->k()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/gms/location/k;->a:Lcom/google/android/gms/location/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/p;->c()V

    .line 632
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/l;)V
    .locals 2

    .prologue
    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/k;->a:Lcom/google/android/gms/location/internal/p;

    invoke-static {p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/gms/location/k;->a:Lcom/google/android/gms/location/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/p;->d()V

    .line 637
    return-void
.end method
