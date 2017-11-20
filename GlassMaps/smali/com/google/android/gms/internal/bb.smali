.class public abstract Lcom/google/android/gms/internal/bb;
.super Lcom/google/android/gms/internal/bk;


# instance fields
.field protected a:Lcom/google/android/gms/internal/bf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bk;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bf;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/bf;->a(I)Lcom/google/android/gms/internal/bg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bg;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public a(Lcom/google/android/gms/internal/gx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bf;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bf;->a(I)Lcom/google/android/gms/internal/bg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/gx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/bb;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    iget-object v1, p1, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bf;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Lcom/google/android/gms/internal/bf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->hashCode()I

    move-result v0

    goto :goto_0
.end method
