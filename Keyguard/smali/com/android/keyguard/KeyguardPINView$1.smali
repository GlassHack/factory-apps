.class Lcom/android/keyguard/KeyguardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPINView;->doHapticKeyClick()V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPINView;->verifyPasswordAndUnlock()V

    .line 69
    :cond_0
    return-void
.end method
