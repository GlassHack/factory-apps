.class final Lcom/google/maps/api/android/lib6/gmm6/l/bg;
.super Lcom/google/maps/api/android/lib6/gmm6/l/av;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ay;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bh;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/bg;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bh;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/o;Landroid/content/res/Resources;Ljava/util/Locale;Ljava/io/File;ZZ)Lcom/google/maps/api/android/lib6/gmm6/m/y;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/v;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/m/v;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Locale;Ljava/io/File;)V

    return-object v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->f()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    const/16 v2, 0x80

    mul-int/lit8 v1, v1, 0x12

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ah;-><init>(I)V

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bi;-><init>(B)V

    return-object v0
.end method
