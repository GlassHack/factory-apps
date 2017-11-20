.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 121
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    move v0, v1

    .line 122
    .local v0, "allow":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    .local v1, "alwaysAllow":Z
    :goto_1
    :try_start_0
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 125
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 126
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    if-eqz v0, :cond_2

    .line 127
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Landroid/hardware/usb/IUsbManager;->allowUsbDebugging(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 135
    return-void

    .end local v0    # "allow":Z
    .end local v1    # "alwaysAllow":Z
    :cond_0
    move v0, v5

    .line 121
    goto :goto_0

    .restart local v0    # "allow":Z
    :cond_1
    move v1, v5

    .line 122
    goto :goto_1

    .line 129
    .restart local v1    # "alwaysAllow":Z
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->denyUsbDebugging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 131
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "UsbDebuggingActivity"

    const-string v6, "Unable to notify Usb service"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v5, "service.adb.tcp.port"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 54
    new-instance v5, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v5, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 58
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "fingerprints"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "fingerprints":Ljava/lang/String;
    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    .line 61
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 67
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f0a0026

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    const v5, 0x10802d7

    iput v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 69
    const v5, 0x7f0a0027

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 70
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 71
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 77
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090028

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "checkbox":Landroid/view/View;
    const v5, 0x102027b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 79
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v6, 0x7f0a0028

    invoke-virtual {p0, v6}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->setupAlert()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 117
    return-void
.end method
