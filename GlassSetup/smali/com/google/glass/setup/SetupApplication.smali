.class public Lcom/google/glass/setup/SetupApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SetupApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;
    }
.end annotation


# instance fields
.field private profileImage:Landroid/graphics/Bitmap;

.field private profilePhotoListener:Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

.field private remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/setup/SetupApplication;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupApplication;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/setup/SetupApplication;->profileImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/setup/SetupApplication;)Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupApplication;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->profilePhotoListener:Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "applicationContext":Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/setup/SetupApplication;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lcom/google/glass/setup/SetupApplication;

    .end local v0    # "applicationContext":Landroid/content/Context;
    return-object v0

    .line 111
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the HomeApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getProfilePhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->profileImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 49
    new-instance v1, Lcom/google/glass/setup/ShutdownHandler;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/ShutdownHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/setup/SetupApplication;->shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;

    .line 50
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker;

    iget-object v1, p0, Lcom/google/glass/setup/SetupApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 51
    .local v0, "connectionChecker":Lcom/google/glass/companion/ConnectionChecker;
    new-instance v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V

    iput-object v1, p0, Lcom/google/glass/setup/SetupApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 52
    return-void
.end method

.method public onSetupFinish()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;

    invoke-virtual {v0}, Lcom/google/glass/setup/ShutdownHandler;->disable()V

    .line 100
    return-void
.end method

.method public onSetupStart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;

    invoke-virtual {v0}, Lcom/google/glass/setup/ShutdownHandler;->enable()V

    .line 95
    return-void
.end method

.method public onUserActionEnd()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;

    invoke-virtual {v0}, Lcom/google/glass/setup/ShutdownHandler;->markInactive()V

    .line 90
    return-void
.end method

.method public onUserActionStart()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/setup/SetupApplication;->shutdownHandler:Lcom/google/glass/setup/ShutdownHandler;

    invoke-virtual {v0}, Lcom/google/glass/setup/ShutdownHandler;->markActive()V

    .line 85
    return-void
.end method

.method public prepareProfileImage(Ljava/lang/String;)V
    .locals 9
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 59
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/google/glass/setup/SetupApplication$1;

    .line 60
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/setup/SetupApplication$1;-><init>(Lcom/google/glass/setup/SetupApplication;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 79
    .local v0, "imageLoadingTask":Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 80
    return-void
.end method

.method public setProfilePhotoListener(Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/glass/setup/SetupApplication;->profilePhotoListener:Lcom/google/glass/setup/SetupApplication$ProfilePhotoListener;

    .line 124
    return-void
.end method

.method setRemoteCompanionProxyForTest(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p1, "proxyForTest"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 131
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 132
    iput-object p1, p0, Lcom/google/glass/setup/SetupApplication;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 133
    return-void
.end method
