.class public abstract Lcom/google/g/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:[Lcom/google/g/a/d/a;


# instance fields
.field protected a:Lcom/google/g/a/d/c;

.field protected b:Ljava/lang/Runnable;

.field protected c:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/g/a/d/a;

    sput-object v0, Lcom/google/g/a/d/a;->d:[Lcom/google/g/a/d/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/d/a;->g:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/google/g/a/d/a;->a:Lcom/google/g/a/d/c;

    .line 108
    iput-object p2, p0, Lcom/google/g/a/d/a;->b:Ljava/lang/Runnable;

    .line 109
    iput-object p3, p0, Lcom/google/g/a/d/a;->h:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private h()[Lcom/google/g/a/d/a;
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/d/a;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/g/a/d/a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/g/a/d/a;

    .line 192
    iget-object v1, p0, Lcom/google/g/a/d/a;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 196
    :goto_0
    monitor-exit p0

    .line 197
    return-object v0

    .line 194
    :cond_0
    sget-object v0, Lcom/google/g/a/d/a;->d:[Lcom/google/g/a/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/g/a/d/a;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->b(Lcom/google/g/a/d/a;)I

    move-result v0

    return v0
.end method

.method protected final a(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/google/g/a/d/a;->e:I

    .line 237
    return-void
.end method

.method abstract b()I
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/g/a/d/a;->e:I

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lcom/google/g/a/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/g/a/d/a;->f:I

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, p0, Lcom/google/g/a/d/a;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->a(Lcom/google/g/a/d/a;)V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract e()V
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/g/a/d/a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/g/a/d/a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 262
    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/google/g/a/d/a;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/google/g/a/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_1
    iget v0, p0, Lcom/google/g/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/g/a/d/a;->f:I

    .line 302
    iget-object v0, p0, Lcom/google/g/a/d/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/google/g/a/d/a;->h()[Lcom/google/g/a/d/a;

    move-result-object v1

    .line 307
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 308
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/g/a/d/a;->d()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 310
    :cond_0
    return-void
.end method
