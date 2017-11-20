.class public Lcom/google/glass/voice/network/PinholePage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ANSWER_ECT:Ljava/lang/String; = "act0"

.field public static final MAIN_ANSWER_CARD_ECT:Ljava/lang/String; = "ans0"

.field private static final PELLET_SEPARATOR_PATTERN:Ljava/lang/String; = "/\\*\"\"\\*/"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private blobs:Ljava/util/Map;

.field private headerBuilder:Ljava/lang/StringBuilder;

.field private headerComplete:Z

.field private responseComplete:Z

.field private unparsedPelletFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 61
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    return-void
.end method

.method private addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    :try_start_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v0, "d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 140
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t parse gwsBodyFragment pellet."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pellet %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleJsonBlobs(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    :cond_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 87
    const-string v2, "/\\*\"\"\\*/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 88
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 89
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/google/glass/voice/network/PinholePage;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    if-nez v3, :cond_4

    .line 91
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v3, :cond_3

    .line 92
    aget-object v3, v2, v0

    iput-object v3, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 88
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_3
    sget-object v3, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Couldn\'t parse gwsBodyFragment pellet in handleJsonBlobs."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v3, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "pellet %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v2, v0

    aput-object v6, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 98
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/glass/voice/network/PinholePage;->addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 194
    :goto_0
    return-object v0

    .line 156
    :cond_0
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/CharSequence;

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move v3, v2

    move v4, v1

    move v1, v2

    .line 169
    :goto_2
    array-length v10, p2

    if-ge v1, v10, :cond_2

    .line 170
    aget-object v10, p2, v1

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v7, v1

    move v3, v5

    move v4, v5

    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    :cond_2
    if-nez v3, :cond_7

    if-eqz p1, :cond_7

    .line 180
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v0, v5

    :goto_3
    move v1, v0

    .line 182
    goto :goto_1

    .line 183
    :cond_3
    if-nez v1, :cond_4

    move-object v0, v6

    .line 184
    goto :goto_0

    .line 187
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    array-length v1, v7

    :goto_4
    if-ge v2, v1, :cond_6

    aget-object v3, v7, v2

    .line 189
    if-eqz v3, :cond_5

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 188
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 193
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_3
.end method

.method public update(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    iput-boolean p3, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 112
    if-eqz p4, :cond_1

    .line 113
    invoke-direct {p0, p4}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method

.method public updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 122
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 123
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    goto :goto_0
.end method
