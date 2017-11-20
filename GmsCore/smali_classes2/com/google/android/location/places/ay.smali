.class final Lcom/google/android/location/places/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 37
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    if-ne v4, v7, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-ne v0, v7, :cond_1

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/location/places/t;->a(Lcom/google/android/location/m/a/bl;)Lcom/google/android/gms/location/places/AutocompletePrediction;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance v5, Lcom/google/android/location/m/a/bl;

    invoke-direct {v5}, Lcom/google/android/location/m/a/bl;-><init>()V

    array-length v6, v0

    invoke-static {v5, v0, v6}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/bl;

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 37
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-interface {p2, v9}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    if-nez v0, :cond_2

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_8

    invoke-interface {p2, v9}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/google/android/location/m/a/bl;

    invoke-direct {v4}, Lcom/google/android/location/m/a/bl;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/location/m/a/bl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/location/m/a/bl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->c()Ljava/util/List;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v4, Lcom/google/android/location/m/a/bl;->c:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v0, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/location/m/a/bn;

    iput-object v1, v4, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    new-instance v7, Lcom/google/android/location/m/a/bn;

    invoke-direct {v7}, Lcom/google/android/location/m/a/bn;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/location/m/a/bn;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/location/m/a/bn;->a:Ljava/lang/Integer;

    iget-object v8, v4, Lcom/google/android/location/m/a/bl;->d:[Lcom/google/android/location/m/a/bn;

    add-int/lit8 v0, v1, 0x1

    aput-object v7, v8, v1

    move v1, v0

    goto :goto_2

    :cond_7
    move-object v0, v4

    goto/16 :goto_1

    :cond_8
    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    goto/16 :goto_0
.end method
