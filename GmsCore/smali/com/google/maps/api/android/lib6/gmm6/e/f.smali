.class public final Lcom/google/maps/api/android/lib6/gmm6/e/f;
.super Lcom/google/maps/api/android/lib6/gmm6/e/a;


# static fields
.field private static final e:Lcom/google/maps/api/android/lib6/gmm6/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/g;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xa

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/a;-><init>(IILcom/google/maps/api/android/lib6/gmm6/e/e;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    :goto_1
    const/16 v4, 0x400

    if-ge v3, v4, :cond_0

    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    :goto_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(Ljava/nio/IntBuffer;)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/16 v3, 0x400

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :cond_1
    return-void
.end method

.method public final a(Ljava/nio/ShortBuffer;I)V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v3, v2

    :goto_1
    const/16 v4, 0x400

    if-ge v3, v4, :cond_0

    aget v4, v0, v3

    div-int/2addr v4, p2

    int-to-short v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    :goto_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v2

    div-int/2addr v0, p2

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
