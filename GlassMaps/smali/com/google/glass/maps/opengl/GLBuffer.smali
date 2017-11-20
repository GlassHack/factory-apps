.class public abstract Lcom/google/glass/maps/opengl/GLBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final componentsPerElement:I

.field private numElements:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/glass/maps/opengl/GLBuffer;->componentsPerElement:I

    .line 24
    iput p2, p0, Lcom/google/glass/maps/opengl/GLBuffer;->numElements:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/glass/maps/opengl/GLBuffer$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/opengl/GLBuffer;-><init>(II)V

    return-void
.end method


# virtual methods
.method public componentsPerElement()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/maps/opengl/GLBuffer;->componentsPerElement:I

    return v0
.end method

.method public drawElements(I)V
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lcom/google/glass/maps/opengl/GLBuffer;->numElements:I

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 66
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/google/glass/maps/opengl/GLBuffer;->numElements:I

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method public abstract getBuffer()Ljava/nio/Buffer;
.end method

.method public abstract getType()I
.end method

.method public numElements()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/glass/maps/opengl/GLBuffer;->numElements:I

    return v0
.end method

.method public position()I
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/opengl/GLBuffer;->componentsPerElement:I

    div-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->componentsPerElement()I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/GLBuffer;->numElements()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[Buffer type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " comp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
