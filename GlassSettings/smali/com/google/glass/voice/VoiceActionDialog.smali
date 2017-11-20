.class public Lcom/google/glass/voice/VoiceActionDialog;
.super Landroid/app/Dialog;
.source "VoiceActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceActionDialog$Provider;
    }
.end annotation


# instance fields
.field private final actionContainer:Landroid/widget/FrameLayout;

.field private final actionController:Lcom/google/glass/voice/ActionController;

.field private actionControllerDismissed:Z

.field private final gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionController"    # Lcom/google/glass/voice/ActionController;

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/voice/ActionController$Callback;->NO_OP:Lcom/google/glass/voice/ActionController$Callback;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/VoiceActionDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionController"    # Lcom/google/glass/voice/ActionController;
    .param p3, "callback"    # Lcom/google/glass/voice/ActionController$Callback;

    .prologue
    .line 45
    sget v1, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    new-instance v1, Lcom/google/android/glass/touchpad/GestureDetector;

    .line 27
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceActionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/glass/voice/VoiceActionDialog$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceActionDialog$1;-><init>(Lcom/google/glass/voice/VoiceActionDialog;)V

    invoke-virtual {v1, v2}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    .line 46
    iput-object p2, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    .line 47
    new-instance v1, Lcom/google/glass/voice/VoiceActionDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceActionDialog$2;-><init>(Lcom/google/glass/voice/VoiceActionDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionContainer:Landroid/widget/FrameLayout;

    .line 54
    new-instance v0, Lcom/google/glass/voice/VoiceActionDialog$3;

    invoke-direct {v0, p0, p3}, Lcom/google/glass/voice/VoiceActionDialog$3;-><init>(Lcom/google/glass/voice/VoiceActionDialog;Lcom/google/glass/voice/ActionController$Callback;)V

    .line 83
    .local v0, "wrappedCallback":Lcom/google/glass/voice/ActionController$Callback;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceActionDialog;->setContentView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/google/glass/voice/VoiceInputHelper;

    new-instance v3, Lcom/google/glass/voice/VoiceActionDialog$4;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/VoiceActionDialog$4;-><init>(Lcom/google/glass/voice/VoiceActionDialog;)V

    invoke-direct {v2, p1, v3}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;)V

    invoke-interface {p2, p1, v1, v0, v2}, Lcom/google/glass/voice/ActionController;->prepareAction(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/glass/voice/ActionController$Callback;Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceConfig;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/glass/voice/ActionController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/android/glass/touchpad/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceActionDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Action controller consumed back event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController;->dismiss(Z)V

    .line 135
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    .line 137
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/google/glass/widget/MessageDialog;->setSystemDialogIfNeeded(Landroid/app/Dialog;)V

    .line 102
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->startAction()V

    .line 108
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionControllerDismissed:Z

    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController;->dismiss(Z)V

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 117
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog;->actionController:Lcom/google/glass/voice/ActionController;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/ActionController;->onWindowFocusChanged(Z)V

    .line 123
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 124
    return-void
.end method
