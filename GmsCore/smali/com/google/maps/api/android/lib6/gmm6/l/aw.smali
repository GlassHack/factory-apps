.class final Lcom/google/maps/api/android/lib6/gmm6/l/aw;
.super Lcom/google/maps/api/android/lib6/gmm6/l/bj;


# instance fields
.field private final F:Z


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ax;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bk;B)V

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ax;->a:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/aw;->F:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ax;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aw;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ax;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/aw;->F:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p2, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne p2, v0, :cond_3

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1

    :cond_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p2, v0, :cond_2

    and-int/lit16 p1, p1, -0x1a07

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x3e99999a    # 0.3f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
