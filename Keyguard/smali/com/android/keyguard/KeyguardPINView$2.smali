.class Lcom/android/keyguard/KeyguardPINView$2;
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
    .line 79
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$2;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$2;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$2;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "str":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$2;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .end local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$2;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPINView;->doHapticKeyClick()V

    .line 89
    return-void
.end method
