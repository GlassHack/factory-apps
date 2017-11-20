.class public final Lcom/google/android/maps/driveabout/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Lcom/google/android/maps/driveabout/util/l;

.field private static volatile d:Lcom/google/android/maps/driveabout/vector/e;

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/maps/driveabout/util/l;

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/e;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/l;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/android/maps/driveabout/util/n;->c:Lcom/google/android/maps/driveabout/util/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/maps/driveabout/util/l;
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/util/n;->c:Lcom/google/android/maps/driveabout/util/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/util/l;)Lcom/google/android/maps/driveabout/util/l;
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/google/android/maps/driveabout/util/n;->c:Lcom/google/android/maps/driveabout/util/l;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/e;)Lcom/google/android/maps/driveabout/vector/e;
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/google/android/maps/driveabout/util/n;->d:Lcom/google/android/maps/driveabout/vector/e;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/util/n;->b(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V
    .locals 6

    .prologue
    .line 153
    sget-boolean v0, Lcom/google/android/maps/driveabout/util/n;->a:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/util/n;->a:Z

    .line 158
    new-instance v0, Lcom/google/android/maps/driveabout/util/o;

    const-string v1, "ParameterManagerLoad"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/util/o;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V

    .line 166
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/o;->start()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 34
    sput-boolean p0, Lcom/google/android/maps/driveabout/util/n;->e:Z

    return p0
.end method

.method public static declared-synchronized b()Lcom/google/android/maps/driveabout/util/l;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/google/android/maps/driveabout/util/n;

    monitor-enter v1

    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/google/android/maps/driveabout/util/n;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/maps/driveabout/util/n;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 87
    :try_start_1
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0

    .line 92
    :cond_0
    :try_start_2
    sget-boolean v0, Lcom/google/android/maps/driveabout/util/n;->b:Z

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/google/android/maps/driveabout/util/n;->c:Lcom/google/android/maps/driveabout/util/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_1
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 173
    const-class v7, Lcom/google/android/maps/driveabout/util/n;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {p0, p3, v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 182
    :goto_0
    new-instance v2, Lcom/google/android/maps/driveabout/util/l;

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/util/l;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v2, Lcom/google/android/maps/driveabout/util/n;->c:Lcom/google/android/maps/driveabout/util/l;

    .line 183
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 184
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 189
    :goto_1
    sget-object v0, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {p0, p4, v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x7

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v1

    sput-object v1, Lcom/google/android/maps/driveabout/util/n;->d:Lcom/google/android/maps/driveabout/vector/e;

    .line 196
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 200
    :cond_0
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    :cond_1
    if-eqz p1, :cond_4

    .line 204
    sget-object v0, Lcom/google/android/maps/driveabout/util/n;->d:Lcom/google/android/maps/driveabout/vector/e;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    if-eqz p2, :cond_2

    .line 206
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 208
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/util/n;->e:Z

    .line 209
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/util/p;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/util/p;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 213
    new-instance v0, Lcom/google/android/maps/driveabout/util/q;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/util/q;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/maps/driveabout/util/o;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_4
    monitor-exit v7

    return-void

    .line 179
    :cond_5
    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 180
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/e;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_6
    move-object v2, v4

    .line 184
    goto :goto_1
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 34
    sput-boolean p0, Lcom/google/android/maps/driveabout/util/n;->b:Z

    return p0
.end method

.method static synthetic c()Lcom/google/android/maps/driveabout/vector/e;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/maps/driveabout/util/n;->d:Lcom/google/android/maps/driveabout/vector/e;

    return-object v0
.end method
