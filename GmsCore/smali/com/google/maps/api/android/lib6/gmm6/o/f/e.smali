.class public final Lcom/google/maps/api/android/lib6/gmm6/o/f/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/h;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
