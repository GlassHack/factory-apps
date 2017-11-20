.class public Lcom/google/glass/maps/opengl/GLBuffer$Float;
.super Lcom/google/glass/maps/opengl/GLBuffer;
.source "SourceFile"


# instance fields
.field private final mBuffer:Ljava/nio/FloatBuffer;

.field private final mTmp:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/GLBuffer;-><init>(IILcom/google/glass/maps/opengl/GLBuffer$1;)V

    .line 87
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    .line 91
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 113
    return-void
.end method

.method public add(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    aput p1, v0, v3

    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 119
    return-void
.end method

.method public add(FFF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    aput p1, v0, v3

    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 125
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 126
    return-void
.end method

.method public add([F)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 105
    return-void
.end method

.method public add([FII)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 109
    return-void
.end method

.method public addCopied(FI)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    aput p1, v0, v2

    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 132
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 133
    :goto_0
    if-lt p2, v3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 133
    add-int/lit8 p2, p2, -0x4

    goto :goto_0

    .line 136
    :cond_0
    if-lez p2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mTmp:[F

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 139
    :cond_1
    return-void
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Float;->mBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x1406

    return v0
.end method
