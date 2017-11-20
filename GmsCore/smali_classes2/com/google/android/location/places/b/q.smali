.class final Lcom/google/android/location/places/b/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/b/m;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/m;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/location/places/b/q;->a:Lcom/google/android/location/places/b/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 357
    const-string v0, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    move v2, v0

    .line 358
    :goto_0
    if-ne v2, v1, :cond_3

    .line 370
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v1

    .line 357
    goto :goto_0

    .line 361
    :cond_3
    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 363
    :goto_2
    if-eqz v0, :cond_6

    .line 364
    iget-object v1, p0, Lcom/google/android/location/places/b/q;->a:Lcom/google/android/location/places/b/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/location/places/b/m;->a(ILjava/util/List;)V

    goto :goto_1

    .line 361
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->a([B)Lcom/google/android/gms/location/internal/ParcelableGeofence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 366
    :cond_6
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    const-string v0, "Places"

    const-string v1, "Failed to get triggering geofences from intent"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
