.class public abstract Lcom/google/android/apps/lightcycle/opengl/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field protected mProgram:I

.field protected mSamplerIndex:I

.field protected mTextureCoordIndex:I

.field protected mTransformIndex:I

.field protected mVertexIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    .line 29
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    .line 30
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    .line 31
    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mSamplerIndex:I

    return-void
.end method

.method public static createProgram(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vertexSourceId"    # I
    .param p2, "fragmentSourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->getRawResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->getRawResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "vertexShader":I
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "pixelShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 115
    .local v2, "program":I
    if-nez v2, :cond_0

    .line 116
    new-instance v4, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v5, "Unable to create program"

    invoke-direct {v4, v5}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 119
    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 120
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 123
    new-array v0, v6, [I

    .line 124
    .local v0, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 126
    aget v4, v0, v5

    if-eq v4, v6, :cond_1

    .line 127
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 128
    new-instance v4, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v5, "Could not link program"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_1
    return v2
.end method

.method protected static getRawResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 188
    .local v3, "ins":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/16 v5, 0x400

    :try_start_0
    new-array v4, v5, [B

    .line 192
    .local v4, "tmp":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "i":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 193
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    .end local v4    # "tmp":[B
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 195
    .restart local v2    # "i":I
    .restart local v4    # "tmp":[B
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .locals 6
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 138
    .local v1, "shader":I
    if-nez v1, :cond_0

    .line 139
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    const-string v4, "Unable to create shader"

    invoke-direct {v3, v4}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 143
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 144
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 145
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 146
    aget v3, v0, v4

    if-nez v3, :cond_1

    .line 147
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "shaderInfoLog":Ljava/lang/String;
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 149
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 152
    .end local v2    # "shaderInfoLog":Ljava/lang/String;
    :cond_1
    return v1
.end method


# virtual methods
.method public activateTexture()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 94
    return-void
.end method

.method public bind()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 99
    return-void
.end method

.method protected getAttribute(ILjava/lang/String;)I
    .locals 4
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in shader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetAttribLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 162
    return v0
.end method

.method public getSamplerIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mSamplerIndex:I

    return v0
.end method

.method public getTextureCoordIndex()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    return v0
.end method

.method public getTransformIndex()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    return v0
.end method

.method protected getUniform(ILjava/lang/String;)I
    .locals 4
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 169
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in shader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetUniformLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V

    .line 172
    return v0
.end method

.method public getVertexIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    return v0
.end method

.method public setTexCoords(Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "texCoords"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    if-gez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 77
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTextureCoordIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public setTransform([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    if-gez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mTransformIndex:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method public setVertices(Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "vertices"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    if-gez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 65
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Shader;->mVertexIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 104
    return-void
.end method
