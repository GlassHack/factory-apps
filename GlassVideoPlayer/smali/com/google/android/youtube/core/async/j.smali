.class public Lcom/google/android/youtube/core/async/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;

.field private final b:Lcom/google/android/youtube/core/converter/a;

.field private final c:Lcom/google/android/youtube/core/converter/b;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ae;

    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    .line 56
    iput-object p2, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/converter/b;

    .line 57
    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/concurrent/Executor;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/j;)Lcom/google/android/youtube/core/converter/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/converter/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/j;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Lcom/google/android/youtube/core/converter/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/converter/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    :goto_0
    new-instance v1, Lcom/google/android/youtube/core/async/k;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/youtube/core/async/k;-><init>(Lcom/google/android/youtube/core/async/j;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/async/j;->b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    .line 86
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 111
    invoke-interface {p3, p1, p4}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 112
    return-void
.end method

.method protected b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ae;

    const-string v1, "subclasses should override doRequest"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/ae;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 100
    return-void
.end method
