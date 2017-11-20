.class public Lcom/google/android/location/network/ConfirmAlertActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    .line 204
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 49
    sput p0, Lcom/google/android/location/network/ConfirmAlertActivity;->a:I

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 49
    sput p0, Lcom/google/android/location/network/ConfirmAlertActivity;->b:I

    return p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 176
    const/4 v0, 0x0

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/network/ConfirmAlertActivity;->overridePendingTransition(II)V

    .line 177
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 181
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    .line 182
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "confirmLgaayl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->finish()V

    .line 189
    return-void

    :cond_1
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    new-instance v1, Lcom/google/android/location/network/e;

    invoke-direct {v1, p0}, Lcom/google/android/location/network/e;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v1}, Lcom/google/android/location/network/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "GmsConfirmAlertActivity"

    const-string v2, ""

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ConfirmAlertActivity launched even though user previously clicked \"Don\'t show again\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    .line 114
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 118
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    const v0, 0x7f100299

    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    const v0, 0x7f100298

    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v0, 0x7f100017

    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03004f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v3, 0x7f0d002f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 128
    new-instance v3, Lcom/google/android/location/network/a;

    invoke-direct {v3, p0}, Lcom/google/android/location/network/a;-><init>(Lcom/google/android/location/network/ConfirmAlertActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 138
    new-instance v3, Lcom/google/android/location/network/b;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/location/network/b;-><init>(Lcom/google/android/location/network/ConfirmAlertActivity;Lcom/google/android/location/network/e;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 154
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 155
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    iget-boolean v0, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    if-nez v0, :cond_0

    .line 162
    sget v0, Lcom/google/android/location/network/ConfirmAlertActivity;->a:I

    if-ne v0, v3, :cond_0

    sget v0, Lcom/google/android/location/network/ConfirmAlertActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput v2, Lcom/google/android/location/network/ConfirmAlertActivity;->a:I

    sput v2, Lcom/google/android/location/network/ConfirmAlertActivity;->b:I

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/network/ConfirmAlertActivity;->c:Z

    invoke-static {v0, v1}, Lcom/google/android/location/network/NetworkLocationService;->a(Landroid/content/Context;Z)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/google/android/location/network/ConfirmAlertActivity;->finish()V

    .line 168
    :cond_1
    return-void
.end method
