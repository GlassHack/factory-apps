.class Lcom/google/android/gsf/login/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v2, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-boolean v2, v2, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EditorAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/BaseActivity;->access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 425
    :goto_0
    return v1

    .line 418
    :cond_1
    if-eqz p3, :cond_3

    .line 419
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 420
    .local v0, "keycode":I
    const/16 v2, 0x42

    if-eq v0, v2, :cond_2

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/BaseActivity$5;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/BaseActivity;->access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 425
    .end local v0    # "keycode":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
