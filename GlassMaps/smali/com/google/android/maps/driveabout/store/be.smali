.class public final Lcom/google/android/maps/driveabout/store/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/store/be;


# instance fields
.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Lcom/google/googlenav/common/a;

.field private final d:Lcom/google/android/maps/driveabout/util/g;

.field private final e:Lcom/google/android/maps/driveabout/util/g;

.field private final f:Lcom/google/android/maps/driveabout/util/g;

.field private final g:Lcom/google/android/maps/driveabout/store/u;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 69
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    .line 70
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    .line 71
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    .line 72
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->g:Lcom/google/android/maps/driveabout/store/u;

    .line 73
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/util/g;

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    .line 57
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    .line 58
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/util/g;

    .line 59
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    .line 60
    invoke-static {p2}, Lcom/google/android/maps/driveabout/store/u;->a(Ljava/io/File;)Lcom/google/android/maps/driveabout/store/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->g:Lcom/google/android/maps/driveabout/store/u;

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;Z)Lcom/google/android/maps/driveabout/store/bb;
    .locals 7

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    if-eqz p3, :cond_3

    .line 136
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 138
    if-eqz v0, :cond_6

    .line 139
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bb;

    .line 141
    :goto_0
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bb;-><init>()V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/bb;->a(Z)V

    .line 147
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_1
    monitor-enter v0

    .line 167
    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v1

    .line 168
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/bb;->g()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bb;)V

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bb;->a(J)V

    .line 172
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/store/bb;->a(Lcom/google/android/maps/driveabout/store/bd;)V

    .line 177
    :cond_2
    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 152
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bb;

    .line 153
    if-nez v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->g:Lcom/google/android/maps/driveabout/store/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/u;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v0

    .line 157
    :cond_4
    if-nez v0, :cond_5

    .line 159
    new-instance v0, Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bb;-><init>()V

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/bb;->a(Z)V

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 172
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/google/android/maps/driveabout/store/be;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)Lcom/google/android/maps/driveabout/store/be;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/google/android/maps/driveabout/store/be;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/store/be;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    .line 241
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/be;)Lcom/google/android/maps/driveabout/store/u;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->g:Lcom/google/android/maps/driveabout/store/u;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 4

    .prologue
    .line 207
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/w;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 208
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bb;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 212
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/bg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/google/android/maps/driveabout/store/bg;-><init>(Lcom/google/android/maps/driveabout/store/be;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/bb;Lcom/google/android/maps/driveabout/store/bf;)V

    .line 213
    new-instance v0, Lcom/google/android/maps/driveabout/g/g;

    const-string v2, "addRequest"

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/g/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 216
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/be;->c()V

    .line 253
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    .line 255
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->g:Lcom/google/android/maps/driveabout/store/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/u;->a()V

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;Z)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v0

    return-object v0
.end method

.method public final onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    .prologue
    .line 223
    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/bg;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/google/android/maps/driveabout/store/bg;

    .line 225
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/bg;->a()V

    .line 227
    :cond_0
    return-void
.end method

.method public final onNetworkError(IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public final onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
