.class final Lcom/google/android/youtube/core/async/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/youtube/core/async/h;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Exception;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/ak;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ak;->a:Lcom/google/android/youtube/core/async/h;

    .line 87
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ak;->b:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ak;->d:Ljava/lang/Exception;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ak;->c:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ak;->e:Z

    .line 91
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ak;->a:Lcom/google/android/youtube/core/async/h;

    .line 79
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ak;->b:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ak;->c:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ak;->d:Ljava/lang/Exception;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ak;->e:Z

    .line 83
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ak;->e:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ak;->a:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ak;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ak;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :goto_0
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ak;->a:Lcom/google/android/youtube/core/async/h;

    .line 101
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ak;->b:Ljava/lang/Object;

    .line 102
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ak;->c:Ljava/lang/Object;

    .line 103
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ak;->d:Ljava/lang/Exception;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ak;->e:Z

    .line 105
    invoke-static {p0}, Lcom/google/android/youtube/core/async/aj;->a(Lcom/google/android/youtube/core/async/ak;)V

    .line 106
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ak;->a:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ak;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ak;->d:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
