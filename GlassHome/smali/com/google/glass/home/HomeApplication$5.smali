.class Lcom/google/glass/home/HomeApplication$5;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->registerGcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 405
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v8}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 406
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8, v0}, Lcom/google/glass/home/HomeApplication;->access$1100(Lcom/google/glass/home/HomeApplication;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 407
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Could not register for GCM because Play Services not available!"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    .line 411
    .local v3, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    const-class v9, Lcom/google/glass/home/HomeApplication;

    .line 412
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 411
    invoke-virtual {v8, v9, v11}, Lcom/google/glass/home/HomeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 413
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "GCM_REGISTRATION_KEY"

    const-string v9, ""

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "registrationId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 415
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Registering for GCM ..."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "229668747847"

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 423
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Successfully registered for GCM [registrationId=%s]"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 426
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "GCM_REGISTRATION_KEY"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    move-object v7, v6

    .line 435
    .local v7, "registrationIdFinal":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    .line 436
    .local v5, "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v8, Lcom/google/glass/home/HomeApplication$5$1;

    invoke-direct {v8, p0, v7}, Lcom/google/glass/home/HomeApplication$5$1;-><init>(Lcom/google/glass/home/HomeApplication$5;Ljava/lang/String;)V

    invoke-static {v5, v6, v8}, Lcom/google/glass/home/GCMIntentService;->isRegisteredWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/glass/net/ProtoResponseHandler;)V

    goto :goto_0

    .line 418
    .end local v5    # "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v7    # "registrationIdFinal":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Could not register for GCM, will retry."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v1, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "retry_gcm_register"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/glass/home/HomeApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v8, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v8}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Already registered for GCM [registrationId=%s]"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
