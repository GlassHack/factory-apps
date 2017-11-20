.class Lcom/google/glass/net/upload/ScottyHelper;
.super Ljava/lang/Object;
.source "ScottyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/upload/ScottyHelper$ServerHeaders;,
        Lcom/google/glass/net/upload/ScottyHelper$ClientHeaders;,
        Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;,
        Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;,
        Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    }
.end annotation


# static fields
.field private static final DEVICE_SERIAL:Ljava/lang/String;

.field private static final HEADER_PREFIX:Ljava/lang/String; = "X-Goog-Upload-"

.field private static final OEM_BUILD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/build/BuildHelperProvider;->getInstance()Lcom/google/glass/build/BuildHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/build/BuildHelperProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper;

    .line 38
    invoke-interface {v0}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper;->DEVICE_SERIAL:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getInstance()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v0

    const-string v1, "ro.build.oem"

    const-string v2, "false"

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper;->OEM_BUILD:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    .locals 6
    .param p0, "response"    # Lcom/google/glass/net/SimplifiedHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    const-string v3, "X-Goog-Upload-Status"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "headerValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 177
    new-instance v2, Ljava/net/ProtocolException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No status header from Scotty: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    :try_start_0
    const-class v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Upload server returned a status we didn\'t recognize: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/io/File;)Ljava/util/Map;
    .locals 4
    .param p0, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p1, "command"    # Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .param p2, "fileToUpload"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/auth/AuthUtils;",
            "Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 221
    invoke-static {p0, p1, v0, v2, v3}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/lang/String;J)Ljava/util/Map;
    .locals 5
    .param p0, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p1, "command"    # Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .param p2, "pathToFile"    # Ljava/lang/String;
    .param p3, "lastModificationTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/auth/AuthUtils;",
            "Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 191
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "X-Goog-Upload-Command"

    invoke-virtual {p1}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->toCommandString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v3, "X-Goog-Last-Modified"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "file":Ljava/io/File;
    const-string v3, "X-Goog-Upload-File-Name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {p0}, Lcom/google/glass/auth/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 202
    .restart local v0    # "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "SC"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    const-string v3, "SC"

    invoke-interface {p0}, Lcom/google/glass/auth/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    const-string v3, "Device-OEM-Build"

    sget-object v4, Lcom/google/glass/net/upload/ScottyHelper;->OEM_BUILD:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v3, "Device-Serial"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    const-string v3, "Device-Serial"

    sget-object v4, Lcom/google/glass/net/upload/ScottyHelper;->DEVICE_SERIAL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    return-object v2
.end method
