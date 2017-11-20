.class public final Lcom/google/android/youtube/core/async/b;
.super Lcom/google/android/youtube/core/async/aj;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/async/aj;-><init>(Lcom/google/android/youtube/core/async/h;)V

    .line 26
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/b;->a:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/b;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/youtube/core/async/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/b;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/h;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
