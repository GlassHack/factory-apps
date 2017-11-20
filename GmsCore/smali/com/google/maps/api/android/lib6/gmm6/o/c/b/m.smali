.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# instance fields
.field protected final a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

.field protected final b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field protected final c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

.field public d:F

.field public e:F

.field protected final f:I

.field public g:Z

.field protected h:Z

.field i:Z

.field protected j:Z

.field protected k:I


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/x;FFIZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->i:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->k:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->d:F

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->e:F

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->f:I

    iput-boolean p7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    iput-boolean p8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->i:Z

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/x;FIIF)F
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->f()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, p4

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(F)I
    .locals 6

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    cmpl-float v0, p0, v4

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    sub-float v4, p0, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method

.method static a(II)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 3

    const/high16 v0, -0x1000000

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/n;->a:[I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->d()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_1

    :pswitch_1
    const v0, -0x3f3f40

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x4d

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x97

    add-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/n;->a:[I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->e()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, -0x60000000

    goto :goto_0

    :pswitch_1
    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v0

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(II)I

    move-result v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(I)I

    move-result v0

    const/16 v2, 0xc0

    if-lt v0, v2, :cond_1

    const v0, 0x808080

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const v0, 0xffffff

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->m()Lcom/google/maps/api/android/lib6/gmm6/l/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public abstract k()F
.end method

.method public abstract m()Lcom/google/maps/api/android/lib6/gmm6/l/q;
.end method

.method public final n()Lcom/google/maps/api/android/lib6/gmm6/o/e/b;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->c:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->f:I

    return v0
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public final q()Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    return-object v0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->h:Z

    return-void
.end method
