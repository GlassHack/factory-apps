.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/o/u;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/v;

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:I


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/u;Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/v;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->c:I

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->j()Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->b()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->j:I

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->g()F

    move-result v6

    :cond_0
    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->e:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v3

    :goto_1
    int-to-float v4, p3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FZF)[F

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/u;->c:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    if-ne p5, v1, :cond_3

    aget v1, v0, v7

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->f:F

    :goto_2
    aget v1, v0, v5

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->g:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->h:F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->i:F

    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    aget v1, v0, v7

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->f:F

    goto :goto_2
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->f:F

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->e:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v3

    :goto_0
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v5, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v6, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v6

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->j:I

    invoke-virtual/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v6

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->j:I

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p2, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->j:I

    const/16 v0, 0xff

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(II)I

    move-result v0

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(I)I

    move-result v1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_2

    :goto_0
    move v6, v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->a:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->e:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v4

    :goto_1
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->c:I

    int-to-float v5, v1

    iget v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->j:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    return-object v0

    :cond_2
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->g:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->h:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->i:F

    return v0
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->g:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/t;->i:F

    sub-float/2addr v0, v1

    return v0
.end method
