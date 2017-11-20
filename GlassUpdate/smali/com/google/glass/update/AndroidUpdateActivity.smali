.class public final Lcom/google/glass/update/AndroidUpdateActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "AndroidUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;
    }
.end annotation


# static fields
.field private static final ID_UPDATE_LATER:I = 0xb

.field static final ID_UPDATE_NOW:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static MAX_COUNTDOWN:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final accepted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private slider:Lcom/google/glass/widget/SliderView;

.field update:Lcom/google/glass/update/AndroidUpdate;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private updateTimerText:Landroid/widget/TextView;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    sput v0, Lcom/google/glass/update/AndroidUpdateActivity;->MAX_COUNTDOWN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->accepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->slider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/update/AndroidUpdateActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/update/AndroidUpdateActivity;->updateCountDown(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/update/AndroidUpdateActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/update/AndroidUpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/update/AndroidUpdateActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->startUpdate()V

    return-void
.end method

.method private cancelUpdate()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping counter."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->finish()V

    .line 125
    return-void
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->accepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Informing user we are starting the update."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->updateTimerText:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/update/R$string;->android_updating:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting the update now."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->update:Lcom/google/glass/update/AndroidUpdate;

    invoke-virtual {v0}, Lcom/google/glass/update/AndroidUpdate;->forceInstall()V

    .line 138
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->finishAndTurnScreenOff()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start update has already been called."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateCountDown(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->updateTimerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->updateTimerText:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/update/R$string;->android_update_timer_text:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/update/AndroidUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->accepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 68
    new-instance v2, Lcom/google/glass/update/AndroidUpdate;

    invoke-direct {v2, p0}, Lcom/google/glass/update/AndroidUpdate;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/update/AndroidUpdateActivity;->update:Lcom/google/glass/update/AndroidUpdate;

    .line 70
    sget v2, Lcom/google/glass/update/R$id;->update_name:I

    invoke-virtual {p0, v2}, Lcom/google/glass/update/AndroidUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "updateText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateActivity;->update:Lcom/google/glass/update/AndroidUpdate;

    invoke-virtual {v2}, Lcom/google/glass/update/AndroidUpdate;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "updateName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    sget v2, Lcom/google/glass/update/R$id;->update_timer_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/update/AndroidUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/glass/update/AndroidUpdateActivity;->updateTimerText:Landroid/widget/TextView;

    .line 76
    sget v2, Lcom/google/glass/update/R$id;->slider:I

    invoke-virtual {p0, v2}, Lcom/google/glass/update/AndroidUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    iput-object v2, p0, Lcom/google/glass/update/AndroidUpdateActivity;->slider:Lcom/google/glass/widget/SliderView;

    .line 79
    new-instance v2, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating options menu"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const/16 v0, 0xa

    sget v1, Lcom/google/glass/update/R$string;->menu_update_now:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/update/R$drawable;->ic_sync_50:I

    .line 160
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    const/16 v0, 0xb

    sget v1, Lcom/google/glass/update/R$string;->menu_update_later:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/update/R$drawable;->ic_no_50:I

    .line 162
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->accepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return v1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->cancelUpdate()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Option menu item selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Update now selected, kicking off the update now."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    const-string v3, "ud"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->startUpdate()V

    .line 181
    :goto_0
    return v5

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Update later selected, deferring the update."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lcom/google/glass/update/AndroidUpdateActivity;->cancelUpdate()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 85
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    sget v0, Lcom/google/glass/update/AndroidUpdateActivity;->MAX_COUNTDOWN:I

    .line 88
    .local v0, "max":I
    invoke-direct {p0, v0}, Lcom/google/glass/update/AndroidUpdateActivity;->updateCountDown(I)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    invoke-virtual {v1}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->cancel(Z)Z

    .line 93
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    .line 95
    :cond_1
    new-instance v1, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;-><init>(Lcom/google/glass/update/AndroidUpdateActivity;I)V

    iput-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    .line 96
    iget-object v1, p0, Lcom/google/glass/update/AndroidUpdateActivity;->countDownTask:Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/google/glass/update/R$layout;->android_update_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method
