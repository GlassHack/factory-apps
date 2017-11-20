.class final Lcom/google/android/youtube/core/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/a;->a:Lcom/google/android/youtube/core/ui/AbstractWorkspace;

    invoke-static {v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 747
    return-void
.end method
