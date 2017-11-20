.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/an;
.super Ljava/lang/Object;


# instance fields
.field public final a:[F

.field public final b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b:[F

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 2

    instance-of v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->glMatrixMode(I)V

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a([F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gl must be GLMatrixWrapper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v0, 0x1700

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a:[F

    invoke-static {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    return-void
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v0, 0x1701

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b:[F

    invoke-static {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    return-void
.end method
