.class final Lcom/google/android/gms/auth/api/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/d/u;
.implements Lcom/android/d/v;


# instance fields
.field a:Ljava/util/concurrent/CountDownLatch;

.field b:Lcom/android/d/aa;

.field c:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/h;->a:Ljava/util/concurrent/CountDownLatch;

    .line 392
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/d/aa;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/gms/auth/api/h;->b:Lcom/android/d/aa;

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/auth/api/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 406
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 384
    check-cast p1, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/h;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
