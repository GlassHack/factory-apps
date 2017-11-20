.class final Lcom/google/android/gms/panorama/c/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/panorama/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 33
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/panorama/c/c;->g()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/c/c;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/panorama/c/c;->a(Lcom/google/android/gms/panorama/c/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    return-void
.end method
