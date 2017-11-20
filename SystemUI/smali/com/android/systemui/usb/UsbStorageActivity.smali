.class public Lcom/android/systemui/usb/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBanner:Landroid/widget/TextView;

.field private mDestroyed:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnmountButton:Landroid/widget/Button;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$1;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/systemui/usb/UsbStorageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageActivity$2;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbStorageActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->handleUsbStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/UsbStorageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/UsbStorageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsersAsync()V

    return-void
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$9;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method private checkStorageUsersAsync()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 284
    .local v3, "ims":Landroid/os/storage/IMountService;
    if-nez v3, :cond_0

    .line 286
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 288
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "extStoragePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 291
    .local v5, "showDialog":Z
    :try_start_0
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 292
    .local v6, "stUsers":[I
    if-eqz v6, :cond_2

    array-length v7, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_2

    .line 293
    const/4 v5, 0x1

    .line 306
    .end local v6    # "stUsers":[I
    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 308
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    .line 313
    :goto_1
    return-void

    .line 296
    .restart local v6    # "stUsers":[I
    :cond_2
    :try_start_1
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 297
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v4

    .line 298
    .local v4, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-lez v7, :cond_1

    .line 299
    const/4 v5, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "stUsers":[I
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V

    goto :goto_0

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 203
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 204
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "connected":Z
    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    .line 200
    :cond_0
    return-void
.end method

.method private scheduleShowDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$6;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method private switchDisplay(Z)V
    .locals 2
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$3;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 3
    .param p1, "usbStorageInUse"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x1080676

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x1040472

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x1040473

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x1080675

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x104046a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x104046b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageActivity$7;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageActivity$8;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->finish()V

    .line 327
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->checkStorageUsers()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 103
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUIHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI UsbStorageActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 120
    :cond_1
    const v1, 0x10900b9

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->setContentView(I)V

    .line 122
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    .line 123
    const v1, 0x102035a

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    .line 124
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    .line 126
    const v1, 0x102035b

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x102035c

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 131
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x1040479

    const/4 v0, 0x0

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    return-object v0

    .line 214
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040476

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$5;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040477

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040478

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104046d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/usb/UsbStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/usb/UsbStorageActivity$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/UsbStorageActivity$4;-><init>(Lcom/android/systemui/usb/UsbStorageActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UsbStorageActivity"

    const-string v2, "Failed to read UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
