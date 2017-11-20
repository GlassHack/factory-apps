.class public Lcom/google/android/apps/lightcycle/opengl/CurvedTile;
.super Ljava/lang/Object;
.source "CurvedTile.java"


# instance fields
.field private indices:Ljava/nio/ShortBuffer;

.field private final numIndices:I

.field private final numVertices:I

.field private texCoords:Ljava/nio/FloatBuffer;

.field public final textureId:I

.field private vertIndex:I

.field private vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 12
    .param p1, "textureId"    # I
    .param p2, "tesselationFactor"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertIndex:I

    .line 43
    iput p1, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->textureId:I

    .line 45
    add-int/lit8 v6, p2, 0x1

    .line 46
    .local v6, "verticesPerEdge":I
    mul-int v9, v6, v6

    iput v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numVertices:I

    .line 49
    add-int/lit8 v9, v6, -0x1

    add-int/lit8 v10, v6, -0x1

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    mul-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numIndices:I

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->initBuffers()V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "index":I
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    add-int/lit8 v9, v6, -0x1

    if-ge v8, v9, :cond_1

    .line 55
    mul-int v2, v8, v6

    .line 56
    .local v2, "rowStart":I
    const/4 v7, 0x0

    .local v7, "x":I
    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v7, v9, :cond_0

    .line 57
    add-int v5, v2, v7

    .line 73
    .local v5, "vertexIndex":I
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    add-int/lit8 v10, v5, 0x0

    int-to-short v10, v10

    invoke-virtual {v9, v1, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 74
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    add-int/lit8 v10, v5, 0x1

    int-to-short v10, v10

    invoke-virtual {v9, v0, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 75
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    add-int v10, v5, v6

    int-to-short v10, v10

    invoke-virtual {v9, v1, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 76
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    add-int v10, v5, v6

    int-to-short v10, v10

    invoke-virtual {v9, v0, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 77
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    add-int/lit8 v10, v5, 0x1

    int-to-short v10, v10

    invoke-virtual {v9, v1, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 78
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    add-int v10, v5, v6

    add-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    invoke-virtual {v9, v0, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 54
    .end local v5    # "vertexIndex":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 84
    .end local v2    # "rowStart":I
    .end local v7    # "x":I
    :cond_1
    const/4 v0, 0x0

    .line 85
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_3

    .line 86
    const/4 v7, 0x0

    .restart local v7    # "x":I
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_3
    if-ge v7, v6, :cond_2

    .line 87
    int-to-float v9, v7

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 88
    .local v3, "u":F
    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v8

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float v4, v9, v10

    .line 89
    .local v4, "v":F
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->texCoords:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v9, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 90
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->texCoords:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v9, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 85
    .end local v3    # "u":F
    .end local v4    # "v":F
    :cond_2
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_2

    .line 93
    .end local v7    # "x":I
    :cond_3
    return-void
.end method

.method private initBuffers()V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertices:Ljava/nio/FloatBuffer;

    .line 128
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numVertices:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->texCoords:Ljava/nio/FloatBuffer;

    .line 130
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numIndices:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    .line 132
    return-void
.end method


# virtual methods
.method public draw(Lcom/google/android/apps/lightcycle/opengl/Shader;)V
    .locals 4
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->texCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->numIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->indices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 118
    return-void
.end method

.method public putVertex(Lcom/google/android/apps/lightcycle/opengl/Vertex;)V
    .locals 2
    .param p1, "vertex"    # Lcom/google/android/apps/lightcycle/opengl/Vertex;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertices:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Vertex;->addToBuffer(Ljava/nio/FloatBuffer;I)V

    .line 100
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertIndex:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->vertIndex:I

    .line 101
    return-void
.end method
