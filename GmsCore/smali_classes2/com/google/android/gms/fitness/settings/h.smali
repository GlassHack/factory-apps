.class public final Lcom/google/android/gms/fitness/settings/h;
.super Lcom/google/android/gms/fitness/settings/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/fitness/settings/a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/settings/i;)Lcom/google/android/gms/fitness/settings/j;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "www.googleapis.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/oauth2/v3/authapps"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OAuth "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/google/android/gms/fitness/settings/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/fitness/settings/h;->a(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/settings/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v3, Lcom/google/android/gms/fitness/settings/j;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/settings/j;-><init>()V

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v0, "apps"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v1

    .line 65
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 66
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 67
    new-instance v7, Lcom/google/android/gms/fitness/settings/k;

    invoke-direct {v7}, Lcom/google/android/gms/fitness/settings/k;-><init>()V

    .line 68
    const-string v0, "developer_email"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "developer_email"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->e:Ljava/lang/String;

    .line 71
    :cond_0
    const-string v0, "display_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "display_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->c:Ljava/lang/String;

    .line 74
    :cond_1
    const-string v0, "icon_url"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "icon_url"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->d:Ljava/lang/String;

    .line 77
    :cond_2
    const-string v0, "project_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const-string v0, "project_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->b:Ljava/lang/String;

    .line 80
    :cond_3
    const-string v0, "revocation_handle"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    const-string v0, "revocation_handle"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->a:Ljava/lang/String;

    .line 83
    :cond_4
    const-string v0, "scope_ids"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    const-string v0, "scope_ids"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 86
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 87
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_5
    iput-object v9, v7, Lcom/google/android/gms/fitness/settings/k;->f:Ljava/util/List;

    .line 91
    :cond_6
    const-string v0, "clients"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    const-string v0, "clients"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 93
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 94
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 95
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 96
    const-string v10, "android_package_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 97
    const-string v10, "android_package_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :cond_8
    iput-object v8, v7, Lcom/google/android/gms/fitness/settings/k;->g:Ljava/util/List;

    .line 102
    :cond_9
    iget-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/google/android/gms/fitness/settings/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 103
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 106
    :cond_b
    iput-object v4, v3, Lcom/google/android/gms/fitness/settings/j;->c:Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    return-object v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lcom/google/android/gms/fitness/settings/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/settings/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/android/gms/fitness/settings/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/settings/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_2
    move-exception v0

    .line 113
    new-instance v1, Lcom/google/android/gms/fitness/settings/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/settings/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/gms/fitness/settings/i;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/settings/h;->a(Lcom/google/android/gms/fitness/settings/i;)Lcom/google/android/gms/fitness/settings/j;

    move-result-object v0

    return-object v0
.end method
