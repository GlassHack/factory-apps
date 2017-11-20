.class public Lcom/google/glass/widget/MessageDialogManager;
.super Ljava/lang/Object;
.source "MessageDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/MessageDialogManager$Provider;
    }
.end annotation


# instance fields
.field private dialogReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/glass/widget/MessageDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/MessageDialogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/widget/MessageDialogManager$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialogManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageDialogForTest()Lcom/google/glass/widget/MessageDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 56
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialog;

    goto :goto_0
.end method

.method public getMessageTextForTest()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 34
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    .line 35
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialogManager;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->getMessageForTest()Ljava/lang/CharSequence;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideMessageDialog()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialogManager;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/glass/widget/MessageDialogManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to dismiss message dialog."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isMessageShowing()Z
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 27
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .param p1, "messageDialog"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/widget/MessageDialogManager;->hideMessageDialog()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialogManager;->dialogReference:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {p1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 51
    return-void
.end method
