.class Lcom/google/android/gsf/login/GetCountryListTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "GetCountryListTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/GetCountryListTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/GetCountryListTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/GetCountryListTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->this$0:Lcom/google/android/gsf/login/GetCountryListTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    .line 106
    iget-object v7, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->this$0:Lcom/google/android/gsf/login/GetCountryListTask;

    invoke-static {v7}, Lcom/google/android/gsf/login/GetCountryListTask;->access$000(Lcom/google/android/gsf/login/GetCountryListTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingRecoveryCountryInfo()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v5

    .line 107
    .local v5, "res":Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    iget-object v7, v5, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->error:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->this$0:Lcom/google/android/gsf/login/GetCountryListTask;

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gsf/login/GetCountryListTask;->ensureDelay(J)V

    .line 110
    sget-object v7, Lcom/google/android/gsf/loginservice/StatusHelper;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/StatusHelper;

    iget-object v8, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v7, v8}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v1, "countryJsonArray":Lorg/json/JSONArray;
    iget-object v7, v5, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->countries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/Country;

    .line 115
    .local v0, "country":Lcom/google/android/gms/auth/Country;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v3, "entry":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "r_country_code"

    iget-object v8, v0, Lcom/google/android/gms/auth/Country;->mCode:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v7, "r_country_name"

    iget-object v8, v0, Lcom/google/android/gms/auth/Country;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "GLSActivity"

    const-string v8, "Unexpected JSONException when creating country JSONArray."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v0    # "country":Lcom/google/android/gms/auth/Country;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "entry":Lorg/json/JSONObject;
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v6, "result":Landroid/content/Intent;
    const-string v7, "r_detail"

    iget-object v8, v5, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->allowedRecoveryOption:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v7, "r_country_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v7, "r_country"

    iget-object v8, v5, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->defaultCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v7, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "intent"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    sget-object v7, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    iget-object v8, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v7, v8}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 131
    iget-object v7, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    iget-object v7, p0, Lcom/google/android/gsf/login/GetCountryListTask$1;->this$0:Lcom/google/android/gsf/login/GetCountryListTask;

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gsf/login/GetCountryListTask;->ensureDelay(J)V

    goto :goto_0
.end method
