.class final Lcom/google/android/location/geofencer/service/a;
.super Lcom/google/android/location/geofencer/service/e;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/app/PendingIntent;

.field public final c:Lcom/google/android/location/geofencer/service/f;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/location/geofencer/service/f;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/service/e;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/a;->a:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/a;->b:Landroid/app/PendingIntent;

    .line 27
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/a;->c:Lcom/google/android/location/geofencer/service/f;

    .line 28
    return-void
.end method

.method public static a(Lcom/google/android/location/geofencer/service/f;ILjava/util/List;)V
    .locals 4

    .prologue
    .line 37
    if-eqz p0, :cond_1

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p0, p1, v2}, Lcom/google/android/location/geofencer/service/f;->a(I[Ljava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/a;->c:Lcom/google/android/location/geofencer/service/f;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/a;->a:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/google/android/location/geofencer/service/a;->a(Lcom/google/android/location/geofencer/service/f;ILjava/util/List;)V

    .line 33
    return-void
.end method
