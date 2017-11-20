.class final Lcom/google/android/gms/location/places/ad;
.super Lcom/google/android/gms/location/places/ag;
.source "SourceFile"


# instance fields
.field final synthetic d:Landroid/app/PendingIntent;

.field final synthetic e:Lcom/google/android/gms/location/places/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/z;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/gms/location/places/ad;->e:Lcom/google/android/gms/location/places/z;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ad;->d:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ag;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 275
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 275
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/p;->k()Lcom/google/android/gms/location/places/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ad;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/location/places/internal/k;->a(Lcom/google/android/gms/common/api/i;Landroid/app/PendingIntent;)V

    return-void
.end method
