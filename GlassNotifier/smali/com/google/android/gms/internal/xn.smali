.class public abstract Lcom/google/android/gms/internal/xn;
.super Lcom/google/android/gms/internal/xt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/xn",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/xt;"
    }
.end annotation


# instance fields
.field protected aYT:Lcom/google/android/gms/internal/xp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/xl;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/xl;->mj(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/xw;->mE(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xl;->C(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/xv;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/xv;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/xp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/xp;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/xq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xq;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/xp;->a(ILcom/google/android/gms/internal/xq;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/xq;->a(Lcom/google/android/gms/internal/xv;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xp;->mA(I)Lcom/google/android/gms/internal/xq;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/xn;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xp;->isEmpty()Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    iget-object v1, p1, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xp;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/xp;->mB(I)Lcom/google/android/gms/internal/xq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xq;->c()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public clone()Lcom/google/android/gms/internal/xn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/xt;->clone()Lcom/google/android/gms/internal/xt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xn;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/xr;->a(Lcom/google/android/gms/internal/xn;Lcom/google/android/gms/internal/xn;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/android/gms/internal/xt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xn;->clone()Lcom/google/android/gms/internal/xn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xn;->clone()Lcom/google/android/gms/internal/xn;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/android/gms/internal/xo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/xo",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/xn;, "Lcom/google/android/gms/internal/xn<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/xo;, "Lcom/google/android/gms/internal/xo<TM;TT;>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    iget v2, p1, Lcom/google/android/gms/internal/xo;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/xw;->mE(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xp;->mA(I)Lcom/google/android/gms/internal/xq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/xq;->a(Lcom/google/android/gms/internal/xo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final hasExtension(Lcom/google/android/gms/internal/xo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xo",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/xn;, "Lcom/google/android/gms/internal/xn<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/xo;, "Lcom/google/android/gms/internal/xo<TM;*>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    iget v2, p1, Lcom/google/android/gms/internal/xo;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/xw;->mE(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xp;->mA(I)Lcom/google/android/gms/internal/xq;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setExtension(Lcom/google/android/gms/internal/xo;Ljava/lang/Object;)Lcom/google/android/gms/internal/xn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/xo",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/xn;, "Lcom/google/android/gms/internal/xn<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/xo;, "Lcom/google/android/gms/internal/xo<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/xo;->tag:I

    invoke-static {v1}, Lcom/google/android/gms/internal/xw;->mE(I)I

    move-result v1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/xp;->remove(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/xp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/xp;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    new-instance v2, Lcom/google/android/gms/internal/xq;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/xq;-><init>(Lcom/google/android/gms/internal/xo;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xp;->a(ILcom/google/android/gms/internal/xq;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xp;->mA(I)Lcom/google/android/gms/internal/xq;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/xq;->a(Lcom/google/android/gms/internal/xo;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final wl()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Lcom/google/android/gms/internal/xm;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/xm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/xn;, "Lcom/google/android/gms/internal/xn<TM;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xp;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/xn;->aYT:Lcom/google/android/gms/internal/xp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/xp;->mB(I)Lcom/google/android/gms/internal/xq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/xq;->writeTo(Lcom/google/android/gms/internal/xm;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
