.class public final Lcom/google/j/a/a/a/a/c;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bb;-><init>()V

    invoke-direct {p0}, Lcom/google/j/a/a/a/a/c;->e()Lcom/google/j/a/a/a/a/c;

    return-void
.end method

.method private e()Lcom/google/j/a/a/a/a/c;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/j/a/a/a/a/c;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/a/a/a/a/c;->a:Lcom/google/android/gms/internal/bf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/j/a/a/a/a/c;->b:I

    return-object p0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/bb;->a()I

    move-result v0

    iget v1, p0, Lcom/google/j/a/a/a/a/c;->c:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/j/a/a/a/a/c;->c:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/gx;)V
    .locals 2

    iget v0, p0, Lcom/google/j/a/a/a/a/c;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/j/a/a/a/a/c;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(ILjava/lang/String;)V

    :cond_2
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
    instance-of v1, p1, Lcom/google/j/a/a/a/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/j/a/a/a/a/c;

    iget v1, p0, Lcom/google/j/a/a/a/a/c;->c:I

    iget v2, p1, Lcom/google/j/a/a/a/a/c;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/j/a/a/a/a/c;->a(Lcom/google/android/gms/internal/bb;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/j/a/a/a/a/c;->c:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/j/a/a/a/a/c;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/j/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/j/a/a/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
