.class public final Lcom/google/android/maps/driveabout/store/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Z

.field private d:[B

.field private e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->f:Ljava/util/concurrent/CountDownLatch;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    .line 52
    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 205
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 206
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 207
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 208
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    iput v4, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    .line 216
    :cond_0
    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 0

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    .line 151
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/bd;)V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/store/bb;->c:Z

    .line 60
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bb;->c:Z

    return v0
.end method

.method final a(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 181
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4

    if-eqz v3, :cond_4

    .line 183
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/store/bb;->g:J

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v3, "image/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    .line 195
    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eq v0, v1, :cond_3

    move v0, v1

    .line 201
    :goto_1
    return v0

    .line 188
    :cond_0
    const-string v3, "application/binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    .line 190
    iput v6, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_0

    .line 192
    :cond_1
    const-string v3, "ResourceManager"

    const-string v4, "Unhandled content-type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 195
    goto :goto_1

    .line 196
    :cond_4
    const/16 v3, 0x130

    if-ne v0, v3, :cond_5

    :goto_3
    move v0, v2

    .line 201
    goto :goto_1

    .line 199
    :cond_5
    iput v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    goto :goto_3
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    iget v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    return v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bb;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    if-eqz v2, :cond_1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 93
    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->d:[B

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/bb;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bb;->e:Ljava/lang/ref/WeakReference;

    .line 97
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 92
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/bb;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/store/bc;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/store/bc;-><init>(Lcom/google/android/maps/driveabout/store/bb;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final f()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->g:J

    return-wide v0
.end method

.method final g()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/store/bb;->h:J

    return-wide v0
.end method

.method final h()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bd;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/store/bd;->handleResource(Lcom/google/android/maps/driveabout/store/bb;)V

    .line 225
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bb;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
