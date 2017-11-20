.class final Lcom/google/android/location/f/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/DataInput;)Lcom/google/android/location/f/ay;
    .locals 8

    .prologue
    .line 180
    :try_start_0
    sget-object v1, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    invoke-interface {v1, p0}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/location/f/ak;

    move-object v5, v0

    .line 181
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 182
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 184
    new-instance v1, Lcom/google/android/location/f/ay;

    iget v2, v5, Lcom/google/android/location/f/ak;->d:I

    iget v3, v5, Lcom/google/android/location/f/ak;->e:I

    iget v4, v5, Lcom/google/android/location/f/ak;->f:I

    iget v5, v5, Lcom/google/android/location/f/ak;->g:I

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/f/ay;-><init>(IIIII)V

    .line 186
    invoke-static {v1, v7}, Lcom/google/android/location/f/ay;->a(Lcom/google/android/location/f/ay;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object v1

    .line 188
    :catch_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Lcom/google/android/location/f/az;->b(Ljava/io/DataInput;)Lcom/google/android/location/f/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 173
    check-cast p1, Lcom/google/android/location/f/ay;

    :try_start_0
    sget-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    iget v0, p1, Lcom/google/android/location/f/ay;->a:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-static {p1}, Lcom/google/android/location/f/ay;->a(Lcom/google/android/location/f/ay;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method
