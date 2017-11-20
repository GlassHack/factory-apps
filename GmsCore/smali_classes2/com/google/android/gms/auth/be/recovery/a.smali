.class public final Lcom/google/android/gms/auth/be/recovery/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/gms/auth/be/t;->a()Lcom/google/android/gms/auth/be/t;

    move-result-object v0

    .line 40
    const-string v1, "data_api"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "r_requesting_module"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v3, Lcom/google/android/gms/auth/be/v;->I:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    const-string v3, "country_lookup"

    const-string v4, "https://android.clients.google.com/auth/recovery/countrylookup"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/be/recovery/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/auth/be/recovery/b;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;-><init>()V

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while fetching country list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 50
    :try_start_0
    invoke-static {v2, v0}, Lcom/google/android/gms/auth/be/recovery/a;->a(Ljava/util/List;Lcom/google/android/gms/auth/be/recovery/b;)V

    .line 51
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/c;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/auth/be/recovery/b;->i:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/auth/firstparty/dataservice/c;->f:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v2, "GLSUser"

    const-string v3, "Error while parsing countryList json"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const-string v0, "BadResponse"

    iput-object v0, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->g:Ljava/lang/String;

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 6

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/gms/auth/be/t;->a()Lcom/google/android/gms/auth/be/t;

    move-result-object v0

    .line 66
    const-string v1, "data_api"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/gms/auth/be/recovery/b;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;-><init>()V

    .line 72
    iget-object v2, v0, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 73
    iget-object v0, v0, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->g:Ljava/lang/String;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    .line 75
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error code sent by server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->h:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 81
    invoke-static {v2, v0}, Lcom/google/android/gms/auth/be/recovery/a;->a(Ljava/util/List;Lcom/google/android/gms/auth/be/recovery/b;)V

    .line 86
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->f:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->g:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->i:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->d:Lcom/google/android/gms/auth/be/recovery/c;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/recovery/c;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/be/recovery/b;->e:Lcom/google/android/gms/auth/be/recovery/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/recovery/d;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/c;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iget-boolean v4, v0, Lcom/google/android/gms/auth/be/recovery/b;->b:Z

    iget-boolean v5, v0, Lcom/google/android/gms/auth/be/recovery/b;->a:Z

    iget-boolean v0, v0, Lcom/google/android/gms/auth/be/recovery/b;->c:Z

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;-><init>(Ljava/lang/String;ZZZ)V

    iput-object v3, v2, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    .line 97
    if-eqz p1, :cond_2

    .line 100
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/f;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/auth/be/recovery/f;->c:Z

    .line 103
    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/recovery/e;->a(Lcom/google/android/gms/auth/be/recovery/f;)V

    .line 105
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v2, "GLSUser"

    const-string v3, "Error while parsing countryList json"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const-string v0, "BadResponse"

    iput-object v0, v1, Lcom/google/android/gms/auth/firstparty/dataservice/c;->g:Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/c;->a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/auth/be/recovery/b;)V
    .locals 5

    .prologue
    .line 138
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/google/android/gms/auth/be/recovery/b;->h:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 141
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    new-instance v3, Lcom/google/android/gms/auth/Country;

    invoke-direct {v3}, Lcom/google/android/gms/auth/Country;-><init>()V

    .line 143
    const-string v4, "r_country_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/Country;->c:Ljava/lang/String;

    .line 144
    const-string v4, "r_country_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/auth/Country;->b:Ljava/lang/String;

    .line 145
    iget-object v2, v3, Lcom/google/android/gms/auth/Country;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/google/android/gms/auth/Country;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method
