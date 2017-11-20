.class public abstract Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.super Ljava/lang/Object;
.source "DrawableGL.java"


# instance fields
.field protected mChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/lightcycle/opengl/DrawableGL;",
            ">;"
        }
    .end annotation
.end field

.field protected mGlobalMatrix:[F

.field protected mIndices:Ljava/nio/ShortBuffer;

.field protected mLocalMatrix:[F

.field protected final mParent:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

.field protected mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

.field protected mTexCoords:Ljava/nio/FloatBuffer;

.field protected mTextures:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/lightcycle/opengl/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field protected mVertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 31
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 32
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mGlobalMatrix:[F

    .line 42
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 45
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mParent:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V
    .locals 3
    .param p1, "parent"    # Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 31
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 32
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    .line 38
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    .line 39
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mGlobalMatrix:[F

    .line 42
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 45
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mParent:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .line 61
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V
    .locals 1
    .param p1, "child"    # Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public draw([F)V
    .locals 7
    .param p1, "parentTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mGlobalMatrix:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 100
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/apps/lightcycle/opengl/DrawableGL;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mGlobalMatrix:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->draw([F)V

    goto :goto_0

    .line 105
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/apps/lightcycle/opengl/DrawableGL;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mGlobalMatrix:[F

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->drawObject([F)V

    .line 106
    return-void
.end method

.method public abstract drawObject([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation
.end method

.method public getMatrix()[F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mLocalMatrix:[F

    return-object v0
.end method

.method public getNumTextures()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getShader()Lcom/google/android/apps/lightcycle/opengl/Shader;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    return-object v0
.end method

.method public getTexture(I)Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    .locals 1
    .param p1, "texId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    return-object v0
.end method

.method protected initGeometry(IIZ)V
    .locals 2
    .param p1, "numVertices"    # I
    .param p2, "numIndices"    # I
    .param p3, "allocateTextureCoords"    # Z

    .prologue
    .line 157
    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 160
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    .line 163
    if-eqz p3, :cond_0

    .line 165
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 168
    :cond_0
    return-void
.end method

.method protected putIndex(IS)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # S

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 194
    return-void
.end method

.method protected putVertex(IFFF)V
    .locals 3
    .param p1, "vertexIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 180
    mul-int/lit8 v0, p1, 0x3

    .line 181
    .local v0, "index":I
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {v2, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v2, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 183
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v2, v0, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 184
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/apps/lightcycle/opengl/DrawableGL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->remove()V

    goto :goto_0

    .line 127
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/apps/lightcycle/opengl/DrawableGL;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mTextures:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mParent:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mParent:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->removeChild(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V

    .line 135
    :cond_2
    return-void
.end method

.method public removeChild(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V
    .locals 1
    .param p1, "child"    # Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V
    .locals 0
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 86
    return-void
.end method
