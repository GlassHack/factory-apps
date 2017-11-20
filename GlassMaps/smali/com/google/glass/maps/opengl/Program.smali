.class public Lcom/google/glass/maps/opengl/Program;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ONE_OVER_255:F = 0.003921569f


# instance fields
.field private final fragmentShader:Lcom/google/glass/maps/opengl/Program$Shader;

.field private programId:I

.field private final result:[I

.field private final vertexShader:Lcom/google/glass/maps/opengl/Program$Shader;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/Program;->result:[I

    .line 121
    :try_start_0
    new-instance v0, Lcom/google/glass/maps/opengl/Program$Shader;

    const v1, 0x8b31

    invoke-direct {v0, v1, p1}, Lcom/google/glass/maps/opengl/Program$Shader;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/Program;->vertexShader:Lcom/google/glass/maps/opengl/Program$Shader;

    .line 122
    new-instance v0, Lcom/google/glass/maps/opengl/Program$Shader;

    const v1, 0x8b30

    invoke-direct {v0, v1, p2}, Lcom/google/glass/maps/opengl/Program$Shader;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/Program;->fragmentShader:Lcom/google/glass/maps/opengl/Program$Shader;

    .line 123
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    .line 124
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    const-string v1, "Failed to create program"

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 138
    throw v0

    .line 127
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    iget-object v1, p0, Lcom/google/glass/maps/opengl/Program;->vertexShader:Lcom/google/glass/maps/opengl/Program$Shader;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/Program$Shader;->id()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 128
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    iget-object v1, p0, Lcom/google/glass/maps/opengl/Program;->fragmentShader:Lcom/google/glass/maps/opengl/Program$Shader;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/Program$Shader;->id()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 129
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 130
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    const v1, 0x8b82

    iget-object v2, p0, Lcom/google/glass/maps/opengl/Program;->result:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program;->result:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    const-string v1, "Program link failed!"

    iget v2, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    .line 133
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 141
    throw v0

    .line 143
    :cond_1
    return-void
.end method

.method public static createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;
    .locals 3

    .prologue
    const/16 v2, 0x1a

    .line 92
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/maps/opengl/Program;->loadRawResource(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :try_start_1
    invoke-static {p0, p2}, Lcom/google/glass/maps/opengl/Program;->loadRawResource(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 101
    new-instance v2, Lcom/google/glass/maps/opengl/Program;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/maps/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 94
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromStrings(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/maps/opengl/Program;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/glass/maps/opengl/Program;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/maps/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static loadRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 238
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/util/StreamUtil;->readFullyAndClose(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program;->vertexShader:Lcom/google/glass/maps/opengl/Program$Shader;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program;->vertexShader:Lcom/google/glass/maps/opengl/Program$Shader;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program$Shader;->release()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program;->fragmentShader:Lcom/google/glass/maps/opengl/Program$Shader;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program;->fragmentShader:Lcom/google/glass/maps/opengl/Program$Shader;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program$Shader;->release()V

    .line 153
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    if-eqz v0, :cond_2

    .line 154
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    .line 157
    :cond_2
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 169
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 170
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 172
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/GLBuffer;->componentsPerElement()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/GLBuffer;->getType()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/GLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    move v4, v3

    .line 171
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 173
    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 183
    return-void
.end method

.method public setUniform(Ljava/lang/String;FF)V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 198
    return-void
.end method

.method public setUniform(Ljava/lang/String;FFF)V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 208
    return-void
.end method

.method public setUniform(Ljava/lang/String;FFFF)V
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 218
    return-void
.end method

.method public setUniform(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 178
    return-void
.end method

.method public setUniform(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 193
    return-void
.end method

.method public setUniform(Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3i(IIII)V

    .line 203
    return-void
.end method

.method public setUniform(Ljava/lang/String;IIII)V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4i(IIIII)V

    .line 213
    return-void
.end method

.method public setUniform(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 188
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUniformColorARGB(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const v4, 0x3b808081

    .line 228
    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 229
    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 230
    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 231
    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v4

    .line 232
    iget v4, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 233
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;[F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 224
    return-void
.end method

.method public useProgram()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/glass/maps/opengl/Program;->programId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 165
    return-void
.end method
