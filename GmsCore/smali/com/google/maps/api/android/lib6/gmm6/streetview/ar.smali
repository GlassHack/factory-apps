.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/nio/FloatBuffer;

.field private final b:I

.field private final c:I

.field private final d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([F)V
    .locals 1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a(I)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;-><init>([F[B)V

    return-void
.end method

.method private constructor <init>([F[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;-><init>([F[B[B)V

    return-void
.end method

.method private constructor <init>([F[B[B)V
    .locals 4

    const/16 v3, 0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a:Ljava/nio/FloatBuffer;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->b:I

    array-length v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->c:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->b:I

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->c:I

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only up to 256 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->d:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a([B)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method private static a(I)[B
    .locals 3

    new-array v1, p0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->a:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->b:I

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ar;->d:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method
