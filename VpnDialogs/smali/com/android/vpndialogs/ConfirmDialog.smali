.class public Lcom/android/vpndialogs/ConfirmDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mPackage:Ljava/lang/String;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, -0x1

    .line 100
    if-ne p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vpndialogs/ConfirmDialog;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VpnConfirm"

    const-string v2, "onClick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    .line 51
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    .line 54
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mService:Landroid/net/IConnectivityManager;

    iget-object v5, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/vpndialogs/ConfirmDialog;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->finish()V

    .line 86
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mPackage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    const/high16 v4, 0x7f020000

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "view":Landroid/view/View;
    const/high16 v4, 0x7f050000

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x7f030000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/vpndialogs/ConfirmDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x1010355

    iput v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 70
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x1040014

    invoke-virtual {p0, v5}, Lcom/android/vpndialogs/ConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/vpndialogs/ConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/vpndialogs/ConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 74
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->setupAlert()V

    .line 78
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 79
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    .line 80
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v4, p0, Lcom/android/vpndialogs/ConfirmDialog;->mButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 82
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "VpnConfirm"

    const-string v5, "onResume"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/vpndialogs/ConfirmDialog;->finish()V

    goto/16 :goto_0
.end method
