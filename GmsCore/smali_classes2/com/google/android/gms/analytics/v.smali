.class final Lcom/google/android/gms/analytics/v;
.super Lcom/google/android/gms/analytics/bk;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static o:Lcom/google/android/gms/analytics/v;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/analytics/g;

.field private volatile d:Lcom/google/android/gms/analytics/i;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/google/android/gms/analytics/h;

.field private l:Landroid/os/Handler;

.field private m:Lcom/google/android/gms/analytics/u;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/analytics/bk;-><init>()V

    .line 49
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    .line 50
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/v;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/v;->i:Z

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/v;->j:Z

    .line 61
    new-instance v0, Lcom/google/android/gms/analytics/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/w;-><init>(Lcom/google/android/gms/analytics/v;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->k:Lcom/google/android/gms/analytics/h;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    .line 88
    return-void
.end method

.method public static a()Lcom/google/android/gms/analytics/v;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/gms/analytics/v;->o:Lcom/google/android/gms/analytics/v;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/google/android/gms/analytics/v;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/v;->o:Lcom/google/android/gms/analytics/v;

    .line 84
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/v;->o:Lcom/google/android/gms/analytics/v;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/v;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/v;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/v;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/v;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 226
    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 228
    iput p1, p0, Lcom/google/android/gms/analytics/v;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->T:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 234
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    if-lez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 237
    :cond_2
    iput p1, p0, Lcom/google/android/gms/analytics/v;->e:I

    .line 238
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->i:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/i;)V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    if-nez v0, :cond_0

    .line 150
    iput-object p2, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    .line 151
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->f:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/v;->c()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/v;->f:Z

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->g:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    if-nez v0, :cond_3

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/v;->g:Z

    .line 157
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/v;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->af:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/v;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ZZ)V
    .locals 4

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    if-lez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 264
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    if-lez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/v;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 268
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 270
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/v;->n:Z

    .line 271
    iput-boolean p2, p0, Lcom/google/android/gms/analytics/v;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized b()Lcom/google/android/gms/analytics/g;
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/analytics/g;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/bg;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->k:Lcom/google/android/gms/analytics/h;

    iget-object v2, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/bg;-><init>(Lcom/google/android/gms/analytics/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/analytics/g;

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/analytics/g;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/g;->c()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->h:Ljava/lang/String;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 186
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/x;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/x;-><init>(Lcom/google/android/gms/analytics/v;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/v;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->m:Lcom/google/android/gms/analytics/u;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->j:Z

    if-eqz v0, :cond_3

    .line 189
    new-instance v0, Lcom/google/android/gms/analytics/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/u;-><init>(Lcom/google/android/gms/analytics/bk;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/v;->m:Lcom/google/android/gms/analytics/u;

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->m:Lcom/google/android/gms/analytics/u;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Landroid/content/Context;)V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/analytics/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized c()V
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/v;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->S:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->d:Lcom/google/android/gms/analytics/i;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 4

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/v;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/v;->e:I

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
