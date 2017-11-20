.class public final Lcom/google/android/location/collectionlib/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/location/p/a/c;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "^(\\p{XDigit}{2}[-:]){5}\\p{XDigit}{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/db;->b:Ljava/util/regex/Pattern;

    .line 36
    new-instance v0, Lcom/google/android/location/p/a/c;

    const-string v1, "CollectionLib"

    new-instance v2, Lcom/google/android/location/collectionlib/dc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/location/collectionlib/dc;-><init>(B)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    sput-object v0, Lcom/google/android/location/collectionlib/db;->a:Lcom/google/android/location/p/a/c;

    return-void
.end method

.method public static a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;
    .locals 0

    .prologue
    .line 166
    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/location/collectionlib/db;->a:Lcom/google/android/location/p/a/c;

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;
    .locals 2

    .prologue
    .line 219
    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    .line 221
    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v0, Ljava/io/IOException;

    const-string v1, "isValid returned after parsing proto"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize and parse ProtoBuf."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-object p0
.end method

.method static a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static a(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 154
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static a([B)[B
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 237
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sglclt"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static b(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method static b([B)[B
    .locals 5

    .prologue
    .line 247
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 248
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 250
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 252
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 256
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 178
    invoke-static {p0}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-wide v0

    .line 181
    :cond_1
    sget-object v2, Lcom/google/android/location/collectionlib/db;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v2, "[-:]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    sget-boolean v3, Lcom/google/android/location/j/a;->d:Z

    if-eqz v3, :cond_0

    const-string v3, "CollectionLib"

    const-string v4, "Invalid mac address format."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static c()Ljava/util/List;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
