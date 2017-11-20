.class Lcom/android/keyguard/KeyguardSimPinView$4$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$4;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$4;II)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 244
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$result:I

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$302(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 270
    return-void

    .line 248
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$result:I

    if-ne v0, v3, :cond_3

    .line 249
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->val$attemptsRemaining:I

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$4;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
