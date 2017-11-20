.class final Lcom/google/android/gms/location/places/ae;
.super Lcom/google/android/gms/location/places/ag;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/places/NearbyAlertRequest;

.field final synthetic e:Landroid/app/PendingIntent;

.field final synthetic f:Lcom/google/android/gms/location/places/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/gms/location/places/ae;->f:Lcom/google/android/gms/location/places/z;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ae;->d:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iput-object p3, p0, Lcom/google/android/gms/location/places/ae;->e:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ag;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 322
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 3

    .prologue
    .line 322
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->k()Lcom/google/android/gms/location/places/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ae;->d:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget-object v2, p0, Lcom/google/android/gms/location/places/ae;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/location/places/internal/k;->a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)V

    return-void
.end method
