.class final Lcom/google/android/gsf/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 71
    iput-object p2, p0, Lcom/google/android/gsf/f;->a:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/f;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gsf/g;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/g;-><init>(Lcom/google/android/gsf/f;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 86
    return-void
.end method
