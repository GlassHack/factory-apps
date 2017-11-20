.class public final Lcom/google/android/location/places/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/location/places/c/h;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/location/places/UserDataType;

.field private final d:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/c/h;Ljava/lang/String;Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/location/places/c/l;->a:Lcom/google/android/location/places/c/h;

    .line 26
    iput-object p2, p0, Lcom/google/android/location/places/c/l;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/google/android/location/places/c/l;->c:Lcom/google/android/gms/location/places/UserDataType;

    .line 28
    iput-object p4, p0, Lcom/google/android/location/places/c/l;->d:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 29
    iput-object p5, p0, Lcom/google/android/location/places/c/l;->e:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Lcom/google/android/location/places/c/l;->a:Lcom/google/android/location/places/c/h;

    iget-object v3, p0, Lcom/google/android/location/places/c/l;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/location/places/c/l;->c:Lcom/google/android/gms/location/places/UserDataType;

    iget-object v5, p0, Lcom/google/android/location/places/c/l;->d:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v6, p0, Lcom/google/android/location/places/c/l;->e:Ljava/util/List;

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
    iget-object v0, v2, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    new-instance v7, Lcom/google/android/location/places/d/a/j;

    invoke-direct {v7}, Lcom/google/android/location/places/d/a/j;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/location/places/c/j;->a()Lcom/google/android/location/places/d/a/d;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-eqz v5, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/b;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/b;-><init>()V

    iget-object v8, v5, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v8}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/places/d/a/p;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/location/places/d/a/b;->a:Lcom/google/android/location/places/d/a/p;

    iget-object v5, v5, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v5}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/places/d/a/p;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/location/places/d/a/b;->b:Lcom/google/android/location/places/d/a/p;

    iput-object v0, v7, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v7, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/v;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/location/places/UserDataType;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/location/places/d/a/v;->a:Ljava/lang/Integer;

    new-array v4, v1, [Lcom/google/android/location/places/d/a/u;

    iput-object v4, v0, Lcom/google/android/location/places/d/a/v;->b:[Lcom/google/android/location/places/d/a/u;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/location/places/d/a/v;

    aput-object v0, v4, v1

    iput-object v4, v7, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    iget-object v0, v2, Lcom/google/android/location/places/c/h;->b:Lcom/google/android/location/places/c/i;

    invoke-virtual {v2, v3}, Lcom/google/android/location/places/c/h;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/places/d/a/j;)Lcom/google/android/location/places/d/a/k;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/location/places/c/h;->c:Lcom/google/android/location/places/c/j;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/android/location/places/d/a/k;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v1, v4, v0

    invoke-virtual {v2, v1}, Lcom/google/android/location/places/c/j;->a(Lcom/google/android/location/places/d/a/o;)Lcom/google/android/location/places/d/a;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method
