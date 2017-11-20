.class public Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/util/concurrent/FutureTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->b:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->setContentView(I)V

    .line 30
    iput-boolean v4, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->b:Z

    .line 32
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    new-instance v1, Lcom/google/android/gms/auth/trustagent/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/m;-><init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    if-eqz v1, :cond_1

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const v1, 0x7f100193

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz v1, :cond_0

    const-class v3, Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const v1, 0x7f100195

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->c:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->c:Ljava/util/concurrent/FutureTask;

    .line 75
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->b:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->finish()V

    .line 77
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->overridePendingTransition(II)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->a:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/n;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/n;-><init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->c:Ljava/util/concurrent/FutureTask;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFirstNotificationActivity;->c:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method
