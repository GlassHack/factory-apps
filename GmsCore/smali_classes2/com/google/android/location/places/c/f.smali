.class public final Lcom/google/android/location/places/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/location/places/c/h;

.field private final b:Lcom/google/android/location/places/Subscription;

.field private final c:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/c/h;Lcom/google/android/location/places/Subscription;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/location/places/c/f;->a:Lcom/google/android/location/places/c/h;

    .line 31
    iput-object p2, p0, Lcom/google/android/location/places/c/f;->b:Lcom/google/android/location/places/Subscription;

    .line 32
    iput-object p3, p0, Lcom/google/android/location/places/c/f;->c:Lcom/google/android/gms/maps/model/LatLng;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 13
    iget-object v1, p0, Lcom/google/android/location/places/c/f;->a:Lcom/google/android/location/places/c/h;

    iget-object v2, p0, Lcom/google/android/location/places/c/f;->b:Lcom/google/android/location/places/Subscription;

    iget-object v3, p0, Lcom/google/android/location/places/c/f;->c:Lcom/google/android/gms/maps/model/LatLng;

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
    iget-object v4, v1, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    invoke-interface {v2}, Lcom/google/android/location/places/Subscription;->b()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->f()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    new-instance v7, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v7}, Lcom/google/android/location/places/d/a/v;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/UserDataType;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/u;

    iput-object v0, v7, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/google/android/location/places/d/a/h;

    invoke-direct {v6}, Lcom/google/android/location/places/d/a/h;-><init>()V

    invoke-static {v3}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/places/d/a/p;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/v;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/places/d/a/v;

    iput-object v0, v6, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    invoke-virtual {v4}, Lcom/google/android/location/places/c/j;->a()Lcom/google/android/location/places/d/a/d;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    iget-object v0, v1, Lcom/google/android/location/places/c/h;->b:Lcom/google/android/location/places/c/i;

    invoke-interface {v2}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/c/h;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/places/d/a/h;)Lcom/google/android/location/places/d/a/i;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/i;)Lcom/google/android/location/places/c/g;

    move-result-object v0

    return-object v0
.end method
