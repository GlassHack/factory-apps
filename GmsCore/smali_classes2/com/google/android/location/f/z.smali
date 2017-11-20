.class final Lcom/google/android/location/f/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/DataInput;)Lcom/google/android/location/f/y;
    .locals 6

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/google/android/location/f/aa;->values()[Lcom/google/android/location/f/aa;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    sget-object v2, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v1, v2, :cond_0

    .line 92
    sget-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    invoke-interface {v0, p0}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    .line 94
    :cond_0
    new-instance v2, Lcom/google/android/location/f/y;

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/google/android/location/f/y;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V

    return-object v2

    .line 89
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid status"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/android/location/f/z;->b(Ljava/io/DataInput;)Lcom/google/android/location/f/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 81
    check-cast p1, Lcom/google/android/location/f/y;

    iget-object v0, p1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-virtual {v0}, Lcom/google/android/location/f/aa;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    sget-object v1, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    iget-object v1, p1, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-interface {v0, v1, p2}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :cond_0
    iget-wide v0, p1, Lcom/google/android/location/f/y;->e:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method
