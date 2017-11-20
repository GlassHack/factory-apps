.class final Lcom/google/android/location/places/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v4

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    new-instance v8, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v8, v9, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance v1, Lcom/google/android/location/m/a/at;

    invoke-direct {v1}, Lcom/google/android/location/m/a/at;-><init>()V

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/at;

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Lcom/google/android/gms/location/places/i;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v6, v1

    if-eqz v6, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    iget-object v1, v0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    aget-object v9, v1, v2

    const-string v1, "coarse"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/location/places/r;->b:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v9}, Lcom/google/android/gms/location/places/r;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v9}, Lcom/google/android/gms/location/places/PlaceType;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v1

    :cond_1
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v7, v5, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    :cond_3
    iget-object v0, v0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/google/android/gms/location/places/i;->b:Z

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/google/android/location/places/ba;

    invoke-direct {v1, v8, v3, v4, v0}, Lcom/google/android/location/places/ba;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;)V

    return-object v1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 59
    check-cast p1, Lcom/google/android/location/places/ba;

    iget-object v0, p1, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->b:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/location/places/ba;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v0}, Lcom/google/android/location/places/u;->a(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/location/m/a/at;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method
