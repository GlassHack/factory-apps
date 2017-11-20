.class public Lcom/google/android/search/core/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/google/android/shared/exception/GsaIOException;

    const v2, 0x40003

    invoke-direct {v1, v0, v2}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 41
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/net/ProtocolException;
    const v1, 0x4000e

    invoke-static {v0, v1}, Lcom/google/android/search/core/util/NetworkUtils;->throwGsaIOExceptionFromOkHttpException(Ljava/io/IOException;I)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const v1, 0x40002

    invoke-static {v0, v1}, Lcom/google/android/search/core/util/NetworkUtils;->throwGsaIOExceptionFromOkHttpException(Ljava/io/IOException;I)V

    goto :goto_0
.end method

.method public static getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaIOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation

    .prologue
    const v5, 0x4000d

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 60
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 71
    .local v3, "httpCode":I
    new-instance v4, Lcom/google/android/shared/exception/HttpException;

    const-string v5, "HttpURLConnection.getInputStream() failed"

    invoke-direct {v4, v3, v5}, Lcom/google/android/shared/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 66
    .end local v3    # "httpCode":I
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e2":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/shared/exception/GsaIOException;

    invoke-direct {v4, v1, v5}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v4

    .line 72
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/shared/exception/GsaIOException;

    invoke-direct {v4, v0, v5}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v4
.end method

.method private static gsaErrorCodeFromOkHttpException(Ljava/io/IOException;)I
    .locals 4
    .param p0, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v2, 0x50002

    const/4 v1, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "m":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    instance-of v3, p0, Ljava/net/ProtocolException;

    if-eqz v3, :cond_7

    .line 148
    const-string v3, "Received HTTP_PROXY_AUTH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const v1, 0x50001

    goto :goto_0

    .line 150
    :cond_2
    const-string v3, "expected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "bytes but received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    const v1, 0x50016

    goto :goto_0

    .line 152
    :cond_3
    const-string v3, "unexpected end of stream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    const-string/jumbo v2, "version != 3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    const v1, 0x50003

    goto :goto_0

    .line 156
    :cond_5
    const-string v2, "content-length promised"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    const v1, 0x50004

    goto :goto_0

    .line 158
    :cond_6
    const-string v2, "exceeded content-length limit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const v1, 0x50005

    goto :goto_0

    .line 168
    :cond_7
    const-string v3, "Hostname"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "was not verified"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    const v1, 0x50006

    goto :goto_0

    .line 170
    :cond_8
    const-string v3, "Unexpected NPN transport"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    const v1, 0x50007

    goto :goto_0

    .line 172
    :cond_9
    const-string v3, "unexpected journal header"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 173
    const v1, 0x50008

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v3, "unexpected journal line"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 175
    const v1, 0x50019

    goto/16 :goto_0

    .line 176
    :cond_b
    const-string v3, "Cannot buffer entire body for content length"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 177
    const v1, 0x50009

    goto/16 :goto_0

    .line 178
    :cond_c
    const-string v3, "Content-Length and stream disagree"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 179
    const v1, 0x5000a

    goto/16 :goto_0

    .line 180
    :cond_d
    const-string v3, "not a readable directory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 181
    const v1, 0x5000b

    goto/16 :goto_0

    .line 182
    :cond_e
    const-string v3, "not a readable directory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 183
    const v1, 0x5001b

    goto/16 :goto_0

    .line 184
    :cond_f
    const-string v3, "failed to delete file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 185
    const v1, 0x5000c

    goto/16 :goto_0

    .line 186
    :cond_10
    const-string v3, "Unexpected frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 187
    const v1, 0x5000d

    goto/16 :goto_0

    .line 188
    :cond_11
    const-string v3, "shutdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 189
    const v1, 0x5000e

    goto/16 :goto_0

    .line 190
    :cond_12
    const-string v3, "stream closed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 191
    const v1, 0x5000f

    goto/16 :goto_0

    .line 192
    :cond_13
    const-string v3, "stream finished"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 193
    const v1, 0x50010

    goto/16 :goto_0

    .line 194
    :cond_14
    const-string v3, "stream was reset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 195
    const v1, 0x50011

    goto/16 :goto_0

    .line 196
    :cond_15
    const-string v3, "TYPE_GOAWAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 197
    const v1, 0x50012

    goto/16 :goto_0

    .line 198
    :cond_16
    const-string v3, "numberOfPairs < 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 199
    const v1, 0x50013

    goto/16 :goto_0

    .line 200
    :cond_17
    const-string v3, "numberOfPairs < 1024"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 201
    const v1, 0x50014

    goto/16 :goto_0

    .line 202
    :cond_18
    const-string v3, "name.length == 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 203
    const v1, 0x50015

    goto/16 :goto_0

    .line 204
    :cond_19
    const-string v3, "TLS tunnel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 205
    const v1, 0x50017

    goto/16 :goto_0

    .line 206
    :cond_1a
    const-string v3, "Failed to authenticate with proxy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 207
    const v1, 0x50018

    goto/16 :goto_0

    .line 208
    :cond_1b
    const-string v3, "unexpected end of stream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v1, v2

    .line 209
    goto/16 :goto_0

    .line 210
    :cond_1c
    const-string v2, "Exception in connect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 211
    const v1, 0x5001c

    goto/16 :goto_0

    .line 212
    :cond_1d
    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const v1, 0x5001d

    goto/16 :goto_0
.end method

.method private static httpErrorCodeFromOkHttpException(Ljava/io/IOException;)I
    .locals 4
    .param p0, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 118
    if-nez p0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "m":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 125
    const-string v0, "Unexpected response code for CONNECT: "

    .line 126
    .local v0, "CONNECT_STRING":Ljava/lang/String;
    const-string v3, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static printCurlCommand(Ljava/net/HttpURLConnection;)V
    .locals 9
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v8, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "curl "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "header":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    .local v3, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-H \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 88
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    .end local v4    # "i":I
    :cond_1
    const-string v6, "\" "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v6, "NetworkUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public static final throwGsaIOExceptionFromOkHttpException(Ljava/io/IOException;I)V
    .locals 4
    .param p0, "e"    # Ljava/io/IOException;
    .param p1, "defaultErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/android/search/core/util/NetworkUtils;->httpErrorCodeFromOkHttpException(Ljava/io/IOException;)I

    move-result v1

    .line 107
    .local v1, "httpCode":I
    if-eqz v1, :cond_0

    .line 108
    new-instance v2, Lcom/google/android/shared/exception/HttpException;

    const-string v3, "OkHttp"

    invoke-direct {v2, v1, v3}, Lcom/google/android/shared/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/google/android/search/core/util/NetworkUtils;->gsaErrorCodeFromOkHttpException(Ljava/io/IOException;)I

    move-result v0

    .line 111
    .local v0, "errorCode":I
    if-nez v0, :cond_1

    .line 112
    move v0, p1

    .line 114
    :cond_1
    new-instance v2, Lcom/google/android/shared/exception/GsaIOException;

    invoke-direct {v2, v0}, Lcom/google/android/shared/exception/GsaIOException;-><init>(I)V

    throw v2
.end method
