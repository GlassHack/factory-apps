.class Lcom/android/keyguard/KeyguardAccountView$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAccountView$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 167
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->val$success:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$100(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 189
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$300(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v2, 0x7f05007a

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$400(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    goto :goto_0
.end method
