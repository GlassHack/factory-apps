.class Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;
.super Ljava/lang/Object;
.source "NameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/NameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private mEditCtrl:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/google/android/gsf/login/NameActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NameActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "editCtrl"    # Landroid/widget/EditText;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->mEditCtrl:Landroid/widget/EditText;

    .line 84
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/NameActivity;->updateWidgetState()V

    .line 103
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "error":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->this$0:Lcom/google/android/gsf/login/NameActivity;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/NameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->mEditCtrl:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/gsf/login/NameActivity$MyTextWatcher;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/NameActivity;->updateWidgetState()V

    .line 94
    return-void
.end method
