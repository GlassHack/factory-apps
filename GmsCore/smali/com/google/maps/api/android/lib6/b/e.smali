.class public final Lcom/google/maps/api/android/lib6/b/e;
.super Lcom/google/g/a/c;


# static fields
.field private static e:[Ljava/lang/String;

.field private static volatile f:Ljava/lang/Boolean;


# instance fields
.field private g:Landroid/content/Context;

.field private h:I

.field private i:F

.field private final j:F

.field private final k:F

.field private final l:Lcom/google/g/a/b/b/f;

.field private m:Lcom/google/maps/api/android/lib6/b/r;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/g/a/c;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit or feature test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/b/e;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 11

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/g/a/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/e;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->m:Lcom/google/maps/api/android/lib6/b/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/b/r;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/r;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->m:Lcom/google/maps/api/android/lib6/b/r;

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->i:F

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->h:I

    int-to-float v0, v0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_1

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    :cond_1
    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->j:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->k:F

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->m:Lcom/google/maps/api/android/lib6/b/r;

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/b/r;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/b/e;->m:Lcom/google/maps/api/android/lib6/b/r;

    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->e:[Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "en ar bg ca cs da de el en_GB es es_MX et fi fr hr hu it iw ja ko lt lv nl no pl pt_BR pt_PT ro ru sk sl sr sv tl tr uk vi zh zh_CN"

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_7

    move v1, v3

    :goto_2
    if-nez v1, :cond_a

    new-instance v7, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v8, v0

    move v4, v2

    :goto_3
    if-ge v4, v8, :cond_9

    aget-object v9, v0, v4

    invoke-static {v9}, Lcom/google/maps/api/android/lib6/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/b/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "ar"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "fa"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "iw"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    move v1, v3

    :goto_4
    if-nez v1, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->h:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->i:F

    goto/16 :goto_0

    :cond_5
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->j:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->k:F

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->j:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/e;->k:F

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_a
    sput-object v0, Lcom/google/maps/api/android/lib6/b/e;->e:[Ljava/lang/String;

    :cond_b
    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->e:[Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/google/maps/api/android/lib6/b/r;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/b/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/b/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/b/r;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/maps/b/a/e;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x3

    invoke-static {}, Lcom/google/d/a/a/a;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x4

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/b/e;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/16 v1, 0x8

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/maps/api/android/lib6/b/e;->i:F

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(IF)Lcom/google/g/a/b/b/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->l:Lcom/google/g/a/b/b/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/b/e;
    .locals 2

    sget-object v1, Lcom/google/maps/api/android/lib6/b/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/b/e;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/b/e;

    invoke-static {v0}, Lcom/google/g/a/e/k;->a(Z)V

    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    check-cast v0, Lcom/google/maps/api/android/lib6/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static e()Lcom/google/maps/api/android/lib6/b/e;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    check-cast v0, Lcom/google/maps/api/android/lib6/b/e;

    return-object v0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->a:Lcom/google/g/a/c;

    check-cast v0, Lcom/google/maps/api/android/lib6/b/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/e;->m:Lcom/google/maps/api/android/lib6/b/r;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/r;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    const-string v0, "6.18.0"

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->d:Lcom/google/g/a/d;

    return-object v0
.end method

.method public final h()Lcom/google/g/a/e;
    .locals 2

    new-instance v0, Lcom/google/g/a/e;

    iget-object v1, p0, Lcom/google/g/a/c;->b:Lcom/google/g/a/b/x;

    invoke-direct {v0, v1}, Lcom/google/g/a/e;-><init>(Lcom/google/g/a/b/x;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->h:I

    return v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->j:F

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->k:F

    return v0
.end method

.method public final l()D
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->i:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/e;->h:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 4

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iget v2, p0, Lcom/google/maps/api/android/lib6/b/e;->i:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/g/a/e/p;->a(D)I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/b/e;->f:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/e;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final s()Lcom/google/g/a/b/b/f;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/e;->l:Lcom/google/g/a/b/b/f;

    return-object v0
.end method
