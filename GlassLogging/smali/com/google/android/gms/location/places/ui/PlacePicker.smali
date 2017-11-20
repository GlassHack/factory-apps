.class public Lcom/google/android/gms/location/places/ui/PlacePicker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final EXTRA_ENABLE_DEBUG_INFORMATION:Ljava/lang/String; = "enable_debug_information"

.field public static final EXTRA_FILTER:Ljava/lang/String; = "filter"

.field public static final EXTRA_FINAL_LATLNG_BOUNDS:Ljava/lang/String; = "final_latlng_bounds"

.field public static final EXTRA_HIDE_ADD_A_PLACE:Ljava/lang/String; = "hide_add_a_place"

.field public static final EXTRA_HIDE_NEARBY_PLACES:Ljava/lang/String; = "hide_nearby_places"

.field public static final EXTRA_HIDE_SELECT_CURRENT_LOCATION:Ljava/lang/String; = "hide_select_current_location"

.field public static final EXTRA_LATLNG_BOUNDS:Ljava/lang/String; = "latlng_bounds"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_SELECTED_PLACE:Ljava/lang/String; = "selected_place"

.field public static final EXTRA_SELECTION_INDEX:Ljava/lang/String; = "selection_index"

.field public static final EXTRA_SELECTION_TYPE:Ljava/lang/String; = "selection_type"

.field public static final EXTRA_THIRD_PARTY_ATTRIBUTIONS:Ljava/lang/String; = "third_party_attributions"

.field public static final MODE_CHECKIN:I = 0x1

.field public static final MODE_EXPLORATION:I = 0x0

.field public static final PLACE_SELECTION_ADD_A_PLACE:I = 0x4

.field public static final PLACE_SELECTION_FROM_NEARBY_LIST:I = 0x2

.field public static final PLACE_SELECTION_FROM_SEARCH_RESULTS:I = 0x3

.field public static final PLACE_SELECTION_INDEX_NONE:I = -0x1

.field public static final PLACE_SELECTION_NONE:I = 0x0

.field public static final PLACE_SELECTION_SELECT_THIS_LOCATION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributions(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "third_party_attributions"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLatLngBounds(Landroid/content/Intent;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "final_latlng_bounds"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public static getPlace(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/gms/location/places/Place;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "selected_place"

    sget-object v1, Lcom/google/android/gms/internal/do;->CREATOR:Lcom/google/android/gms/internal/dp;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/do;

    invoke-static {p1}, Lcom/google/android/gms/internal/ds;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/ds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/ds;)V

    return-object v0
.end method

.method public static getPlaceSelectionIndex(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "selection_index"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPlaceSelectionType(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "selection_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
