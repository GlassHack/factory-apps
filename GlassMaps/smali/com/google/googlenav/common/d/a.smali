.class public abstract Lcom/google/googlenav/common/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/google/googlenav/common/d/a;


# instance fields
.field protected b:Lcom/google/googlenav/common/d/c;

.field protected c:Ljava/lang/Runnable;

.field protected d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/common/d/a;

    sput-object v0, Lcom/google/googlenav/common/d/a;->a:[Lcom/google/googlenav/common/d/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    .line 106
    const-string v0, "Runner cannot be null"

    invoke-static {v0, p1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    .line 109
    iput-object p2, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    .line 110
    iput-object p3, p0, Lcom/google/googlenav/common/d/a;->h:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private h()[Lcom/google/googlenav/common/d/a;
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/common/d/a;

    .line 193
    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 197
    :goto_0
    monitor-exit p0

    .line 198
    return-object v0

    .line 195
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/d/a;->a:[Lcom/google/googlenav/common/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 263
    :cond_0
    return-void
.end method

.method protected final a(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/google/googlenav/common/d/a;->e:I

    .line 238
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->b(Lcom/google/googlenav/common/d/a;)I

    move-result v0

    return v0
.end method

.method abstract c()I
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/googlenav/common/d/a;->e:I

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    .line 246
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/a;)V

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract f()V
.end method

.method g()V
    .locals 6

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/common/d/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    .line 305
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    invoke-direct {p0}, Lcom/google/googlenav/common/d/a;->h()[Lcom/google/googlenav/common/d/a;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/Object;)V

    .line 310
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 311
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/common/d/a;->e()V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "runtime exception ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] thrown by runnable ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 313
    :cond_0
    return-void
.end method
