.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static final i:Ljava/util/Map;


# instance fields
.field private volatile c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private final e:[B

.field private f:Lcom/google/maps/api/android/lib6/gmm6/b/e;

.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->i:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>([BLjava/util/Set;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->e:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->h:J

    return-void
.end method

.method public static a([B)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;-><init>([BLjava/util/Set;)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/ca;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;
    .locals 7

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ca;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/o;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->b:[I

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v3, v1

    if-ltz v5, :cond_0

    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-object v5, p0, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->a:[B

    invoke-direct {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;-><init>([BLjava/util/Set;)V

    return-object v1
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method private d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->e:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v7, 0x10000

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->h()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :goto_1
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_1
    const/16 v1, 0x4e20

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->h:J

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/b/g;->a:Lcom/google/maps/api/android/lib6/gmm6/b/g;

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->f:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    move-object v2, v8

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/16 v4, 0x8

    invoke-direct {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    const/high16 v4, 0x47800000    # 65536.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0, v10, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    invoke-virtual {v0, v10, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    invoke-virtual {v0, v4, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    invoke-virtual {v0, v4, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->f:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->f:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I

    move-result v0

    if-ne v0, v7, :cond_4

    iput-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->f:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iput-boolean v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    :cond_4
    :goto_3
    invoke-interface {v1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-interface {v1, v0, v10, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_3

    :cond_6
    move-object v2, v9

    goto/16 :goto_0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b()I
    .locals 2

    const/16 v0, 0x60

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->e:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->e:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x60

    :cond_0
    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/al;->g:Z

    return-void
.end method
