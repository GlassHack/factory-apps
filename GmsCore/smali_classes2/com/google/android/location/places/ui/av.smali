.class final Lcom/google/android/location/places/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/h;

.field final synthetic b:Lcom/google/android/location/places/ui/PlacePickerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/PlacePickerActivity;Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/location/places/ui/av;->b:Lcom/google/android/location/places/ui/PlacePickerActivity;

    iput-object p2, p0, Lcom/google/android/location/places/ui/av;->a:Lcom/google/android/gms/location/places/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/location/places/ui/av;->b:Lcom/google/android/location/places/ui/PlacePickerActivity;

    iget-object v1, p0, Lcom/google/android/location/places/ui/av;->a:Lcom/google/android/gms/location/places/h;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/location/places/ui/PlacePickerActivity;->a(Lcom/google/android/gms/location/places/h;IILjava/lang/String;)V

    .line 231
    return-void
.end method
