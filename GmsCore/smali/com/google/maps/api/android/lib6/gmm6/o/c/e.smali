.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL11;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

.field private e:I

.field private f:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->f:[F

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GL20 class is not ready for production use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final glActiveTexture(I)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glAlphaFunc(IF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glAlphaFuncx(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glBindBuffer(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES11;->glBindBuffer(II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glBindTexture(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glBindTexture(II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glBlendFunc(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glBufferData(IILjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glClear(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glClear(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glClearColor(FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glClearColorx(IIII)V
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Draw Count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glClearColorx(IIII)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glClearDepthf(F)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClearDepthx(I)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClearStencil(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glClearStencil(I)V

    return-void
.end method

.method public final glClientActiveTexture(I)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClipPlanef(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glClipPlanex(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glColor4f(FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    return-void
.end method

.method public final glColor4ub(BBBB)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glColor4x(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glColor4x(IIII)V

    return-void
.end method

.method public final glColorMask(ZZZZ)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glColorPointer(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glColorPointer(IIII)V

    return-void
.end method

.method public final glColorPointer(IIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glColorPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glCopyTexImage2D(IIIIIIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glCopyTexSubImage2D(IIIIIIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glCullFace(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glCullFace(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDeleteBuffers(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES11;->glDeleteBuffers(I[II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glDeleteTextures(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDepthFunc(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glDepthFunc(I)V

    return-void
.end method

.method public final glDepthMask(Z)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glDepthRangef(FF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glDepthRangex(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glDisable(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glDisable(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDisableClientState(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    return-void
.end method

.method public final glDrawArrays(III)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDrawElements(IIII)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glDrawElements(IIII)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->e:I

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glDrawElements(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glEnable(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glEnable(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glEnableClientState(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    return-void
.end method

.method public final glFinish()V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFlush()V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogf(IF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogfv(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogx(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogxv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFogxv(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFrontFace(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glFrontFace(I)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glFrustumf(FFFFFF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glFrustumx(IIIIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glGenBuffers(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES11;->glGenBuffers(I[II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glGenTextures(ILjava/nio/IntBuffer;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glGenTextures(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetBooleanv(I[ZI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetBufferParameteriv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetClipPlanef(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetClipPlanex(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetError()I
    .locals 1

    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    return v0
.end method

.method public final glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetFixedv(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetFloatv(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetIntegerv(I[II)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetLightfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetLightxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetMaterialfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetMaterialxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexEnviv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexEnvxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameterfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameteriv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glGetTexParameterxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glHint(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glHint(II)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glIsBuffer(I)Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public final glIsEnabled(I)Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public final glIsTexture(I)Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public final glLightModelf(IF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightModelfv(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightModelx(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightModelxv(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightf(IIF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightx(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLightxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLineWidth(F)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glLineWidth(F)V

    return-void
.end method

.method public final glLineWidthx(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glLineWidthx(I)V

    return-void
.end method

.method public final glLoadIdentity()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/4 v2, 0x0

    aput v3, v1, v2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/4 v2, 0x5

    aput v3, v1, v2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/16 v2, 0xa

    aput v3, v1, v2

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    return-void
.end method

.method public final glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLoadMatrixf([FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a([FI)V

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V

    return-void
.end method

.method public final glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLoadMatrixx([II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glLogicOp(I)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialf(IIF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialx(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMaterialxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMatrixMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    :goto_0
    invoke-static {p1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMultMatrixf([FI)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v2

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    move-object v2, p1

    move v3, p2

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glMultMatrixf([FI)V

    return-void
.end method

.method public final glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMultMatrixx([II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMultiTexCoord4f(IFFFF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glMultiTexCoord4x(IIIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glNormal3f(FFF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glNormal3x(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glNormalPointer(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glNormalPointer(IILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glOrthof(FFFFFF)V
    .locals 0

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public final glOrthox(IIIIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPixelStorei(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterf(IF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterfv(I[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterx(II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointParameterxv(I[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointSize(F)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glPointSize(F)V

    return-void
.end method

.method public final glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPointSizex(I)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glPolygonOffset(FF)V
    .locals 0

    invoke-static {p1, p2}, Landroid/opengl/GLES10;->glPolygonOffset(FF)V

    return-void
.end method

.method public final glPolygonOffsetx(II)V
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glPolygonOffset(FF)V

    return-void
.end method

.method public final glPopMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a:Ljava/util/ArrayList;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {}, Landroid/opengl/GLES10;->glPopMatrix()V

    return-void
.end method

.method public final glPushMatrix()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    iget v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;-><init>()V

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    iget-object v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a([FI)V

    invoke-static {}, Landroid/opengl/GLES10;->glPushMatrix()V

    return-void

    :cond_1
    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a:Ljava/util/ArrayList;

    iget v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move v1, v2

    :goto_0
    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a:[F

    const/4 v6, 0x0

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glRotatef(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a(FFFF)V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glRotatef(FFFF)V

    return-void
.end method

.method public final glRotatex(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a(FFFF)V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glRotatex(IIII)V

    return-void
.end method

.method public final glSampleCoverage(FZ)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glSampleCoveragex(IZ)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glScalef(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->b(FFF)V

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glScalef(FFF)V

    return-void
.end method

.method public final glScalex(III)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->b(FFF)V

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glScalex(III)V

    return-void
.end method

.method public final glScissor(IIII)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glShadeModel(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glShadeModel(I)V

    return-void
.end method

.method public final glStencilFunc(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glStencilMask(I)V
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES10;->glStencilMask(I)V

    return-void
.end method

.method public final glStencilOp(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glStencilOp(III)V

    return-void
.end method

.method public final glTexCoordPointer(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glTexCoordPointer(IIII)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glTexEnvf(IIF)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnvfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnvi(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnviv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnvx(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    return-void
.end method

.method public final glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexEnvxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameterf(IIF)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method

.method public final glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameterfv(II[FI)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameteri(III)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameteriv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameterx(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    return-void
.end method

.method public final glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexParameterxv(II[II)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->a()V

    return-void
.end method

.method public final glTranslatef(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a(FFF)V

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES10;->glTranslatef(FFF)V

    return-void
.end method

.method public final glTranslatex(III)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/f;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/f;->a(FFF)V

    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTranslatef(FFF)V

    return-void
.end method

.method public final glVertexPointer(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES11;->glVertexPointer(IIII)V

    return-void
.end method

.method public final glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glViewport(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES10;->glViewport(IIII)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a()V

    return-void
.end method
