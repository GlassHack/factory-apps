.class public Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/ui/PlacePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.location.places.ui.PICK_PLACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->p(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hideAddAPlaceOption(Z)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "hide_add_a_place"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public hideNearbyPlaces(Z)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "hide_nearby_places"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public hideSelectCurrentLocation(Z)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "hide_select_current_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setEnableDebugInformation(Z)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "enable_debug_information"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public setFilter(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 2
    .param p1, "filter"    # Lcom/google/android/gms/location/places/PlaceFilter;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "filter"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 3
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Setting LatLngBounds only allowed in exploration mode"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "latlng_bounds"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMode(I)Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    const-string v1, "unknown mode"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
