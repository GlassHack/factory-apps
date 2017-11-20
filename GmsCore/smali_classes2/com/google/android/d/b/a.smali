.class public final Lcom/google/android/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/n/b/a/a;


# instance fields
.field public final a:Lcom/google/android/d/c/a;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    const-string v0, "Android-GData/1.1"

    invoke-direct {p0, p1, v0}, Lcom/google/android/d/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/google/android/d/c/a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    .line 144
    iget-object v0, p0, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    const-string v1, "GDataClient"

    invoke-virtual {v0, v1}, Lcom/google/android/d/c/a;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/d/b/a;->b:Landroid/content/ContentResolver;

    .line 146
    return-void
.end method

.method private a(Lcom/google/android/d/b/c;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 185
    const/16 v2, 0x1f4

    .line 186
    const/16 v1, 0xa

    .line 190
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    move v11, v1

    move-object v1, v3

    move v3, v11

    .line 200
    :goto_0
    if-lez v3, :cond_6

    .line 202
    invoke-interface {p1, v2}, Lcom/google/android/d/b/c;->a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 207
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GoogleLogin auth="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Executing "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/d/b/a;->a:Lcom/google/android/d/c/a;

    invoke-virtual {v1, v0}, Lcom/google/android/d/c/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 229
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 230
    if-nez v2, :cond_2

    .line 231
    const-string v0, "GDataClient"

    const-string v1, "StatusLine is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "StatusLine is null -- should not happen."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to execute HTTP request."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    throw v0

    .line 235
    :cond_2
    const-string v0, "GDataClient"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string v0, "GDataClient"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 238
    const-string v7, "GDataClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 243
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 245
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_5

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_5

    if-eqz v2, :cond_5

    .line 246
    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 247
    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    invoke-static {v0}, Lcom/google/android/d/b/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 250
    :cond_4
    return-object v0

    .line 256
    :cond_5
    const/16 v4, 0x12e

    if-ne v0, v4, :cond_6

    .line 258
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 259
    const-string v2, "Location"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 260
    if-nez v4, :cond_9

    .line 261
    const-string v2, "GDataClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 262
    const-string v2, "GDataClient"

    const-string v3, "Redirect requested but no Location specified."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    const-string v2, "GDataClient"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 287
    const-string v2, "GDataClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status code."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_7
    const/4 v2, 0x0

    .line 290
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 292
    if-eqz v1, :cond_d

    if-eqz v3, :cond_d

    .line 293
    :try_start_2
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    const/16 v4, 0x2000

    :try_start_3
    new-array v4, v4, [B

    .line 298
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_b

    .line 299
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 311
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_8

    .line 312
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v0

    .line 267
    :cond_9
    const-string v2, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 268
    const-string v2, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Following redirect to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_a
    :try_start_5
    new-instance v2, Ljava/net/URI;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    .line 280
    add-int/lit8 v3, v3, -0x1

    .line 284
    goto/16 :goto_0

    .line 272
    :catch_2
    move-exception v2

    .line 273
    const-string v3, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    const-string v0, "GDataClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as URI."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_b
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 305
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 306
    const-string v2, "GDataClient"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 307
    const-string v2, "GDataClient"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_c
    move-object v2, v1

    .line 311
    :cond_d
    if-eqz v3, :cond_e

    .line 312
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 315
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status code"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    if-eqz v2, :cond_f

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_f
    new-instance v2, Lcom/google/n/b/a/d;

    invoke-direct {v2, v1, v0}, Lcom/google/n/b/a/d;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 346
    if-nez p0, :cond_0

    .line 371
    :goto_0
    return-object p0

    .line 357
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 359
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 362
    new-array v4, v1, [B

    move v3, v1

    move v1, v2

    .line 363
    :goto_1
    if-lez v3, :cond_1

    .line 364
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 365
    if-lez v5, :cond_1

    .line 366
    sub-int/2addr v3, v5

    .line 367
    add-int/2addr v1, v5

    .line 368
    goto :goto_1

    .line 369
    :cond_1
    const-string v3, "GDataClient"

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v2, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p0, v0

    .line 371
    goto :goto_0
.end method

.method private a(Lcom/google/n/b/d/a;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    .line 461
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 463
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v0, v1}, Lcom/google/n/b/d/a;->a(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    :try_start_1
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serialized entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/google/android/d/b/a;->b:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 485
    invoke-interface {p1}, Lcom/google/n/b/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 486
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    throw v0

    .line 467
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to serialize entry: "

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 476
    :catch_2
    move-exception v0

    .line 478
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 should be supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/google/n/b/a/e;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/google/android/d/b/f;

    invoke-direct {v0}, Lcom/google/android/d/b/f;-><init>()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/google/android/d/b/b;

    invoke-direct {v0}, Lcom/google/android/d/b/b;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/d/b/a;->a(Lcom/google/android/d/b/c;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/n/b/d/a;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 393
    invoke-direct {p0, p3}, Lcom/google/android/d/b/a;->a(Lcom/google/n/b/d/a;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 394
    new-instance v1, Lcom/google/android/d/b/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/d/b/d;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/d/b/a;->a(Lcom/google/android/d/b/c;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    return-object v0

    .line 401
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 427
    invoke-static {p1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    new-instance v0, Lcom/google/android/d/b/d;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/d/b/d;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/d/b/a;->a(Lcom/google/android/d/b/c;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1

    .line 437
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
