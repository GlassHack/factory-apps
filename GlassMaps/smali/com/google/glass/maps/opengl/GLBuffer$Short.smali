.class public Lcom/google/glass/maps/opengl/GLBuffer$Short;
.super Lcom/google/glass/maps/opengl/GLBuffer;
.source "SourceFile"


# instance fields
.field private final mBuffer:Ljava/nio/ShortBuffer;

.field private final mTmp:[S


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/GLBuffer;-><init>(IILcom/google/glass/maps/opengl/GLBuffer$1;)V

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    .line 234
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 235
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mBuffer:Ljava/nio/ShortBuffer;

    .line 237
    return-void
.end method


# virtual methods
.method public addQuadIndices(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    int-to-short v1, p1

    aput-short v1, v0, v3

    .line 255
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v1, 0x1

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 256
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v1, 0x2

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v1, 0x3

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 258
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v1, 0x4

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v1, 0x5

    int-to-short v2, p4

    aput-short v2, v0, v1

    .line 260
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mBuffer:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mTmp:[S

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 261
    return-void
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/maps/opengl/GLBuffer$Short;->mBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x1403

    return v0
.end method
