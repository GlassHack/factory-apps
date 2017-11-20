.class Lcom/google/glass/maps/opengl/Program$Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final compileResult:[I

.field private id:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 4

    .prologue
    const v2, 0x8b31

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->compileResult:[I

    .line 40
    if-eq p1, v2, :cond_0

    const v0, 0x8b30

    if-eq p1, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown shader type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    .line 44
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    if-nez v0, :cond_2

    .line 45
    new-instance v1, Lcom/google/glass/maps/opengl/ProgramException;

    if-ne p1, v2, :cond_1

    const-string v0, "vertex"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " shader"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "fragment"

    goto :goto_0

    .line 52
    :cond_2
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 54
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    const v1, 0x8b81

    iget-object v2, p0, Lcom/google/glass/maps/opengl/Program$Shader;->compileResult:[I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->compileResult:[I

    aget v0, v0, v3

    if-nez v0, :cond_3

    .line 56
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program$Shader;->release()V

    .line 58
    new-instance v1, Lcom/google/glass/maps/opengl/ProgramException;

    const-string v2, "Shader compilation failed!"

    invoke-direct {v1, v2, v0, p2}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method id()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    return v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/Program$Shader;->id:I

    .line 68
    :cond_0
    return-void
.end method
