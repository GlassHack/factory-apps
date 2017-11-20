.class abstract Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;
.super Lcom/google/glass/maps/opengl/GLBuffer;
.source "SourceFile"


# instance fields
.field private final mBuffer:Ljava/nio/IntBuffer;

.field private final mTmp:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/GLBuffer;-><init>(IILcom/google/glass/maps/opengl/GLBuffer$1;)V

    .line 145
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    .line 149
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    .line 152
    return-void
.end method


# virtual methods
.method public add([I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 161
    return-void
.end method

.method public add([III)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 165
    return-void
.end method

.method public addQuadIndices(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    aput p1, v0, v3

    .line 181
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 183
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 184
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x5

    aput p4, v0, v1

    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 187
    return-void
.end method

.method public addTriangleIndices(III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    aput p1, v0, v3

    .line 170
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mTmp:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 173
    return-void
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->mBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method
