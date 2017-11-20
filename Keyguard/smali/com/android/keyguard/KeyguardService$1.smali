.class Lcom/android/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardService;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->dismiss()V

    .line 96
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->dispatch(Landroid/view/MotionEvent;)V

    .line 139
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 89
    return-void
.end method

.method public launchCamera()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->launchCamera()V

    .line 143
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onBootCompleted()V

    .line 147
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    .line 100
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    .line 104
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 108
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 112
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 123
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 131
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setHidden(Z)V

    .line 93
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 116
    return-void
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->showAssistant()V

    .line 135
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 85
    return-void
.end method
