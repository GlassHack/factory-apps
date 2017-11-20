.class public final Lcom/google/android/gms/auth/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/auth/v;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/u;)V
    .locals 2

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Lcom/google/android/gms/auth/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/v;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    .line 490
    iget-object v0, p0, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    iget-object v1, p1, Lcom/google/android/gms/auth/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/auth/v;->b:I

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/u;B)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/w;-><init>(Lcom/google/android/gms/auth/u;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/y;)Lcom/google/android/gms/auth/v;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    iput-object p1, v0, Lcom/google/android/gms/auth/v;->d:Lcom/google/android/gms/auth/y;

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    iget-object v1, v0, Lcom/google/android/gms/auth/v;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/gms/auth/v;->b:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/auth/v;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/auth/v;->d:Lcom/google/android/gms/auth/y;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/x;

    invoke-direct {v0}, Lcom/google/android/gms/auth/x;-><init>()V

    throw v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/w;->a:Lcom/google/android/gms/auth/v;

    return-object v0
.end method
