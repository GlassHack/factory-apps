.class final Lcom/google/maps/api/android/lib6/gmm6/l/bc;
.super Lcom/google/maps/api/android/lib6/gmm6/l/bj;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bk;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/bd;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/bc;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/bd;)V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    invoke-interface {p1, v0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    return-void
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
