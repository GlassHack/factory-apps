.class public final Lcom/google/android/gms/auth/be/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/t;


# instance fields
.field private b:Lcom/google/android/gms/auth/be/u;

.field private final c:Lorg/apache/http/client/HttpClient;

.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x7530

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/t;->d:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/google/android/g/f;

    const-string v1, "GoogleAuth/1.4"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/g/f;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/t;->c:Lorg/apache/http/client/HttpClient;

    .line 75
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/auth/be/t;
    .locals 3

    .prologue
    .line 62
    const-class v1, Lcom/google/android/gms/auth/be/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/t;->a:Lcom/google/android/gms/auth/be/t;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/gms/auth/be/t;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/t;->a:Lcom/google/android/gms/auth/be/t;

    .line 65
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/t;->a:Lcom/google/android/gms/auth/be/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;)Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 267
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/auth/be/t;->b:Lcom/google/android/gms/auth/be/u;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/auth/be/t;->b:Lcom/google/android/gms/auth/be/u;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/u;->a:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Recovery"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Test result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v2, Lorg/apache/http/message/BasicStatusLine;

    new-instance v3, Lorg/apache/http/ProtocolVersion;

    const-string v4, "HTTP"

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0xc8

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v1

    .line 295
    :goto_0
    return-object v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(I)V

    .line 286
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 288
    if-eqz p3, :cond_2

    .line 289
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/be/t;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 295
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 309
    new-instance v2, Lcom/google/android/gms/auth/a/c;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/t;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 310
    new-instance v1, Lcom/google/android/gms/auth/be/i;

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    .line 312
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v4

    .line 314
    const-string v2, "oauth2:https://www.google.com/m8/feeds/"

    .line 315
    const/4 v6, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Bundle;ZLjava/lang/String;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/Map;I)V
    .locals 6

    .prologue
    .line 206
    const-string v0, "Recovery"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    const-string v0, " Request: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 210
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 211
    const-string v1, "<secret>"

    .line 212
    invoke-static {v4}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 213
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n RESULT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    if-eqz p1, :cond_2

    .line 219
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    const-string v1, "<secret>"

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 227
    :cond_2
    const-string v0, "Recovery"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/google/android/gms/auth/be/v;->a:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r_detail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r_action"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r_request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r__error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 255
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 256
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 257
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 258
    if-ltz v6, :cond_0

    .line 259
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/gms/auth/be/recovery/b;
    .locals 4

    .prologue
    .line 100
    const-string v0, "Account cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->a:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_request"

    const-string v3, "recovery_query"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_requesting_module"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "r_add_existing_recovery_info"

    if-eqz p3, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0, p1, v1, p4}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 110
    const-string v0, "recovery_query"

    const-string v2, "https://android.clients.google.com/auth/recovery"

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 115
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/recovery/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/auth/be/recovery/b;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const-string v0, "Account cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->a:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_request"

    const-string v3, "update"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_secondaryEmail"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_country"

    invoke-direct {v0, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "r_phone_number"

    invoke-direct {v0, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "r_is_broad_use"

    if-eqz p5, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0, p1, v1, p6}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 144
    const-string v0, "update"

    const-string v2, "https://android.clients.google.com/auth/recovery"

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 149
    const-string v0, "r__error"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v2, "Recovery"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Error while updating recovery info: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r__error"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "r__error"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    :goto_1
    return-object v0

    .line 140
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 174
    invoke-static {p2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/util/ArrayList;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 176
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4, v0, v1, v2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    const-string v0, "Recovery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null response from server for account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    const-string v1, "r__error"

    const-string v2, "BadResponse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 186
    invoke-static {v1}, Lcom/google/android/gms/auth/be/t;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 187
    const/16 v1, 0xc8

    if-eq v2, v1, :cond_1

    .line 188
    const-string v1, "r__error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 189
    const-string v1, "r__error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error response from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    invoke-static {p2, v0, v2}, Lcom/google/android/gms/auth/be/t;->a(Ljava/util/ArrayList;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "Recovery"

    const-string v2, "Error while talking to recovery backend"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v1, "r__error"

    const-string v2, "IOException"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
