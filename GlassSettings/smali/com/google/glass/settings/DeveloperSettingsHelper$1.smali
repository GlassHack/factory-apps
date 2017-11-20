.class Lcom/google/glass/settings/DeveloperSettingsHelper$1;
.super Ljava/lang/Object;
.source "DeveloperSettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/DeveloperSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/DeveloperSettingsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 76
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-static {v5}, Lcom/google/glass/settings/DeveloperSettingsHelper;->access$000(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/android/glass/hidden/HiddenServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/glass/hidden/HiddenServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    .local v4, "services":[Ljava/lang/String;
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 82
    .local v3, "service":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-static {v8}, Lcom/google/glass/settings/DeveloperSettingsHelper;->access$000(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/android/glass/hidden/HiddenServiceManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/glass/hidden/HiddenServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .local v2, "obj":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "data":Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v2, v8, v0, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 81
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "obj":Landroid/os/IBinder;
    .end local v3    # "service":Ljava/lang/String;
    .end local v4    # "services":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-static {v5}, Lcom/google/glass/settings/DeveloperSettingsHelper;->access$100(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v7, "Failed to get list of running services"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v1, v7, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 89
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "obj":Landroid/os/IBinder;
    .restart local v3    # "service":Ljava/lang/String;
    .restart local v4    # "services":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-static {v8}, Lcom/google/glass/settings/DeveloperSettingsHelper;->access$100(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Someone wrote a bad service \'%s\' that doesn\'t like to be poked: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v6

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_1
.end method
