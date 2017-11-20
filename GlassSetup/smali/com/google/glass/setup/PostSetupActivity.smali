.class public Lcom/google/glass/setup/PostSetupActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "PostSetupActivity.java"

# interfaces
.implements Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;,
        Lcom/google/glass/setup/PostSetupActivity$State;
    }
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bluetoothWaitingScreen:Landroid/view/View;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private displayName:Ljava/lang/String;

.field private instruction:Landroid/widget/TextView;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private messageDialog:Lcom/google/glass/widget/MessageDialog;

.field private final ongoingPairingListener:Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;

.field private overlay:Landroid/view/View;

.field private postSetup:Landroid/view/View;

.field state:Lcom/google/glass/setup/PostSetupActivity$State;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private textContainer:Landroid/widget/LinearLayout;

.field private welcome:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 45
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 69
    sget-object v0, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 78
    new-instance v0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;-><init>(Lcom/google/glass/setup/PostSetupActivity;Lcom/google/glass/setup/PostSetupActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->ongoingPairingListener:Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;

    .line 386
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/setup/PostSetupActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/PostSetupActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/setup/PostSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/PostSetupActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->showWelcomeScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/setup/PostSetupActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/PostSetupActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/setup/PostSetupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/PostSetupActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    return-object v0
.end method

.method private adjustTextPosition(Z)V
    .locals 2
    .param p1, "hasProfilePhoto"    # Z

    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 349
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p1, :cond_0

    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    return-void

    .line 349
    :cond_0
    const/16 v1, 0x10

    goto :goto_0
.end method

.method private getDeviceForPair(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 7
    .param p1, "btDeviceForPair"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 359
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 370
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-object v2

    .line 362
    .restart local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "invalid bt device for pair %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No btDeviceForPair."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private gotoTimeline()V
    .locals 3

    .prologue
    .line 302
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 303
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    .line 304
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->finish()V

    .line 308
    return-void
.end method

.method private setupWaitingScreen()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 128
    iget-object v6, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 129
    sget v6, Lcom/google/glass/setup/R$id;->bluetooth_icon:I

    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 130
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v6, Lcom/google/glass/setup/R$id;->setting_title:I

    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, "nameView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/setup/R$id;->setting_details:I

    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 132
    .local v5, "tetheredView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/setup/R$id;->setting_extra_details1:I

    .line 133
    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "companionView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/setup/R$id;->setting_info:I

    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 135
    .local v4, "pairingView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/setup/R$id;->setting_value:I

    .line 136
    invoke-virtual {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    .local v1, "headsetConnectionView":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    sget v6, Lcom/google/glass/setup/R$drawable;->ic_bluetooth_off_150:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    sget v6, Lcom/google/glass/setup/R$string;->bluetooth:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 151
    sget v6, Lcom/google/glass/setup/R$string;->bluetooth_waiting_to_pair:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/setup/R$color;->state_yellow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .end local v0    # "companionView":Landroid/widget/TextView;
    .end local v1    # "headsetConnectionView":Landroid/widget/TextView;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "nameView":Landroid/widget/TextView;
    .end local v4    # "pairingView":Landroid/widget/TextView;
    .end local v5    # "tetheredView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showWelcomeScreen()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->welcome:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->instruction:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->welcome:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/setup/R$string;->welcome_glass_users:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/setup/PostSetupActivity;->displayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/setup/PostSetupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupApplication;

    .line 231
    .local v0, "application":Lcom/google/glass/setup/SetupApplication;
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->getProfilePhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    .local v1, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 234
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 240
    .end local v1    # "backgroundBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->postSetup:Landroid/view/View;

    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-direct {p0, v7}, Lcom/google/glass/setup/PostSetupActivity;->adjustTextPosition(Z)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupApplication;->setProfilePhotoListener(Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;)V

    .line 255
    :goto_1
    return-void

    .line 236
    .restart local v1    # "backgroundBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No profile image loaded yet when trying to show welcome screen."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    .end local v1    # "backgroundBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-direct {p0, v6}, Lcom/google/glass/setup/PostSetupActivity;->adjustTextPosition(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onConfirm()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v3, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v2, v3, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 261
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->gotoTimeline()V

    .line 271
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v3, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v2, v3, :cond_1

    .line 265
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onConfirm is called with invalid state %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v4, v0, v1

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 271
    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v3, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v2, v3, :cond_2

    .line 267
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Skip onConfirm while waiting to pair"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "unknown state %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v4, v0, v1

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    .line 83
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->ongoingPairingListener:Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;

    invoke-virtual {v4, p0}, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 87
    if-eqz v2, :cond_1

    .line 88
    const-string v4, "bt_device_for_pair"

    .line 89
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-direct {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->getDeviceForPair(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->device:Landroid/bluetooth/BluetoothDevice;

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->displayName:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->displayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    sget v4, Lcom/google/glass/setup/R$string;->default_user_name:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->displayName:Ljava/lang/String;

    .line 100
    :cond_0
    sget v4, Lcom/google/glass/setup/R$id;->post_setup:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->postSetup:Landroid/view/View;

    .line 101
    sget v4, Lcom/google/glass/setup/R$id;->overlay:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    .line 102
    sget v4, Lcom/google/glass/setup/R$id;->welcome:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->welcome:Landroid/widget/TextView;

    .line 103
    sget v4, Lcom/google/glass/setup/R$id;->instruction:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->instruction:Landroid/widget/TextView;

    .line 104
    sget v4, Lcom/google/glass/setup/R$id;->textContainer:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->textContainer:Landroid/widget/LinearLayout;

    .line 106
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_2

    .line 107
    sget v4, Lcom/google/glass/setup/R$id;->bluetooth_device_stub:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 108
    .local v3, "stub":Landroid/view/ViewStub;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 109
    sget v4, Lcom/google/glass/setup/R$id;->bluetooth_device_card:I

    invoke-virtual {p0, v4}, Lcom/google/glass/setup/PostSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    .line 110
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->setupWaitingScreen()V

    .line 112
    sget-object v4, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 116
    .end local v3    # "stub":Landroid/view/ViewStub;
    :goto_0
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->welcome:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->instruction:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    .line 123
    .local v0, "authUtils":Lcom/google/glass/auth/AuthUtils;
    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 124
    .local v1, "googleAccount":Landroid/accounts/Account;
    invoke-static {p0, v1}, Lcom/google/glass/util/BackupRestoreUtil;->startRestoreFromAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 125
    .end local v0    # "authUtils":Lcom/google/glass/auth/AuthUtils;
    .end local v1    # "googleAccount":Landroid/accounts/Account;
    :goto_1
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->gotoTimeline()V

    goto :goto_1

    .line 114
    :cond_2
    sget-object v4, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    goto :goto_0
.end method

.method public onDestroyInternal()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 313
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->ongoingPairingListener:Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 5
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 276
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v2, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Dismiss pairing waiting screen by users, show welcome screen."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 279
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->showWelcomeScreen()V

    .line 293
    :goto_0
    return v0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v2, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onDismiss is called with invalid state %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v3, v0, v4

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :goto_1
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v2, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v1, v2, :cond_2

    .line 287
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skip onDismiss while in welcome screen. Users should tap to start."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unknown state %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v3, v0, v4

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onPauseInternal()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 215
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupApplication;->setProfilePhotoListener(Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;)V

    .line 216
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPause with state  = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onProfilePhotoLoaded(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Profile photo loaded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->welcome:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->overlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->postSetup:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/setup/PostSetupActivity;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/setup/PostSetupActivity;->adjustTextPosition(Z)V

    .line 338
    :cond_1
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupApplication;->setProfilePhotoListener(Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;)V

    .line 339
    return-void
.end method

.method protected onResumeInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 159
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupApplication;->setProfilePhotoListener(Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume with state  = %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/setup/R$string;->bluetooth_pairing_confirm:I

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/setup/R$string;->bluetooth_tap_to_pair:I

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/setup/R$drawable;->ic_bluetooth_on_150:I

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/PostSetupActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/PostSetupActivity$1;-><init>(Lcom/google/glass/setup/PostSetupActivity;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 200
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity;->bluetoothWaitingScreen:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/setup/PostSetupActivity;->showWelcomeScreen()V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 318
    sget v0, Lcom/google/glass/setup/R$layout;->post_setup_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected useCardScrollView()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method
