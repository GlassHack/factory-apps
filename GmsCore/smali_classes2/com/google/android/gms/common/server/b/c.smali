.class public final Lcom/google/android/gms/common/server/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/server/response/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/common/server/response/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/b/c;->a:Lcom/google/android/gms/common/server/response/c;

    return-void
.end method

.method private static a(Lcom/android/d/aa;Ljava/lang/String;)Lcom/google/android/gms/common/server/b/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget-object v1, v1, Lcom/android/d/m;->b:[B

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget-object v1, v1, Lcom/android/d/m;->b:[B

    .line 107
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->a([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/common/server/b/d;

    invoke-direct {v1}, Lcom/google/android/gms/common/server/b/d;-><init>()V

    .line 113
    sget-object v3, Lcom/google/android/gms/common/server/b/c;->a:Lcom/google/android/gms/common/server/response/c;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/common/server/b/d;->b()Lcom/google/android/gms/common/server/b/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 125
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    :cond_0
    :goto_1
    return-object v0

    .line 110
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 120
    :goto_2
    :try_start_4
    const-string v3, "ErrorUtils"

    const-string v4, "Unable to read error response"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 128
    :catch_1
    move-exception v1

    .line 129
    const-string v2, "ErrorUtils"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 128
    :catch_2
    move-exception v1

    .line 129
    const-string v2, "ErrorUtils"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 122
    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v1, v1, Lcom/android/d/m;->a:I

    .line 123
    const-string v3, "ErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received generic error from server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 128
    :catch_4
    move-exception v1

    .line 129
    const-string v2, "ErrorUtils"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    .line 127
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 130
    :cond_2
    :goto_5
    throw v0

    .line 128
    :catch_5
    move-exception v1

    .line 129
    const-string v2, "ErrorUtils"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 125
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 122
    :catch_6
    move-exception v1

    goto :goto_3

    .line 119
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static a(Lcom/android/d/aa;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    .line 162
    if-nez v1, :cond_0

    move-object v0, v2

    .line 235
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, v1, Lcom/android/d/m;->c:Ljava/util/Map;

    .line 166
    if-nez v0, :cond_1

    move-object v0, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    const-string v3, "Content-Type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    if-nez v0, :cond_2

    move-object v0, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, v1, Lcom/android/d/m;->b:[B

    .line 174
    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->a([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 181
    :goto_1
    const/4 v4, 0x0

    array-length v6, v1

    invoke-virtual {v3, v1, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 187
    :goto_2
    :try_start_2
    const-string v3, "ErrorUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    move-object v0, v2

    .line 199
    goto :goto_0

    .line 184
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 185
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 191
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 196
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 202
    :cond_4
    :goto_6
    const-string v3, "application/json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 203
    invoke-static {p0, v2}, Lcom/google/android/gms/common/server/b/c;->a(Lcom/android/d/aa;Ljava/lang/String;)Lcom/google/android/gms/common/server/b/b;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 204
    :goto_7
    if-nez v0, :cond_8

    move-object v0, v2

    .line 205
    goto :goto_0

    .line 192
    :catch_1
    move-exception v3

    .line 193
    const-string v4, "ErrorUtils"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 197
    :catch_2
    move-exception v3

    .line 198
    const-string v4, "ErrorUtils"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 192
    :catch_3
    move-exception v0

    .line 193
    const-string v1, "ErrorUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 197
    :catch_4
    move-exception v0

    .line 198
    const-string v1, "ErrorUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 190
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 191
    :goto_8
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 196
    :goto_9
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 199
    :goto_a
    throw v0

    .line 192
    :catch_5
    move-exception v1

    .line 193
    const-string v2, "ErrorUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 197
    :catch_6
    move-exception v1

    .line 198
    const-string v2, "ErrorUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 203
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/b/b;->getErrors()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/b/a;

    goto :goto_7

    .line 207
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/b/a;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :cond_9
    const-string v3, "application/x-protobuf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 209
    new-instance v0, Lcom/google/a/a/a/a/a/b;

    invoke-direct {v0}, Lcom/google/a/a/a/a/a/b;-><init>()V

    .line 211
    :try_start_a
    array-length v3, v1

    invoke-static {v0, v1, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_a
    .catch Lcom/google/protobuf/nano/i; {:try_start_a .. :try_end_a} :catch_7

    .line 216
    iget-object v1, v0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    iget-object v1, v1, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    iget-object v1, v1, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 219
    iget-object v0, v0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    iget-object v0, v0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/a/a/a/a/a/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 212
    :catch_7
    move-exception v0

    .line 213
    const-string v1, "ErrorUtils"

    invoke-virtual {v0}, Lcom/google/protobuf/nano/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 214
    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    .line 221
    goto/16 :goto_0

    .line 222
    :cond_b
    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 223
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 224
    const-string v1, "Invalid Credentials"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 225
    const-string v0, "authError"

    goto/16 :goto_0

    .line 227
    :cond_c
    const-string v1, "Session Expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 228
    const-string v0, "expired"

    goto/16 :goto_0

    .line 230
    :cond_d
    const-string v1, "User Rate Limit Exceeded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    const-string v0, "userRateLimitExceeded"

    goto/16 :goto_0

    :cond_e
    move-object v0, v2

    .line 233
    goto/16 :goto_0

    :cond_f
    move-object v0, v2

    .line 235
    goto/16 :goto_0

    .line 190
    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto/16 :goto_8

    .line 186
    :catch_8
    move-exception v0

    move-object v1, v4

    goto/16 :goto_2
.end method
