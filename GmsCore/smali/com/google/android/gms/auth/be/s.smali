.class public final Lcom/google/android/gms/auth/be/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;


# instance fields
.field private final b:Lcom/google/android/gms/auth/a/c;

.field private final c:Lcom/google/android/gms/auth/be/h;

.field private final d:Landroid/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 55
    sput-object v0, Lcom/google/android/gms/auth/be/s;->a:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/google/android/gms/auth/be/s;->a:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/auth/be/s;-><init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;Landroid/accounts/AccountManager;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;Landroid/accounts/AccountManager;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/a/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/s;->b:Lcom/google/android/gms/auth/a/c;

    .line 77
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/h;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/s;->c:Lcom/google/android/gms/auth/be/h;

    .line 78
    invoke-static {p3}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/s;->d:Landroid/accounts/AccountManager;

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/b/a;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "packageName"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "packageSignature"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pin"

    iget-object v6, p2, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/auth/be/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v0, "rapt"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_0

    .line 202
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "ReauthClient"

    const-string v2, "Network error calling verify PIN."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    invoke-direct {v0, v8}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(I)V

    goto :goto_0

    .line 204
    :cond_0
    :try_start_2
    const-string v0, "errorCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    const-string v0, "errorMessage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "ReauthClient"

    const-string v3, "VerifyPin error, code=%d, message=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Lcom/google/android/gms/auth/be/s;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    if-nez v0, :cond_1

    .line 210
    const-string v0, "ReauthClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown errorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 213
    :goto_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    const-string v1, "ReauthClient"

    const-string v2, "Error deserializing verify PIN response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    invoke-direct {v0, v7}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(I)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->c:Lcom/google/android/gms/auth/be/h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 229
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, p3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->c:Lcom/google/android/gms/auth/be/h;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    const-string v4, "reauthClient"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 87
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Landroid/accounts/Account;

    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->b:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->c:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->d:Landroid/accounts/AccountManager;

    const-string v1, "com.google.android.gms.auth.confirm.CredentialsState"

    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 108
    :goto_0
    if-nez v1, :cond_2

    .line 109
    const-string v0, "ReauthClient"

    const-string v1, "Reauth settings not cached. Set force=true to hit server."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 122
    :goto_1
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(I)V

    goto :goto_1

    .line 101
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/auth/be/s;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/auth/b/a;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "token"

    invoke-direct {v7, v8, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v1, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "packageName"

    invoke-direct {v6, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v1

    const/4 v1, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "packageSignature"

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/auth/be/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 105
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "ReauthClient"

    const-string v2, "Network error calling reauth settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    invoke-direct {v0, v9}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(I)V

    goto :goto_1

    .line 114
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "password"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pin"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    new-instance v5, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;

    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;

    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "reset_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setup_url"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "length"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordSettings;Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;)V

    .line 117
    iget-object v3, p0, Lcom/google/android/gms/auth/be/s;->d:Landroid/accounts/AccountManager;

    const-string v4, "com.google.android.gms.auth.confirm.CredentialsState"

    invoke-virtual {v3, v2, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string v1, "ReauthClient"

    const-string v2, "Error deserializing reauth settings response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;

    invoke-direct {v0, v10}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;-><init>(I)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    .locals 3

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->b:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/auth/be/s;->d:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;-><init>(I)V

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/be/s;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;

    move-result-object v0

    goto :goto_0
.end method
