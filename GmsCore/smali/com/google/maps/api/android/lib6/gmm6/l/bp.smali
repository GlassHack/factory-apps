.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bp;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method constructor <init>([I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/bp;
    .locals 4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed TriangleList, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p0, p1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;-><init>([I[I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public final a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    aget v0, v0, v1

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    aget v0, v0, v1

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/cm;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    aput-object v3, v2, v7

    aget-object v3, v2, v1

    aget-object v4, v2, v6

    aget-object v5, v2, v7

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/k;

    invoke-direct {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/k;-><init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    array-length v1, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1c

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
