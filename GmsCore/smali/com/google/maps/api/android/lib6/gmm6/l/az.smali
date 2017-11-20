.class final Lcom/google/maps/api/android/lib6/gmm6/l/az;
.super Lcom/google/maps/api/android/lib6/gmm6/l/av;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ba;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ba;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/az;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ba;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/o;Landroid/content/res/Resources;Ljava/util/Locale;Ljava/io/File;ZZ)Lcom/google/maps/api/android/lib6/gmm6/m/y;
    .locals 8

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-le v0, v3, :cond_0

    const/4 v3, 0x3

    :goto_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p0, v0, :cond_1

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;)I

    move-result v4

    :goto_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    :goto_2
    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/l/az;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p0, v6, :cond_6

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    :goto_3
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/l;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/m/l;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IIFLjava/util/Locale;Ljava/io/File;)V

    return-object v0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v4

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    cmpl-float v5, v0, v5

    if-nez v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_3

    :cond_5
    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v0

    goto :goto_3
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bb;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    return-object v0
.end method
