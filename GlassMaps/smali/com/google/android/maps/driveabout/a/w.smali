.class public final Lcom/google/android/maps/driveabout/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/SortedMap;

.field private final d:Ljava/util/List;

.field private final e:Ljava/io/File;

.field private final f:Ljava/util/zip/ZipFile;


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/w;->e:Ljava/io/File;

    .line 155
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/w;->f:Ljava/util/zip/ZipFile;

    .line 157
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->a:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->c:Ljava/util/SortedMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->d:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/io/Reader;)V

    .line 164
    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Lcom/google/android/maps/driveabout/a/w;->b(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/maps/driveabout/a/w;->c(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)Lcom/google/android/maps/driveabout/a/y;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->b()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/y;
    .locals 1

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->a()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/w;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/y;->a(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 195
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 196
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "Unable to parse messages.xml"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :catch_1
    move-exception v0

    .line 202
    const-string v1, "Unable to parse messages.xml"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 212
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 213
    :goto_0
    if-eq v0, v8, :cond_8

    .line 214
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v2, "caption"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v3, "maneuver_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/w;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 236
    new-instance v3, Lcom/google/android/maps/driveabout/a/z;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/a/w;->e:Ljava/io/File;

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/._"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/google/android/maps/driveabout/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 220
    :cond_1
    const-string v3, "distance_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/w;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 222
    :cond_2
    const-string v3, "predefined_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/w;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_3
    const-string v3, "voice_instructions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 227
    :cond_4
    const-string v3, "CannedSpeechBundle"

    const-string v4, "Unknown tag:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 230
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 231
    if-eq v3, v8, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 233
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_5

    :cond_6
    move-object v0, v1

    goto/16 :goto_1

    .line 227
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 243
    :cond_8
    return-void
.end method

.method private static b(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/zip/ZipFile;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 171
    const-string v2, "messages.xml"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 174
    new-instance v3, Lcom/google/android/maps/driveabout/a/w;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/a/w;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V

    return-object v3
.end method

.method private b(I)Lcom/google/android/maps/driveabout/a/y;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->b()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 393
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/w;->e:Ljava/io/File;

    const-string v4, "._"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 429
    :goto_1
    return-object v0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->f:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_2

    move-object v0, v2

    .line 402
    goto :goto_1

    .line 407
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->f:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 408
    if-nez v0, :cond_4

    .line 409
    const-string v3, "CannedSpeechBundle"

    const-string v4, "Unable to extract: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 410
    goto :goto_1

    .line 409
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 424
    :catch_0
    move-exception v0

    const-string v3, "CannedSpeechBundle"

    const-string v4, "Unable to extract: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v0, v2

    .line 426
    goto :goto_1

    .line 412
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/w;->f:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 413
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 415
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 417
    :goto_4
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5

    .line 418
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 421
    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 422
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 429
    goto :goto_1

    .line 424
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 251
    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 252
    const-string v2, "suppressed"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duplicated maneuver message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    invoke-static {v0}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/w;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static c(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 182
    new-instance v2, Lcom/google/android/maps/driveabout/a/w;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/maps/driveabout/a/w;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private c(I)Lcom/google/android/maps/driveabout/a/y;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/w;->c:Ljava/util/SortedMap;

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->b()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/x;

    .line 377
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/a/x;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->b()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 275
    const-string v0, "min"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    const-string v0, "max"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    const/high16 v1, -0x80000000

    const v0, 0x7fffffff

    .line 278
    if-eqz v2, :cond_0

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    :cond_0
    if-eqz v3, :cond_1

    .line 282
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/w;->c:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 287
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->c(I)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/a/y;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 288
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Overlapping distance message: min="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " max="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/w;->c:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/android/maps/driveabout/a/x;

    invoke-direct {v5, v1, v0, v2}, Lcom/google/android/maps/driveabout/a/x;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object v2
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 306
    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/m;->a(Ljava/lang/String;)I

    move-result v2

    .line 309
    if-gez v2, :cond_0

    .line 310
    const-string v2, "CannedSpeechBundle"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - ignoring"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/w;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicated predefined message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_2
    const-string v1, "suppressed"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/w;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/y;
    .locals 1

    .prologue
    .line 335
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/s;

    if-eqz v0, :cond_0

    .line 336
    check-cast p1, Lcom/google/android/maps/driveabout/a/s;

    .line 337
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/s;->b()I

    move-result v0

    .line 338
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->b(I)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 339
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/q;

    if-eqz v0, :cond_1

    .line 340
    check-cast p1, Lcom/google/android/maps/driveabout/a/q;

    .line 341
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/q;->b()I

    move-result v0

    .line 342
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->c(I)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/t;

    if-eqz v0, :cond_2

    .line 344
    check-cast p1, Lcom/google/android/maps/driveabout/a/t;

    .line 345
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/t;->b()I

    move-result v0

    .line 346
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/w;->a(I)Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {}, Lcom/google/android/maps/driveabout/a/y;->b()Lcom/google/android/maps/driveabout/a/y;

    move-result-object v0

    goto :goto_0
.end method
