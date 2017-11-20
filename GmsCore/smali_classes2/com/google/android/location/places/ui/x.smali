.class final Lcom/google/android/location/places/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/CameraPosition;

.field final synthetic b:Lcom/google/android/location/places/ui/MarkerMapFragment;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/location/places/ui/x;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object p2, p0, Lcom/google/android/location/places/ui/x;->a:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/location/places/ui/x;->b:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/x;->a:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 234
    return-void
.end method
