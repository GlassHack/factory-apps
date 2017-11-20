.class final Lcom/google/android/gms/common/api/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/c;

.field final synthetic b:Lcom/google/android/gms/common/api/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/c;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iput-object p2, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 366
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget v0, v0, Lcom/google/android/gms/common/api/n;->d:I

    if-ge v1, v0, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iput-object p1, v0, Lcom/google/android/gms/common/api/n;->c:Lcom/google/android/gms/common/b;

    .line 373
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget-object v1, p0, Lcom/google/android/gms/common/api/r;->a:Lcom/google/android/gms/common/api/c;

    const v1, 0x7fffffff

    iput v1, v0, Lcom/google/android/gms/common/api/n;->d:I

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    invoke-static {v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v0, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/r;->b:Lcom/google/android/gms/common/api/n;

    iget-object v1, v1, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
