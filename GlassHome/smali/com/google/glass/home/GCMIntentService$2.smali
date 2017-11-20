.class final Lcom/google/glass/home/GCMIntentService$2;
.super Landroid/os/AsyncTask;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$application:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/GCMIntentService$2;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v4, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v4, "android_id"

    .line 234
    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-static {v3}, Lcom/google/glass/home/GCMIntentService;->access$000(Landroid/content/Context;)J

    move-result-wide v0

    .line 236
    .local v0, "gsfDeviceId":J
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/GCMIntentService$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deviceIds":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 242
    const-string v7, "ro.build.version.glass"

    iget-object v8, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    sget v9, Lcom/google/glass/home/R$string;->deviceinfo_unknown:I

    .line 243
    invoke-virtual {v8, v9}, Lcom/google/glass/home/HomeApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-static {v7, v8}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "majorVersion":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v7}, Lcom/google/glass/home/HomeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/GCMIntentService$2;->val$application:Lcom/google/glass/home/HomeApplication;

    .line 247
    invoke-virtual {v8}, Lcom/google/glass/home/HomeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 246
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .local v6, "version":I
    :goto_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 252
    .local v3, "osVersion":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 256
    .local v1, "hwVersion":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    .line 257
    .local v5, "requestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v4, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;-><init>()V

    .line 258
    .local v4, "request":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    invoke-virtual {v4, v10}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setAction(I)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 259
    iget-object v7, p0, Lcom/google/glass/home/GCMIntentService$2;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 260
    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 262
    iget-object v7, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 263
    invoke-virtual {v4, v2}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setMajorVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 264
    int-to-long v7, v6

    invoke-virtual {v4, v7, v8}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setVersion(J)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 265
    invoke-virtual {v4, v3}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setDeviceOsVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 266
    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setDeviceHardware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 267
    new-instance v7, Lcom/google/glass/home/GCMIntentService$2$1;

    invoke-direct {v7, p0}, Lcom/google/glass/home/GCMIntentService$2$1;-><init>(Lcom/google/glass/home/GCMIntentService$2;)V

    invoke-static {v5, v4, v7}, Lcom/google/glass/home/GCMIntentService;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    .line 283
    return-void

    .line 248
    .end local v1    # "hwVersion":Ljava/lang/String;
    .end local v3    # "osVersion":Ljava/lang/String;
    .end local v4    # "request":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .end local v5    # "requestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    .line 249
    .local v0, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, -0x1

    .restart local v6    # "version":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/GCMIntentService$2;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
