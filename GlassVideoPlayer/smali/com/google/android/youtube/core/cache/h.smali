.class final Lcom/google/android/youtube/core/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/cache/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/c;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/c;->a(Lcom/google/android/youtube/core/cache/c;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Lcom/google/android/youtube/core/cache/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/c;->b(Lcom/google/android/youtube/core/cache/c;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 222
    return-void
.end method
