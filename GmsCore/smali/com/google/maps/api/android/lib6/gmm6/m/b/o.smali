.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;-><init>(I[B)V

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v0

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    goto :goto_0
.end method

.method final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BIJ)V

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BIJ)V

    add-int/lit8 v1, v1, 0x8

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    shl-int/lit8 v2, v2, 0x5

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->c:I

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x5

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not pack data offset of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v3, v2, 0x1f

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->c:I

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not pack refCount of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v1, v1, 0x4

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    shl-int/lit8 v2, v2, 0x18

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    or-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v1, v1, 0x4

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->f:I

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    return-void
.end method

.method final b()I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    :goto_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d(I)I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v4, v0, 0x14

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e:I

    return v0
.end method

.method final b(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method final c(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method final d(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method final e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;
    .locals 11

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BI)J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v6

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v8

    ushr-int/lit8 v4, v5, 0x5

    and-int/lit8 v7, v5, 0x1f

    ushr-int/lit8 v5, v6, 0x18

    const v0, 0xffffff

    and-int/2addr v6, v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;-><init>(JIIIIIII)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
