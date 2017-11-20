.class public Lcom/google/android/apps/lightcycle/opengl/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->x:F

    .line 19
    iput p2, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->y:F

    .line 20
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->z:F

    .line 21
    return-void
.end method


# virtual methods
.method public addToBuffer(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/FloatBuffer;
    .param p2, "offset"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->x:F

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 31
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 32
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Vertex;->z:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 33
    return-void
.end method
