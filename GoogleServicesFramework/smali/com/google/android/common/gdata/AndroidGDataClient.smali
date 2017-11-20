.class public Lcom/google/android/common/gdata/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# instance fields
.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v0, "Android-GData/1.1"

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appAndVersion"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 144
    iget-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 146
    return-void
.end method

.method private createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 27
    .param p1, "creator"    # Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/16 v19, 0x0

    .line 185
    .local v19, "response":Lorg/apache/http/HttpResponse;
    const/16 v20, 0x1f4

    .line 186
    .local v20, "status":I
    const/16 v17, 0xa

    .line 190
    .local v17, "redirectsLeft":I
    :try_start_0
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .local v22, "uri":Ljava/net/URI;
    :goto_0
    if-lez v17, :cond_6

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v18

    .line 203
    .local v18, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 207
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 208
    const-string v24, "Authorization"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GoogleLogin auth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 217
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Executing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    const/16 v19, 0x0

    .line 223
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 229
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    .line 230
    .local v21, "statusLine":Lorg/apache/http/StatusLine;
    if-nez v21, :cond_2

    .line 231
    const-string v24, "GDataClient"

    const-string v25, "StatusLine is null."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v24, Ljava/lang/NullPointerException;

    const-string v25, "StatusLine is null -- should not happen."

    invoke-direct/range {v24 .. v25}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 191
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v21    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v22    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v23

    .line 192
    .local v23, "use":Ljava/net/URISyntaxException;
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " as URI."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " as URI: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 224
    .end local v23    # "use":Ljava/net/URISyntaxException;
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v22    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v14

    .line 225
    .local v14, "ioe":Ljava/io/IOException;
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to execute HTTP request."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    throw v14

    .line 235
    .end local v14    # "ioe":Ljava/io/IOException;
    .restart local v21    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_2
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 236
    const-string v24, "GDataClient"

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/http/Header;
    array-length v15, v3

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v15, :cond_3

    aget-object v11, v3, v12

    .line 238
    .local v11, "h":Lorg/apache/http/Header;
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 241
    .end local v3    # "arr$":[Lorg/apache/http/Header;
    .end local v11    # "h":Lorg/apache/http/Header;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_3
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 243
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 245
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const/16 v24, 0xc8

    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    const/16 v24, 0x12c

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    if-eqz v7, :cond_5

    .line 246
    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v13

    .line 247
    .local v13, "in":Ljava/io/InputStream;
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/common/gdata/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v13

    .line 250
    :cond_4
    return-object v13

    .line 256
    .end local v13    # "in":Ljava/io/InputStream;
    :cond_5
    const/16 v24, 0x12e

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 258
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 259
    const-string v24, "Location"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 260
    .local v16, "location":Lorg/apache/http/Header;
    if-nez v16, :cond_9

    .line 261
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 262
    const-string v24, "GDataClient"

    const-string v25, "Redirect requested but no Location specified."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "location":Lorg/apache/http/Header;
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v21    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v22    # "uri":Ljava/net/URI;
    :cond_6
    const-string v24, "GDataClient"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 287
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Received "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " status code."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_7
    const/4 v8, 0x0

    .line 290
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 292
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v19, :cond_d

    if-eqz v7, :cond_d

    .line 293
    :try_start_2
    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v13

    .line 294
    .restart local v13    # "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x2000

    :try_start_3
    move/from16 v0, v24

    new-array v5, v0, [B

    .line 298
    .local v5, "buf":[B
    :goto_2
    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "bytesRead":I
    if-lez v6, :cond_b

    .line 299
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 302
    .end local v5    # "buf":[B
    .end local v6    # "bytesRead":I
    :catchall_0
    move-exception v24

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 311
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v24

    :goto_3
    if-eqz v7, :cond_8

    .line 312
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v24

    .line 267
    .end local v8    # "errorMessage":Ljava/lang/String;
    .restart local v16    # "location":Lorg/apache/http/Header;
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v21    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v22    # "uri":Ljava/net/URI;
    :cond_9
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 268
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Following redirect to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_a
    :try_start_5
    new-instance v22, Ljava/net/URI;

    .end local v22    # "uri":Ljava/net/URI;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    .line 280
    .restart local v22    # "uri":Ljava/net/URI;
    add-int/lit8 v17, v17, -0x1

    .line 284
    goto/16 :goto_0

    .line 272
    .end local v22    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v23

    .line 273
    .restart local v23    # "use":Ljava/net/URISyntaxException;
    const-string v24, "GDataClient"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 274
    const-string v24, "GDataClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " as URI."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " as URI."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 302
    .end local v16    # "location":Lorg/apache/http/Header;
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v21    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v23    # "use":Ljava/net/URISyntaxException;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "bytesRead":I
    .restart local v8    # "errorMessage":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/InputStream;
    :cond_b
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 305
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 306
    .end local v8    # "errorMessage":Ljava/lang/String;
    .local v9, "errorMessage":Ljava/lang/String;
    :try_start_7
    const-string v24, "GDataClient"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 307
    const-string v24, "GDataClient"

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_c
    move-object v8, v9

    .line 311
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "buf":[B
    .end local v6    # "bytesRead":I
    .end local v9    # "errorMessage":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :cond_d
    if-eqz v7, :cond_e

    .line 312
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 315
    :cond_e
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " status code"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "exceptionMessage":Ljava/lang/String;
    if-eqz v8, :cond_f

    .line 317
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 319
    :cond_f
    new-instance v24, Lcom/google/wireless/gdata/client/HttpException;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-direct {v0, v10, v1, v2}, Lcom/google/wireless/gdata/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v24

    .line 311
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v10    # "exceptionMessage":Ljava/lang/String;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "bytesRead":I
    .restart local v9    # "errorMessage":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v24

    move-object v8, v9

    .end local v9    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 10
    .param p1, "entry"    # Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 463
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 473
    .local v3, "entryBytes":[B
    if-eqz v3, :cond_0

    const-string v6, "GDataClient"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    :try_start_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serialized entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 484
    :cond_0
    iget-object v6, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v6}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    .line 485
    .local v2, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-interface {p1}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 486
    return-object v2

    .line 464
    .end local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v3    # "entryBytes":[B
    :catch_0
    move-exception v4

    .line 465
    .local v4, "ioe":Ljava/io/IOException;
    const-string v6, "GDataClient"

    const-string v7, "Unable to serialize entry."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    throw v4

    .line 467
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Unable to serialize entry: "

    invoke-direct {v6, v7, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 476
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "entryBytes":[B
    :catch_2
    move-exception v5

    .line 478
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "UTF-8 should be supported!"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 346
    if-nez p1, :cond_0

    .line 371
    .end local p1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object p1

    .line 357
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_0
    const/16 v2, 0x4000

    .line 358
    .local v2, "bufferSize":I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 359
    .local v0, "bin":Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 360
    const/16 v5, 0x4000

    .line 361
    .local v5, "wanted":I
    const/4 v4, 0x0

    .line 362
    .local v4, "totalReceived":I
    new-array v1, v5, [B

    .line 363
    .local v1, "buf":[B
    :goto_1
    if-lez v5, :cond_1

    .line 364
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 365
    .local v3, "got":I
    if-gtz v3, :cond_2

    .line 369
    .end local v3    # "got":I
    :cond_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 371
    goto :goto_0

    .line 366
    .restart local v3    # "got":I
    :cond_2
    sub-int/2addr v5, v3

    .line 367
    add-int/2addr v4, v3

    .line 368
    goto :goto_1
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 4
    .param p1, "feedUrl"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 394
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 398
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 399
    return-object v1

    .line 401
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/google/android/common/gdata/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/common/gdata/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "editUri"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify an non-empty edit url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_0
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v2, "DELETE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 436
    .local v0, "in":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 437
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to delete entry."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "feedUrl"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 331
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 332
    return-object v0

    .line 334
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to access feed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 4
    .param p1, "editUri"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 412
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v3, "PUT"

    invoke-direct {v2, v3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 416
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 417
    return-object v1

    .line 419
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to update entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
