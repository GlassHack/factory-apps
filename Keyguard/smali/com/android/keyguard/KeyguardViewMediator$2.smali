.class Lcom/android/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyguardDone(Z)V
    .locals 2
    .param p1, "authenticated"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 450
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 454
    return-void
.end method

.method public keyguardDonePending()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1402(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 469
    return-void
.end method

.method public keyguardGone()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 474
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 464
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 459
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 442
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .param p1, "holdMs"    # J

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 446
    return-void
.end method
