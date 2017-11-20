.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

.field final b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method
