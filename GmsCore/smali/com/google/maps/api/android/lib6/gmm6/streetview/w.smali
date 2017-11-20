.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;


# instance fields
.field private final a:Ljavax/microedition/khronos/opengles/GL10;

.field private final b:Ljavax/microedition/khronos/opengles/GL10Ext;

.field private final c:Ljavax/microedition/khronos/opengles/GL11;

.field private final d:Ljavax/microedition/khronos/opengles/GL11Ext;

.field private e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->b:Ljavax/microedition/khronos/opengles/GL10Ext;

    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    :goto_1
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    :goto_2
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2
.end method


# virtual methods
.method public final a([F)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final glActiveTexture(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    return-void
.end method

.method public final glAlphaFunc(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    return-void
.end method

.method public final glAlphaFuncx(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    return-void
.end method

.method public final glBindBuffer(II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glBindTexture(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    return-void
.end method

.method public final glBlendFunc(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    return-void
.end method

.method public final glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glClear(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    return-void
.end method

.method public final glClearColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    return-void
.end method

.method public final glClearColorx(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    return-void
.end method

.method public final glClearDepthf(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    return-void
.end method

.method public final glClearDepthx(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    return-void
.end method

.method public final glClearStencil(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    return-void
.end method

.method public final glClientActiveTexture(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    return-void
.end method

.method public final glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glClipPlanef(I[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    return-void
.end method

.method public final glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glClipPlanex(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    return-void
.end method

.method public final glColor4f(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    return-void
.end method

.method public final glColor4ub(BBBB)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glColor4x(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method public final glColorMask(ZZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    return-void
.end method

.method public final glColorPointer(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glCopyTexImage2D(IIIIIIII)V
    .locals 9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    return-void
.end method

.method public final glCopyTexSubImage2D(IIIIIIII)V
    .locals 9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    return-void
.end method

.method public final glCullFace(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    return-void
.end method

.method public final glCurrentPaletteMatrixOES(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glDeleteBuffers(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glDeleteTextures(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    return-void
.end method

.method public final glDepthFunc(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    return-void
.end method

.method public final glDepthMask(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    return-void
.end method

.method public final glDepthRangef(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    return-void
.end method

.method public final glDepthRangex(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    return-void
.end method

.method public final glDisable(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    return-void
.end method

.method public final glDisableClientState(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    return-void
.end method

.method public final glDrawArrays(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public final glDrawElements(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glDrawTexfOES(FFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    return-void
.end method

.method public final glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glDrawTexfvOES([FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    return-void
.end method

.method public final glDrawTexiOES(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    return-void
.end method

.method public final glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public final glDrawTexivOES([II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    return-void
.end method

.method public final glDrawTexsOES(SSSSS)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    return-void
.end method

.method public final glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    return-void
.end method

.method public final glDrawTexsvOES([SI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    return-void
.end method

.method public final glDrawTexxOES(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    return-void
.end method

.method public final glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public final glDrawTexxvOES([II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->d:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    return-void
.end method

.method public final glEnable(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void
.end method

.method public final glEnableClientState(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method public final glFinish()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    return-void
.end method

.method public final glFlush()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    return-void
.end method

.method public final glFogf(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    return-void
.end method

.method public final glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glFogfv(I[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    return-void
.end method

.method public final glFogx(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    return-void
.end method

.method public final glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glFogxv(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    return-void
.end method

.method public final glFrontFace(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    return-void
.end method

.method public final glFrustumf(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public final glFrustumx(IIIIII)V
    .locals 8

    const/high16 v7, 0x37800000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    int-to-float v1, p1

    mul-float/2addr v1, v7

    int-to-float v2, p2

    mul-float/2addr v2, v7

    int-to-float v3, p3

    mul-float/2addr v3, v7

    int-to-float v4, p4

    mul-float/2addr v4, v7

    int-to-float v5, p5

    mul-float/2addr v5, v7

    int-to-float v6, p6

    mul-float/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    return-void
.end method

.method public final glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGenBuffers(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glGenTextures(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    return-void
.end method

.method public final glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetBooleanv(I[ZI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetBufferParameteriv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetClipPlanef(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetClipPlanex(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetError()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    return v0
.end method

.method public final glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetFixedv(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetFloatv(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glGetIntegerv(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    return-void
.end method

.method public final glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetLightfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetLightxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetMaterialfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetMaterialxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexEnviv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexEnvxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameterfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameteriv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glGetTexParameterxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glHint(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    return-void
.end method

.method public final glIsBuffer(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glIsEnabled(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glIsTexture(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glLightModelf(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    return-void
.end method

.method public final glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glLightModelfv(I[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    return-void
.end method

.method public final glLightModelx(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    return-void
.end method

.method public final glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glLightModelxv(I[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    return-void
.end method

.method public final glLightf(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    return-void
.end method

.method public final glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glLightfv(II[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    return-void
.end method

.method public final glLightx(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    return-void
.end method

.method public final glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glLightxv(II[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    return-void
.end method

.method public final glLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    return-void
.end method

.method public final glLineWidthx(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    return-void
.end method

.method public final glLoadIdentity()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public final glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glLoadMatrixf([FI)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    const/16 v2, 0x10

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    return-void
.end method

.method public final glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    add-int/2addr v4, v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x37800000

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public final glLoadMatrixx([II)V
    .locals 6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    add-int/2addr v3, v0

    add-int v4, p2, v0

    aget v4, p1, v4

    int-to-float v4, v4

    const/high16 v5, 0x37800000

    mul-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    return-void
.end method

.method public final glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glLogicOp(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    return-void
.end method

.method public final glMaterialf(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    return-void
.end method

.method public final glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glMaterialfv(II[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    return-void
.end method

.method public final glMaterialx(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    return-void
.end method

.method public final glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glMaterialxv(II[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    return-void
.end method

.method public final glMatrixIndexPointerOES(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glMatrixMode(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown matrix mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-virtual {p1, v2, v3, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a([FI)V

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glMultMatrixf([FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a([FI)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    return-void
.end method

.method public final glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 8

    const/16 v7, 0x10

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    add-int/lit8 v4, v0, 0x10

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x37800000

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-virtual {v2, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a([FI)V

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public final glMultMatrixx([II)V
    .locals 7

    const/16 v6, 0x10

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    add-int/lit8 v3, v0, 0x10

    add-int v4, p2, v0

    aget v4, p1, v4

    int-to-float v4, v4

    const/high16 v5, 0x37800000

    mul-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->c:[F

    invoke-virtual {v1, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a([FI)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    return-void
.end method

.method public final glMultiTexCoord4f(IFFFF)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    return-void
.end method

.method public final glMultiTexCoord4x(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    return-void
.end method

.method public final glNormal3f(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    return-void
.end method

.method public final glNormal3x(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    return-void
.end method

.method public final glNormalPointer(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    return-void
.end method

.method public final glOrthof(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(FFFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public final glOrthox(IIIIII)V
    .locals 8

    const/high16 v7, 0x37800000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    int-to-float v1, p1

    mul-float/2addr v1, v7

    int-to-float v2, p2

    mul-float/2addr v2, v7

    int-to-float v3, p3

    mul-float/2addr v3, v7

    int-to-float v4, p4

    mul-float/2addr v4, v7

    int-to-float v5, p5

    mul-float/2addr v5, v7

    int-to-float v6, p6

    mul-float/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(FFFFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    return-void
.end method

.method public final glPixelStorei(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    return-void
.end method

.method public final glPointParameterf(IF)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointParameterfv(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointParameterx(II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointParameterxv(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    return-void
.end method

.method public final glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glPointSizex(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    return-void
.end method

.method public final glPolygonOffset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    return-void
.end method

.method public final glPolygonOffsetx(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    return-void
.end method

.method public final glPopMatrix()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(I)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public final glPushMatrix()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(I)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a:[F

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b:I

    add-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    return-void
.end method

.method public final glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->b:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public final glQueryMatrixxOES([II[II)I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->b:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    return v0
.end method

.method public final glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glRotatef(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    return-void
.end method

.method public final glRotatex(IIII)V
    .locals 6

    const/high16 v5, 0x37800000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    int-to-float v1, p1

    int-to-float v2, p2

    mul-float/2addr v2, v5

    int-to-float v3, p3

    mul-float/2addr v3, v5

    int-to-float v4, p4

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    return-void
.end method

.method public final glSampleCoverage(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    return-void
.end method

.method public final glSampleCoveragex(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    return-void
.end method

.method public final glScalef(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    return-void
.end method

.method public final glScalex(III)V
    .locals 5

    const/high16 v4, 0x37800000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    int-to-float v1, p1

    mul-float/2addr v1, v4

    int-to-float v2, p2

    mul-float/2addr v2, v4

    int-to-float v3, p3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    return-void
.end method

.method public final glScissor(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    return-void
.end method

.method public final glShadeModel(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    return-void
.end method

.method public final glStencilFunc(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    return-void
.end method

.method public final glStencilMask(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    return-void
.end method

.method public final glStencilOp(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    return-void
.end method

.method public final glTexCoordPointer(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glTexEnvf(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    return-void
.end method

.method public final glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final glTexEnvfv(II[FI)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    return-void
.end method

.method public final glTexEnvi(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexEnviv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexEnvx(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    return-void
.end method

.method public final glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glTexEnvxv(II[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    return-void
.end method

.method public final glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glTexParameterf(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    return-void
.end method

.method public final glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexParameterfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexParameteri(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public final glTexParameteriv(II[II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    return-void
.end method

.method public final glTexParameterx(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    return-void
.end method

.method public final glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexParameterxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glTranslatef(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    return-void
.end method

.method public final glTranslatex(III)V
    .locals 5

    const/high16 v4, 0x37800000

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;

    int-to-float v1, p1

    mul-float/2addr v1, v4

    int-to-float v2, p2

    mul-float/2addr v2, v4

    int-to-float v3, p3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ao;->b(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    return-void
.end method

.method public final glVertexPointer(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final glViewport(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public final glWeightPointerOES(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
