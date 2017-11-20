.class public final Lcom/google/android/location/places/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/location/places/c/h;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final d:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final e:Lcom/google/android/gms/location/places/internal/PlacesParams;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/c/h;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/location/places/c/a;->a:Lcom/google/android/location/places/c/h;

    .line 31
    iput-object p2, p0, Lcom/google/android/location/places/c/a;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/location/places/c/a;->c:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 33
    iput-object p4, p0, Lcom/google/android/location/places/c/a;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 34
    iput-object p5, p0, Lcom/google/android/location/places/c/a;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/location/places/c/a;->a:Lcom/google/android/location/places/c/h;

    iget-object v2, p0, Lcom/google/android/location/places/c/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/location/places/c/a;->c:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v4, p0, Lcom/google/android/location/places/c/a;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v5, p0, Lcom/google/android/location/places/c/a;->e:Lcom/google/android/gms/location/places/internal/PlacesParams;

    sget-object v0, Lcom/google/android/location/x;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/d/aa;

    const-string v1, "Communication with the server is not allowed."

    invoke-direct {v0, v1}, Lcom/android/d/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/google/android/location/places/c/h;->a:Landroid/content/Context;

    invoke-static {v0, v3, v2, v4, v5}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/location/places/c/h;->b:Lcom/google/android/location/places/c/i;

    iget-object v3, v5, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/location/places/c/h;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/bd;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    iget-object v1, v0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    iget-object v5, v4, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    invoke-static {v4}, Lcom/google/android/location/places/c/j;->a([Lcom/google/android/location/m/a/bn;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
