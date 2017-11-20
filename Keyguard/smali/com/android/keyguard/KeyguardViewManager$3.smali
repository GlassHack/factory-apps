.class Lcom/android/keyguard/KeyguardViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->cleanUp()V

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$3;->val$lastView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->removeView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$700(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardGone()V

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
