.class public final Lcom/google/j/a/a/a/a/b;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bb;-><init>()V

    invoke-direct {p0}, Lcom/google/j/a/a/a/a/b;->e()Lcom/google/j/a/a/a/a/b;

    return-void
.end method

.method private e()Lcom/google/j/a/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/bo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/bo;->a:[I

    iput-object v0, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/a/a/a/a/b;->a:Lcom/google/android/gms/internal/bf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/j/a/a/a/a/b;->b:I

    return-object p0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/bb;->a()I

    move-result v4

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/gx;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/gx;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/gx;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/gx;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gx;->a(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gx;->a(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gx;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/j/a/a/a/a/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/j/a/a/a/a/b;

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/bi;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/bi;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    iget-object v2, p1, Lcom/google/j/a/a/a/a/b;->e:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/bi;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/j/a/a/a/a/b;->a(Lcom/google/android/gms/internal/bb;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/j/a/a/a/a/b;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/bi;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/bi;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/j/a/a/a/a/b;->e:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/bi;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/j/a/a/a/a/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
