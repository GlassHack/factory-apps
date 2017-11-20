.class public Lcom/google/android/wearable/app/KeepAliveService;
.super Landroid/app/Service;
.source "KeepAliveService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/wearable/app/KeepAliveService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/wearable/app/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x108000a

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 30
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/wearable/app/KeepAliveService;->startForeground(ILandroid/app/Notification;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
