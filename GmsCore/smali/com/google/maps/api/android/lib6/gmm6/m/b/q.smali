.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/q;
.super Ljava/lang/Object;


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field final d:[I

.field final e:[I

.field f:I

.field g:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Set;)I
    .locals 4

    const v2, 0x7fffffff

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aget v3, v3, v0

    if-ge v3, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aget v2, v1, v0

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method final a()J
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    aget v1, v1, v0

    int-to-long v6, v1

    :goto_1
    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v6, v4

    goto :goto_1

    :cond_1
    return-wide v2
.end method

.method final a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x2000

    new-array v2, v1, [B

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aget v3, v3, v0

    invoke-static {v2, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v3, v1, 0x4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b([BII)V

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b([BII)V

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v3, -0x10

    const/16 v5, 0x10

    invoke-static {v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([B)V

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v2, v2, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aput v0, v2, v1

    :goto_0
    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d(I)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-lt v1, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    :cond_4
    return-void
.end method

.method final b()I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method final b(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x2000

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->b([B)V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v3

    add-int/lit8 v4, v1, -0x10

    const/16 v5, 0x10

    invoke-static {v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v3, v3, v0

    if-lez v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    :cond_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v3, v3, v0

    if-lez v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method final b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
