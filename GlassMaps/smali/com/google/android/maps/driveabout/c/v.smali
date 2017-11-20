.class public final Lcom/google/android/maps/driveabout/c/v;
.super Lcom/google/android/maps/driveabout/c/b;
.source "SourceFile"


# instance fields
.field b:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/b;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->b:Ljava/util/ArrayList;

    .line 40
    const-string v0, "gps"

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->d:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/c/v;->e:Z

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/c/v;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lorg/w3c/dom/Node;)Lcom/google/android/maps/driveabout/g/j;
    .locals 2

    .prologue
    .line 205
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    .line 209
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1}, Lcom/google/android/maps/driveabout/c/v;->b(Lorg/w3c/dom/Node;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/v;->c(Lorg/w3c/dom/Node;)V

    .line 219
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/c/e;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/e;-><init>(Lorg/w3c/dom/Node;)V

    .line 246
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const-string v1, "locationenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    new-instance v0, Lcom/google/android/maps/driveabout/c/h;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/h;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 222
    :cond_2
    const-string v1, "locationdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    new-instance v0, Lcom/google/android/maps/driveabout/c/g;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/g;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 224
    :cond_3
    const-string v1, "locationstatuschanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    new-instance v0, Lcom/google/android/maps/driveabout/c/i;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/i;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 226
    :cond_4
    const-string v1, "gpsstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    new-instance v0, Lcom/google/android/maps/driveabout/c/d;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/d;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 228
    :cond_5
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    new-instance v0, Lcom/google/android/maps/driveabout/c/m;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/m;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 230
    :cond_6
    const-string v1, "ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    invoke-static {p1}, Lcom/google/android/maps/driveabout/c/q;->a(Lorg/w3c/dom/Node;)Lcom/google/android/maps/driveabout/c/q;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_7
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 233
    new-instance v0, Lcom/google/android/maps/driveabout/c/s;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/s;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 234
    :cond_8
    const-string v1, "networksdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 235
    new-instance v0, Lcom/google/android/maps/driveabout/c/k;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/k;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 236
    :cond_9
    const-string v1, "networksenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 237
    new-instance v0, Lcom/google/android/maps/driveabout/c/l;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/l;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 238
    :cond_a
    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 239
    new-instance v0, Lcom/google/android/maps/driveabout/c/n;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/n;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_0

    .line 240
    :cond_b
    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 241
    new-instance v0, Lcom/google/android/maps/driveabout/c/o;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/o;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_0

    .line 246
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 90
    const-string v3, "event-log"

    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 91
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_0

    .line 92
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 93
    const-string v5, "disabled"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/c/v;->e:Z

    .line 96
    :cond_0
    const-string v3, "event"

    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v3, v2

    .line 97
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 98
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/maps/driveabout/c/v;->a(Lorg/w3c/dom/Node;)Lcom/google/android/maps/driveabout/g/j;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_1

    .line 100
    iget-object v7, p0, Lcom/google/android/maps/driveabout/c/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 93
    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/c/v;->f()Lcom/google/android/maps/driveabout/c/o;

    move-result-object v6

    .line 106
    const-string v3, "destination"

    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 107
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_c

    .line 108
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 109
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 111
    const-string v3, "uri"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->a:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/b/q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/b/q;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/q;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to parse URI:"

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :cond_5
    :try_start_2
    const-string v3, "address"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_f

    .line 123
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 126
    :goto_3
    const-string v3, "lat"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 127
    const-string v3, "lng"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 129
    if-eqz v4, :cond_e

    if-eqz v8, :cond_e

    .line 130
    new-instance v3, Lcom/google/android/maps/driveabout/model/m;

    .line 132
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 133
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v3, v4, v8}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    move-object v4, v3

    .line 135
    :goto_4
    const-string v3, "title"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_d

    .line 138
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 140
    :goto_5
    new-instance v8, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v4, v3, v9}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "travelmode"

    invoke-interface {v7, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_b

    .line 148
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 149
    const-string v4, "w"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 150
    const/4 v1, 0x2

    .line 159
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 160
    new-instance v2, Lcom/google/android/maps/driveabout/b/q;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/c/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/b/q;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/b/q;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 162
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/b/q;->c()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 166
    :cond_7
    const/4 v2, 0x0

    invoke-static {v0, v8, v1, v2}, Lcom/google/android/maps/driveabout/b/q;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->a:Ljava/lang/String;

    .line 182
    :cond_8
    :goto_7
    return-void

    .line 151
    :cond_9
    const-string v4, "b"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 152
    const/4 v1, 0x3

    goto :goto_6

    .line 153
    :cond_a
    const-string v4, "r"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_b
    move v1, v2

    goto :goto_6

    .line 169
    :cond_c
    if-eqz v6, :cond_8

    .line 170
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/c/o;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    move-object v3, v0

    goto :goto_5

    :cond_e
    move-object v4, v0

    goto :goto_4

    :cond_f
    move-object v5, v0

    goto/16 :goto_3
.end method

.method private static b(Lorg/w3c/dom/Node;)V
    .locals 4

    .prologue
    .line 250
    const-string v0, "gps"

    .line 251
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const-string v0, "network"

    .line 255
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 256
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private c(Lorg/w3c/dom/Node;)V
    .locals 7

    .prologue
    .line 260
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 263
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iput-object v3, p0, Lcom/google/android/maps/driveabout/c/v;->d:Ljava/lang/String;

    .line 265
    const/4 v4, 0x2

    .line 266
    invoke-static {v3}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v4, 0x1

    .line 274
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x1

    sub-long v1, v0, v5

    .line 276
    iget-object v6, p0, Lcom/google/android/maps/driveabout/c/v;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/c/i;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/c/i;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    return-void
.end method

.method private f()Lcom/google/android/maps/driveabout/c/o;
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/c/v;->a()Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/j;

    .line 197
    instance-of v2, v0, Lcom/google/android/maps/driveabout/c/o;

    if-eqz v2, :cond_0

    .line 198
    check-cast v0, Lcom/google/android/maps/driveabout/c/o;

    .line 201
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/v;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/g/j;)V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
