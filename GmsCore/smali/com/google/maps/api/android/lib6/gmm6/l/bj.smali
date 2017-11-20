.class Lcom/google/maps/api/android/lib6/gmm6/l/bj;
.super Lcom/google/maps/api/android/lib6/gmm6/l/av;


# instance fields
.field private final F:Z


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;B)V

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/bk;->i:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bj;->F:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bk;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/bj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bk;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/o;Landroid/content/res/Resources;Ljava/util/Locale;Ljava/io/File;ZZ)Lcom/google/maps/api/android/lib6/gmm6/m/y;
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/bj;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->g()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->D:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    :goto_1
    const/16 v1, 0x100

    invoke-static {p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->u:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq p0, v1, :cond_0

    if-eqz p5, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->E:Z

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->A:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->e:Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IFLjava/util/Locale;ZLjava/io/File;Lcom/google/maps/api/android/lib6/gmm6/m/ad;)V

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/m/ae;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IFLjava/util/Locale;ZLjava/io/File;)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->f:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p0, v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->k()V

    :cond_6
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bj;->F:Z

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/g;->a()Lcom/google/maps/api/android/lib6/gmm6/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/g;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bl;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bl;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    return-object v0
.end method
