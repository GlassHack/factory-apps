.class final Lcom/google/android/youtube/core/client/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/c;

.field private final synthetic b:Lcom/google/android/youtube/core/async/h;

.field private final synthetic c:Lcom/google/android/youtube/core/async/z;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/c;Lcom/google/android/youtube/core/async/h;Lcom/google/android/youtube/core/async/z;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/client/d;->a:Lcom/google/android/youtube/core/client/c;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/d;->b:Lcom/google/android/youtube/core/async/h;

    iput-object p3, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/async/z;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/async/z;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 71
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/client/d;->b:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/d;->c:Lcom/google/android/youtube/core/async/z;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/client/d;->a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    check-cast p2, Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/client/d;->a(Lcom/google/android/youtube/core/async/z;Ljava/lang/Object;)V

    return-void
.end method
