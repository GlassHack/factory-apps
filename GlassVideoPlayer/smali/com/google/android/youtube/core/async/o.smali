.class final Lcom/google/android/youtube/core/async/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/n;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/youtube/core/async/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/n;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/async/o;->a:Lcom/google/android/youtube/core/async/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/android/youtube/core/async/o;->b:Ljava/lang/Object;

    .line 62
    iput-object p3, p0, Lcom/google/android/youtube/core/async/o;->c:Lcom/google/android/youtube/core/async/h;

    .line 63
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/async/o;->a:Lcom/google/android/youtube/core/async/n;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/n;)Lcom/google/android/youtube/core/async/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/o;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/o;->c:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 68
    return-void
.end method
