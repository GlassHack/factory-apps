.class public final Lcom/google/android/gms/maps/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/maps/internal/bq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/internal/bq;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/maps/n;->a:Lcom/google/android/gms/maps/internal/bq;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/n;->a:Lcom/google/android/gms/maps/internal/bq;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/bq;->a(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/n;->a:Lcom/google/android/gms/maps/internal/bq;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/bq;->a()Lcom/google/android/gms/maps/model/VisibleRegion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
