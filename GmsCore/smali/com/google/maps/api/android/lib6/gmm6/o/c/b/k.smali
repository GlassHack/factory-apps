.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

.field private final h:[F

.field private i:J

.field private j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->h:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->i:J

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->b()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    instance-of v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->a:[B

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->a([B)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->b:[Ljava/lang/String;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->c:[Ljava/lang/String;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->e:[Ljava/lang/String;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->e:I

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->f:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->d:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->e:[Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->f:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-nez v0, :cond_0

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-ne v0, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->i:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->i:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->h:[F

    invoke-virtual {p2, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->h:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->h:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->h:[F

    invoke-static {p1, p2, v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F[F)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->h:[F

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :cond_4
    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/g;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 1

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->d()V

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->f:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final i()I
    .locals 2

    const/16 v0, 0x88

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x88

    :cond_0
    return v0
.end method
