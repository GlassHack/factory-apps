.class public Lcom/google/android/apps/lightcycle/xmp/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;,
        Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final M_APP1:I = 0xe1

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final TAG:Ljava/lang/String; = "XmpUtil"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-string v1, "XmpUtil"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 58
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string v3, "GPano"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 60
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 128
    .local v0, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .end local v0    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 94
    .local v6, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    if-nez v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v4

    .line 98
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    .line 99
    .local v5, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->getXMPContentEnd([B)I

    move-result v2

    .line 101
    .local v2, "end":I
    add-int/lit8 v7, v2, -0x1d

    new-array v0, v7, [B

    .line 102
    .local v0, "buffer":[B
    iget-object v7, v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/16 v8, 0x1d

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 106
    .local v4, "result":Lcom/adobe/xmp/XMPMeta;
    goto :goto_0

    .line 107
    .end local v4    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    sget-object v7, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "XMP parse error"

    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    sget-object v2, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "XMP parse: only jpeg file is supported"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-object v1

    .line 79
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getXMPContentEnd([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 305
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 306
    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 307
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 308
    add-int/lit8 v1, v0, 0x1

    .line 313
    :goto_1
    return v1

    .line 305
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    :cond_1
    array-length v1, p0

    goto :goto_1
.end method

.method private static hasXMPHeader([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/16 v4, 0x1d

    const/4 v2, 0x0

    .line 279
    array-length v3, p0

    if-ge v3, v4, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v2

    .line 283
    :cond_1
    const/16 v3, 0x1d

    :try_start_0
    new-array v1, v3, [B

    .line 284
    .local v1, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1d

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const/4 v2, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 13
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    const/16 v12, 0x1d

    const/16 v11, 0xe1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 223
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_1

    :cond_0
    move-object p0, v3

    .line 269
    .end local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :goto_0
    return-object p0

    .line 228
    .restart local p0    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_1
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 229
    .local v4, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 233
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 234
    invoke-static {p1, v4}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    .local v0, "buffer":[B
    array-length v8, v0

    const v10, 0xffde

    if-le v8, v10, :cond_2

    move-object p0, v3

    .line 241
    goto :goto_0

    .line 235
    .end local v0    # "buffer":[B
    .end local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    sget-object v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v10, "Serialize xmp failed"

    invoke-virtual {v8, v9, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .line 237
    goto :goto_0

    .line 244
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, 0x1d

    new-array v7, v8, [B

    .line 245
    .local v7, "xmpdata":[B
    const-string v8, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v7, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    array-length v8, v0

    invoke-static {v0, v9, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    invoke-direct {v6, v3}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 248
    .local v6, "xmpSection":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v11, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 250
    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 251
    iput-object v7, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 253
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 255
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget-object v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->hasXMPHeader([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    invoke-interface {p0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v3, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    iget v8, v8, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    if-ne v8, v11, :cond_5

    .line 266
    .local v5, "position":I
    :goto_2
    invoke-interface {p0, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v3

    .line 269
    goto/16 :goto_0

    .end local v5    # "position":I
    :cond_5
    move v5, v9

    .line 265
    goto :goto_2
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ne v9, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/16 v10, 0xd8

    if-eq v9, v10, :cond_3

    .line 380
    :cond_0
    if-eqz p0, :cond_1

    .line 382
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v7, v8

    .line 385
    :cond_2
    :goto_1
    return-object v7

    .line 330
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v7, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_11

    .line 333
    if-eq v0, v13, :cond_5

    .line 380
    if-eqz p0, :cond_4

    .line 382
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    move-object v7, v8

    .line 385
    goto :goto_1

    .line 337
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_5

    .line 339
    if-ne v0, v12, :cond_7

    .line 380
    if-eqz p0, :cond_6

    .line 382
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    move-object v7, v8

    .line 385
    goto :goto_1

    .line 342
    :cond_7
    move v5, v0

    .line 343
    .local v5, "marker":I
    const/16 v9, 0xda

    if-ne v5, v9, :cond_9

    .line 346
    if-nez p1, :cond_8

    .line 347
    :try_start_6
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 348
    .local v6, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v5, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 349
    const/4 v9, -0x1

    iput v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 350
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 351
    iget-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    array-length v11, v11

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 352
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 380
    .end local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    :cond_8
    if-eqz p0, :cond_2

    .line 382
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v8

    goto :goto_1

    .line 356
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 357
    .local v3, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 358
    .local v4, "ll":I
    if-eq v3, v12, :cond_a

    if-ne v4, v12, :cond_c

    .line 380
    :cond_a
    if-eqz p0, :cond_b

    .line 382
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_5
    move-object v7, v8

    .line 385
    goto :goto_1

    .line 361
    :cond_c
    shl-int/lit8 v9, v3, 0x8

    or-int v2, v9, v4

    .line 362
    .local v2, "length":I
    if-eqz p1, :cond_d

    const/16 v9, 0xe1

    if-ne v0, v9, :cond_f

    .line 363
    :cond_d
    :try_start_a
    new-instance v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;-><init>(Lcom/google/android/apps/lightcycle/xmp/XmpUtil$1;)V

    .line 364
    .restart local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    iput v5, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    .line 365
    iput v2, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    .line 366
    add-int/lit8 v9, v2, -0x2

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    .line 367
    iget-object v9, v6, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x2

    invoke-virtual {p0, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    .line 368
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 376
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v6    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_1
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    sget-object v9, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v11, "Could not parse file."

    invoke-virtual {v9, v10, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 380
    if-eqz p0, :cond_e

    .line 382
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_e
    :goto_6
    move-object v7, v8

    .line 385
    goto/16 :goto_1

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "length":I
    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_f
    add-int/lit8 v9, v2, -0x2

    int-to-long v9, v9

    :try_start_d
    invoke-virtual {p0, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 380
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catchall_0
    move-exception v8

    if-eqz p0, :cond_10

    .line 382
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 385
    :cond_10
    :goto_7
    throw v8

    .line 380
    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :cond_11
    if-eqz p0, :cond_2

    .line 382
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 383
    :catch_2
    move-exception v8

    goto/16 :goto_1

    .end local v0    # "c":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :catch_4
    move-exception v9

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto/16 :goto_4

    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    :catch_6
    move-exception v9

    goto :goto_5

    .end local v0    # "c":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    goto :goto_7
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    const/16 v5, 0xff

    .line 205
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 206
    const/16 v4, 0xd8

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;

    .line 208
    .local v3, "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 209
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 210
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    if-lez v4, :cond_0

    .line 212
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    shr-int/lit8 v1, v4, 0x8

    .line 213
    .local v1, "lh":I
    iget v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->length:I

    and-int/lit16 v2, v4, 0xff

    .line 214
    .local v2, "ll":I
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 215
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 217
    .end local v1    # "lh":I
    .end local v2    # "ll":I
    :cond_0
    iget-object v4, v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 219
    .end local v3    # "section":Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {p0, v2}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    invoke-static {v1, p2}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v1

    .line 178
    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 183
    :cond_1
    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz p1, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Write to stream failed"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz p1, :cond_0

    .line 190
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v3

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    .line 190
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 193
    :cond_3
    :goto_2
    throw v2

    .line 191
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    sget-object v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "XMP parse: only jpeg file is supported"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return v4

    .line 140
    :cond_1
    const/4 v3, 0x0

    .line 142
    .local v3, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/xmp/XmpUtil$Section;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v3

    .line 143
    invoke-static {v3, p1}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v2, v3}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    if-eqz v2, :cond_2

    .line 162
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v5, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Write file failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    if-eqz v1, :cond_0

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v5

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 162
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 165
    :cond_3
    :goto_4
    throw v4

    .line 163
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 160
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 156
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
