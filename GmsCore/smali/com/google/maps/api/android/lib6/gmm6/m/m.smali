.class final Lcom/google/maps/api/android/lib6/gmm6/m/m;
.super Lcom/google/maps/api/android/lib6/gmm6/m/b;


# instance fields
.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/m/l;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->f:Lcom/google/maps/api/android/lib6/gmm6/m/l;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/a;)V

    return-void
.end method


# virtual methods
.method protected final b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/m;->i()I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->b:[[B

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->f:Lcom/google/maps/api/android/lib6/gmm6/m/l;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/m/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cu;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I[BLcom/google/maps/api/android/lib6/gmm6/l/av;)V

    goto :goto_0
.end method

.method protected final c(I)[B
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->b:[[B

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->b:[[B

    aget-object v2, v2, p1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/m;->i()I

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/m;->b:[[B

    aget-object v4, v4, p1

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v6, 0x44524154

    invoke-interface {v5, v6}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Ljava/io/DataOutput;)V

    invoke-static {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    const/16 v2, 0x100

    invoke-static {v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    const/16 v2, 0x100

    invoke-static {v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    array-length v2, v4

    invoke-static {v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    invoke-interface {v5, v4}, Ljava/io/DataOutput;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
