.class Lcom/android/keyguard/KeyguardPatternView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1000(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 358
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 359
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v2, 0x7f050068

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 361
    return-void
.end method
