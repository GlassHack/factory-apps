.class public Lcom/google/android/gms/auth/login/LoginActivityTask;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizard/navigationbar/a;


# static fields
.field private static final E:Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field private static final G:Ljava/lang/String;

.field private static final H:Ljava/lang/String;

.field private static final I:Ljava/lang/String;

.field private static final J:Ljava/lang/String;

.field private static final K:Ljava/lang/String;

.field private static final L:Ljava/lang/String;


# instance fields
.field D:Z

.field private M:Landroid/widget/Button;

.field private N:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Lcom/google/android/gms/auth/login/av;

.field private W:Lcom/google/android/setupwizard/util/b;

.field private X:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auth_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->F:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".token_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->G:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->H:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->I:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " .browser_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->J:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".confirming_credentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->K:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".allow_credit_card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->D:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/LoginActivityTask;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->N:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    .line 113
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->P:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->O:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->Q:Z

    .line 116
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->T:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->R:Z

    .line 118
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->S:Z

    .line 119
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->U:Z

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/LoginActivityTask;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->U:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/login/LoginActivityTask;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->N:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->W:Lcom/google/android/setupwizard/util/b;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->X:Landroid/view/View;

    .line 193
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->V:Lcom/google/android/gms/auth/login/av;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/login/av;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "GLSActivity"

    const-string v1, "LoginActivityTask.BackgroudTask failed to cancel."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    const-string v1, "errorCode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->finish()V

    .line 284
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->m()V

    .line 295
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->B:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 289
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public final d()V
    .locals 9

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->d()V

    .line 205
    const-string v0, "GLSActivity"

    const-string v1, "Starting TokenRequestAsyncTask..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/google/android/gms/auth/login/ai;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->N:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->P:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->O:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->Q:Z

    iget-boolean v7, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->R:Z

    iget-boolean v8, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->S:Z

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/login/ai;-><init>(Lcom/google/android/gms/auth/login/LoginActivityTask;Landroid/content/Context;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->V:Lcom/google/android/gms/auth/login/av;

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->V:Lcom/google/android/gms/auth/login/av;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->m()V

    .line 267
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->W:Lcom/google/android/setupwizard/util/b;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->W:Lcom/google/android/setupwizard/util/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->X:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->removeView(Landroid/view/View;)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->l()V

    .line 188
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->a(Landroid/os/Bundle;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/LoginActivityTask;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onPause()V

    .line 198
    sget-boolean v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause(), class="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->N:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    const-string v0, "password"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->H:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->J:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->K:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->S:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/google/android/gms/auth/login/LoginActivityTask;->L:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->U:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onStart()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->f()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->W:Lcom/google/android/setupwizard/util/b;

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->W:Lcom/google/android/setupwizard/util/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->setContentView(Landroid/view/View;)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->d()V

    .line 162
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->l()V

    .line 175
    :goto_1
    return-void

    .line 156
    :cond_1
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->setContentView(I)V

    .line 157
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->M:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 168
    :cond_2
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100152

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->T:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 171
    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->T:Ljava/lang/String;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/LoginActivityTask;->T:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/LoginActivityTask;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
