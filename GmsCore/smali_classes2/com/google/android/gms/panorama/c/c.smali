.class public abstract Lcom/google/android/gms/panorama/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/c/o;


# static fields
.field private static a:I

.field private static final b:[Lcom/google/android/gms/panorama/c/d;

.field private static c:Ljava/util/concurrent/BlockingDeque;


# instance fields
.field private final d:Ljava/util/concurrent/Semaphore;

.field private final e:Lcom/google/android/gms/panorama/f/a;

.field private final f:Lcom/google/android/gms/panorama/c/a;

.field private g:Lcom/google/android/gms/panorama/c/f;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:F

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x2

    .line 46
    sput v0, Lcom/google/android/gms/panorama/c/c;->a:I

    new-array v0, v0, [Lcom/google/android/gms/panorama/c/d;

    sput-object v0, Lcom/google/android/gms/panorama/c/c;->b:[Lcom/google/android/gms/panorama/c/d;

    move v0, v1

    .line 49
    :goto_0
    sget-object v2, Lcom/google/android/gms/panorama/c/c;->b:[Lcom/google/android/gms/panorama/c/d;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 50
    sget-object v2, Lcom/google/android/gms/panorama/c/c;->b:[Lcom/google/android/gms/panorama/c/d;

    new-instance v3, Lcom/google/android/gms/panorama/c/d;

    invoke-direct {v3, v1}, Lcom/google/android/gms/panorama/c/d;-><init>(B)V

    aput-object v3, v2, v0

    .line 51
    sget-object v2, Lcom/google/android/gms/panorama/c/c;->b:[Lcom/google/android/gms/panorama/c/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/panorama/c/d;->start()V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/panorama/c/c;->c:Ljava/util/concurrent/BlockingDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Semaphore;Lcom/google/android/gms/panorama/f/a;Lcom/google/android/gms/panorama/c/a;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/c/c;->i:Z

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/panorama/c/c;->k:J

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/c;->d:Ljava/util/concurrent/Semaphore;

    .line 90
    iput-object p2, p0, Lcom/google/android/gms/panorama/c/c;->e:Lcom/google/android/gms/panorama/f/a;

    .line 91
    iput-object p3, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/panorama/c/c;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p0}, Lcom/google/android/gms/panorama/c/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->e:Lcom/google/android/gms/panorama/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic g()Ljava/util/concurrent/BlockingDeque;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/panorama/c/c;->c:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/panorama/c/f;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    if-eqz v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/panorama/c/c;->i:Z

    if-nez v1, :cond_0

    .line 118
    :try_start_0
    sget-object v1, Lcom/google/android/gms/panorama/c/c;->c:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, p0}, Ljava/util/concurrent/BlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/panorama/c/c;->i:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/gms/panorama/c/c;->c:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    .line 132
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    new-array v1, v4, [I

    iget v2, v0, Lcom/google/android/gms/panorama/c/f;->a:I

    aput v2, v1, v3

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/panorama/c/f;->a:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/panorama/c/c;->k:J

    .line 145
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb

    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lcom/google/android/gms/panorama/c/f;

    sget-object v2, Lcom/google/android/gms/panorama/c/h;->a:Lcom/google/android/gms/panorama/c/h;

    invoke-direct {v1, v2}, Lcom/google/android/gms/panorama/c/f;-><init>(Lcom/google/android/gms/panorama/c/h;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/panorama/c/f;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/panorama/c/a;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v4, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/c/c;->i:Z

    .line 151
    :goto_1
    const/4 v0, 0x1

    .line 153
    :cond_0
    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "DelayedTextureLoader"

    const-string v2, "Could not load texture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/panorama/c/a;->a(Landroid/graphics/Bitmap;)V

    :goto_2
    iput-object v4, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/c/c;->i:Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->f:Lcom/google/android/gms/panorama/c/a;

    iget-object v3, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/panorama/c/a;->a(Landroid/graphics/Bitmap;)V

    :goto_3
    iput-object v4, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/c/c;->i:Z

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method public final e()F
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/panorama/c/c;->g:Lcom/google/android/gms/panorama/c/f;

    if-nez v1, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget v1, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 170
    iget-wide v2, p0, Lcom/google/android/gms/panorama/c/c;->k:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/panorama/c/c;->k:J

    .line 174
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/panorama/c/c;->k:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    .line 176
    iget v1, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/c;->e:Lcom/google/android/gms/panorama/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 181
    iget v0, p0, Lcom/google/android/gms/panorama/c/c;->j:F

    goto :goto_0
.end method

.method protected abstract f()Landroid/graphics/Bitmap;
.end method
