.class public abstract Lcom/google/android/gms/internal/gy;
.super Lcom/google/android/gms/internal/he;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/gy",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/he;"
    }
.end annotation


# instance fields
.field protected XC:Lcom/google/android/gms/internal/ha;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/he;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/gw;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gw;->ex(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/hh;->eS(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gw;->g(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/hg;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/hg;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ha;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ha;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/hb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hb;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ha;->a(ILcom/google/android/gms/internal/hb;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hg;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ha;->eO(I)Lcom/google/android/gms/internal/hb;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/gy;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ha;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ha;->isEmpty()Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    iget-object v1, p1, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ha;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ha;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ha;->eP(I)Lcom/google/android/gms/internal/hb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hb;->b()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final getExtension(Lcom/google/android/gms/internal/gz;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gz",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/gy;, "Lcom/google/android/gms/internal/gy<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/gz;, "Lcom/google/android/gms/internal/gz<TM;TT;>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    iget v2, p1, Lcom/google/android/gms/internal/gz;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/hh;->eS(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ha;->eO(I)Lcom/google/android/gms/internal/hb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/gz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final hasExtension(Lcom/google/android/gms/internal/gz;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gz",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/gy;, "Lcom/google/android/gms/internal/gy<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/gz;, "Lcom/google/android/gms/internal/gz<TM;*>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    iget v2, p1, Lcom/google/android/gms/internal/gz;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/hh;->eS(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ha;->eO(I)Lcom/google/android/gms/internal/hb;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final iY()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ha;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ha;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final setExtension(Lcom/google/android/gms/internal/gz;Ljava/lang/Object;)Lcom/google/android/gms/internal/gy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gz",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/gy;, "Lcom/google/android/gms/internal/gy<TM;>;"
    .local p1, "extension":Lcom/google/android/gms/internal/gz;, "Lcom/google/android/gms/internal/gz<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/gz;->tag:I

    invoke-static {v1}, Lcom/google/android/gms/internal/hh;->eS(I)I

    move-result v1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ha;->remove(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ha;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ha;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ha;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    new-instance v2, Lcom/google/android/gms/internal/hb;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/hb;-><init>(Lcom/google/android/gms/internal/gz;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ha;->a(ILcom/google/android/gms/internal/hb;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ha;->eO(I)Lcom/google/android/gms/internal/hb;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/gz;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/gy;, "Lcom/google/android/gms/internal/gy<TM;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ha;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gy;->XC:Lcom/google/android/gms/internal/ha;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ha;->eP(I)Lcom/google/android/gms/internal/hb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/hb;->writeTo(Lcom/google/android/gms/internal/gx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
