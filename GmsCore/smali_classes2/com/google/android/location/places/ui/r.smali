.class final Lcom/google/android/location/places/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/location/places/PlaceFilter;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/google/android/gms/maps/model/LatLngBounds;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field final i:Landroid/content/Intent;

.field final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/location/places/ui/r;->j:Landroid/content/Context;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, v0

    .line 41
    :goto_0
    const-string v0, "filter"

    sget-object v2, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/j;

    invoke-static {p2, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceFilter;

    .line 43
    if-eqz v0, :cond_0

    :goto_1
    iput-object v0, p0, Lcom/google/android/location/places/ui/r;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 45
    const-string v0, "latlng_bounds"

    sget-object v2, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/h;

    invoke-static {p2, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v0, p0, Lcom/google/android/location/places/ui/r;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 48
    const-string v0, "enable_debug_information"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/r;->g:Z

    .line 49
    const-string v0, "mode"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/places/ui/r;->b:I

    .line 50
    const-string v0, "hide_nearby_places"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/r;->c:Z

    .line 51
    const-string v0, "hide_add_a_place"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/r;->d:Z

    .line 52
    const-string v0, "hide_select_current_location"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/r;->e:Z

    .line 54
    const-string v0, "account_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/r;->h:Ljava/lang/String;

    .line 55
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Lcom/google/android/gms/location/places/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
