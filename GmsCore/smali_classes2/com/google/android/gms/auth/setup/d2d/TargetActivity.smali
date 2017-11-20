.class public Lcom/google/android/gms/auth/setup/d2d/TargetActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/a;
.implements Lcom/google/android/gms/auth/setup/d2d/ab;
.implements Lcom/google/android/gms/auth/setup/d2d/ai;
.implements Lcom/google/android/gms/auth/setup/d2d/y;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/auth/setup/d2d/ac;

.field private c:Landroid/app/Fragment;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "useImmersiveMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a:Ljava/lang/String;

    const-string v2, "D2D account setup only available on L."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a:Ljava/lang/String;

    const-string v2, "NFC not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a:Ljava/lang/String;

    const-string v2, "Bluetooth not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/o;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/setup/d2d/o;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/z;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/z;-><init>()V

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 208
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->setResult(I)V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->finish()V

    .line 264
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->onBackPressed()V

    .line 248
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 242
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 243
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/h;)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/v;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/v;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/setup/d2d/v;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/setup/d2d/v;->a(Lcom/google/m/b/a/d/h;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 159
    const-string v2, "main"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    .line 164
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 165
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gms/auth/setup/d2d/TargetAddAccountsActivity;->a(Landroid/content/Context;ZLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->finish()V

    .line 186
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->h()V

    .line 253
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->g()V

    .line 144
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->h()V

    .line 149
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->g()V

    .line 191
    return-void
.end method

.method public final f()Lcom/google/android/gms/d/b;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->a()Lcom/google/android/gms/d/b;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->finish()V

    .line 259
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->a:Ljava/lang/String;

    const-string v1, "Started D2D account setup but preconditions not met!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->h()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    .line 94
    const-string v0, "useImmersiveMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    .line 99
    :goto_1
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->setContentView(Landroid/view/View;)V

    .line 101
    const v1, 0x7f100087

    const v2, 0x7f030029

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupwizard/util/b;->a(II)Landroid/view/View;

    .line 103
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/n;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/setup/d2d/n;-><init>(Lcom/google/android/gms/auth/setup/d2d/TargetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->c:Landroid/app/Fragment;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "resources"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/ac;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b:Lcom/google/android/gms/auth/setup/d2d/ac;

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b:Lcom/google/android/gms/auth/setup/d2d/ac;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b:Lcom/google/android/gms/auth/setup/d2d/ac;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->b:Lcom/google/android/gms/auth/setup/d2d/ac;

    const-string v2, "resources"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "useImmersiveMode"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/TargetActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method
