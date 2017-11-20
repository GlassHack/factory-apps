.class public abstract Lcom/google/glass/maps/map/TextureProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final maxTexX:F

.field private final maxTexY:F

.field private texture:Lcom/google/glass/maps/opengl/Texture;

.field protected final textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;


# direct methods
.method protected constructor <init>(Lcom/google/glass/maps/opengl/TextureAllocator;II)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/maps/map/TextureProvider;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    .line 23
    iput p2, p0, Lcom/google/glass/maps/map/TextureProvider;->dataWidth:I

    .line 24
    iput p3, p0, Lcom/google/glass/maps/map/TextureProvider;->dataHeight:I

    .line 28
    int-to-float v0, p2

    invoke-static {p2}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/map/TextureProvider;->maxTexX:F

    .line 29
    int-to-float v0, p3

    invoke-static {p3}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/map/TextureProvider;->maxTexY:F

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract createTexture()Lcom/google/glass/maps/opengl/Texture;
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    .line 38
    :cond_0
    return-void
.end method

.method public getDataHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/glass/maps/map/TextureProvider;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/glass/maps/map/TextureProvider;->dataWidth:I

    return v0
.end method

.method public getMaxTexX()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/glass/maps/map/TextureProvider;->maxTexX:F

    return v0
.end method

.method public getMaxTexY()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/glass/maps/map/TextureProvider;->maxTexY:F

    return v0
.end method

.method public getTexture()Lcom/google/glass/maps/opengl/Texture;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/maps/map/TextureProvider;->createTexture()Lcom/google/glass/maps/opengl/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/TextureProvider;->texture:Lcom/google/glass/maps/opengl/Texture;

    return-object v0
.end method
