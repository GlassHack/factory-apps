.class Lcom/google/glass/net/upload/ScottyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER_PREFIX:Ljava/lang/String; = "X-Goog-Upload-"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    .locals 5

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v2, "X-Goog-Upload-Status"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No status header from Scotty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    :try_start_0
    const-class v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 172
    :catch_0
    move-exception v2

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Upload server returned a status we didn\'t recognize: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 204
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;
    .locals 4

    .prologue
    .line 179
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 180
    const-string v0, "X-Goog-Upload-Command"

    invoke-virtual {p1}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->toCommandString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "X-Goog-Last-Modified"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v2, "X-Goog-Upload-File-Name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {p0}, Lcom/google/glass/auth/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 191
    :cond_0
    const-string v2, "SC"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const-string v2, "SC"

    invoke-interface {p0}, Lcom/google/glass/auth/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    return-object v1
.end method
