.class public abstract Lcom/google/android/gms/panorama/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/gms/panorama/c/k;->a:I

    .line 29
    iput v0, p0, Lcom/google/android/gms/panorama/c/k;->b:I

    .line 30
    iput v0, p0, Lcom/google/android/gms/panorama/c/k;->c:I

    .line 31
    iput v0, p0, Lcom/google/android/gms/panorama/c/k;->d:I

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    const-string v1, "Unable to create shader"

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 143
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 144
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 145
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 146
    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 147
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 149
    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to compile shader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    return v0
.end method

.method protected static b(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 157
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 158
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in shader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glGetAttribLocation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    .line 162
    return v0
.end method

.method protected static c(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 167
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 168
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/gms/panorama/c/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in shader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glGetUniformLocation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/panorama/c/i;->a(Ljava/lang/String;)V

    .line 172
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 99
    return-void
.end method

.method public final a(Ljava/nio/FloatBuffer;)V
    .locals 6

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->a:I

    if-gez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->a:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 65
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public final a([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->c:I

    if-gez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0
.end method

.method public final b(Ljava/nio/FloatBuffer;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->b:I

    if-gez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->b:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 77
    iget v0, p0, Lcom/google/android/gms/panorama/c/k;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method
