.class public Lcom/google/android/gms/auth/setup/AccountSetupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;

.field private c:I

.field private d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/auth/setup/AccountSetupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    sget-object v2, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    iget v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a:Ljava/lang/String;

    const-string v1, "Nothing left to launch."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 116
    if-nez p3, :cond_0

    .line 117
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 120
    :cond_0
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 127
    array-length v1, v0

    if-lez v1, :cond_1

    .line 128
    const-string v1, "authAccount"

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-nez p1, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    const-string v0, "session"

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    .line 65
    :cond_0
    const-string v1, "AccountSetupActivity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->b:Ljava/util/List;

    .line 77
    sget-object v1, Lcom/google/android/gms/auth/b/a;->H:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->b:Ljava/util/List;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    iget-object v3, v3, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    sget-object v1, Lcom/google/android/gms/auth/b/a;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/auth/b/a;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v3, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/auth/b/a;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    new-instance v4, Lcom/google/android/gms/auth/login/ah;

    invoke-direct {v4}, Lcom/google/android/gms/auth/login/ah;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/login/ah;->a(I)Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/login/ah;->k()Lcom/google/android/gms/auth/login/ah;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/login/ah;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    const-string v4, "SID"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/login/ah;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/login/ah;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->e()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/login/ah;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/login/ah;->b(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v1

    const v2, 0x7f100135

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/login/ah;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ah;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/ah;->c(Z)Lcom/google/android/gms/auth/login/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/login/ah;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    iget-object v1, v1, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/content/Intent;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    invoke-direct {p0, v5}, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a(I)V

    .line 84
    return-void

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 68
    const-string v0, "next_intent_index"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    goto/16 :goto_0

    .line 81
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/delegate/SetupAccountWorkflowRequest;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    sget-object v1, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->a:Ljava/lang/String;

    const-string v2, "onSaveInstanceState()!"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "next_intent_index"

    iget v1, p0, Lcom/google/android/gms/auth/setup/AccountSetupActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method
