.class public Lcom/google/glass/maps/opengl/GLBuffer$Fixed;
.super Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;-><init>(II)V

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic add([I)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->add([I)V

    return-void
.end method

.method public bridge synthetic add([III)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->add([III)V

    return-void
.end method

.method public bridge synthetic addQuadIndices(IIII)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->addQuadIndices(IIII)V

    return-void
.end method

.method public bridge synthetic addTriangleIndices(III)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->addTriangleIndices(III)V

    return-void
.end method

.method public bridge synthetic getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/glass/maps/opengl/GLBuffer$IntegerBase;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0x140c

    return v0
.end method
