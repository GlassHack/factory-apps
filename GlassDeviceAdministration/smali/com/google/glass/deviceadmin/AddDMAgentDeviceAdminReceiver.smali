.class public Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddDMAgentDeviceAdminReceiver.java"


# static fields
.field static final DMAGENT_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.enterprise.dmagent.glass"

    const-string v2, "com.google.android.apps.enterprise.dmagent.DeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;->DMAGENT_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string v1, "com.google.glass.deviceadmin.ADD_DMAGENT_DEVICE_ADMIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;->setResultCode(I)V

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->getInstance()Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->get(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 34
    .local v0, "manager":Landroid/app/admin/DevicePolicyManager;
    sget-object v1, Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;->DMAGENT_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/hidden/HiddenDevicePolicyManager;->setActiveAdmin(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;Z)V

    .line 35
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;->setResultCode(I)V

    .line 36
    invoke-virtual {p0}, Lcom/google/glass/deviceadmin/AddDMAgentDeviceAdminReceiver;->abortBroadcast()V

    goto :goto_0
.end method
