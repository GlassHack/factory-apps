.class public final Lcom/google/android/youtube/core/async/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/h;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/h;

    .line 18
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/i;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/youtube/core/async/i;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/i;-><init>(Lcom/google/android/youtube/core/async/h;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    .line 26
    return-void
.end method

.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/i;->b:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/i;->a:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method
