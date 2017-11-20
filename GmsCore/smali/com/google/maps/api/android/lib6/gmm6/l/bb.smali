.class final Lcom/google/maps/api/android/lib6/gmm6/l/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/l/av;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bb;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BIJJ)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 5

    new-instance v0, Lcom/google/g/a/b/c/a;

    invoke-direct {v0, p2}, Lcom/google/g/a/b/c/a;-><init>([B)V

    invoke-virtual {v0, p3}, Lcom/google/g/a/b/c/a;->skipBytes(I)I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bb;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    const v3, 0x44524154

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TILE_MAGIC expected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Version mismatch: 7 or 8 expected, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected tile coords: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but received "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cu;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I[BLcom/google/maps/api/android/lib6/gmm6/l/av;)V

    return-object v0
.end method
