.class public Lcom/google/glass/maps/map/RenderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field public static final IDENTITY_MATRIX:[F

.field public static final PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field public static final UNIT_SQUARE_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;


# instance fields
.field private final point0:Lcom/google/android/maps/driveabout/model/ab;

.field private final point1:Lcom/google/android/maps/driveabout/model/ab;

.field private renderThread:Ljava/lang/Thread;

.field private textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 21
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v3, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    sput-object v0, Lcom/google/glass/maps/map/RenderUtil;->UNIT_SQUARE_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 23
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->UNIT_SQUARE_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 24
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->UNIT_SQUARE_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 31
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v3, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    sput-object v0, Lcom/google/glass/maps/map/RenderUtil;->PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 33
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 34
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 40
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    sput-object v0, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 42
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 45
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/glass/maps/map/RenderUtil;->IDENTITY_MATRIX:[F

    .line 51
    sget-object v0, Lcom/google/glass/maps/map/RenderUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 52
    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 33
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 42
    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->point0:Lcom/google/android/maps/driveabout/model/ab;

    .line 58
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->point1:Lcom/google/android/maps/driveabout/model/ab;

    .line 64
    new-instance v0, Lcom/google/glass/maps/opengl/TextureAllocator;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/opengl/TextureAllocator;-><init>(Lcom/google/glass/maps/map/RenderUtil;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    .line 65
    return-void
.end method


# virtual methods
.method public checkOnRenderThread()V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/map/RenderUtil;->renderThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not on the render thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    return-object v0
.end method

.method public setRenderThread()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->renderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Render thread already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->renderThread:Ljava/lang/Thread;

    .line 73
    return-void
.end method

.method public setUpLocalCoordinateSystem([FLcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/ab;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 89
    iget-object v0, p0, Lcom/google/glass/maps/map/RenderUtil;->point0:Lcom/google/android/maps/driveabout/model/ab;

    .line 90
    iget-object v1, p0, Lcom/google/glass/maps/map/RenderUtil;->point1:Lcom/google/android/maps/driveabout/model/ab;

    .line 100
    invoke-virtual {p2, v0}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 101
    invoke-static {p3, v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 102
    invoke-virtual {v1, v1}, Lcom/google/android/maps/driveabout/model/ab;->h(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 103
    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v0

    .line 104
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 105
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 106
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 107
    mul-float/2addr v0, p4

    .line 108
    invoke-static {p1, v4, v2, v3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 109
    invoke-static {p1, v4, v0, v0, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 110
    return-void
.end method
