.class public Lcom/google/glass/voice/network/PinholePage;
.super Ljava/lang/Object;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    }
.end annotation


# static fields
.field public static final ACTION_ANSWER_ECT:Ljava/lang/String; = "act0"

.field public static final MAIN_ANSWER_CARD_ECT:Ljava/lang/String; = "ans0"

.field private static final PELLET_SEPARATOR_PATTERN:Ljava/lang/String; = "/\\*\"\"\\*/"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private blobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 8
    .param p1, "pellet"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 137
    :try_start_0
    const-string v4, "u"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "url":Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 140
    .local v0, "blob":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v0    # "blob":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v0, v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v0    # "blob":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "blob":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "pellet %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleJsonBlobs(Ljava/lang/String;)V
    .locals 9
    .param p1, "jsonBlob"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 81
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "source":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    :cond_0
    return-void

    .line 81
    .end local v3    # "source":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .restart local v3    # "source":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 87
    const-string v4, "/\\*\"\"\\*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pellets":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 89
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/glass/voice/network/PinholePage;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    .local v1, "pellet":Lorg/json/JSONObject;
    if-nez v1, :cond_4

    .line 91
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v4, :cond_3

    .line 92
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 88
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_3
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet in handleJsonBlobs."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "pellet %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v0

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 98
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/PinholePage;->addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "includeOthersAtEnd"    # Z
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 152
    iget-boolean v9, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v9, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v8

    .line 156
    :cond_1
    array-length v9, p2

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 158
    .local v1, "explicitParts":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v5, "implicitPart":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 166
    .local v3, "foundAnyParts":Z
    iget-object v9, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 168
    .local v0, "doc":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    const/4 v2, 0x0

    .line 169
    .local v2, "explicitlyRequested":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v10, p2

    if-ge v4, v10, :cond_4

    .line 170
    aget-object v10, p2, v4

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 171
    const/4 v3, 0x1

    .line 172
    const/4 v2, 0x1

    .line 173
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v1, v4

    .line 169
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 178
    :cond_4
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 179
    const/4 v3, 0x1

    .line 180
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    .end local v0    # "doc":Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v2    # "explicitlyRequested":Z
    .end local v4    # "i":I
    :cond_5
    if-eqz v3, :cond_0

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v7, "result":Ljava/lang/StringBuilder;
    array-length v9, v1

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_7

    aget-object v6, v1, v8

    .line 189
    .local v6, "part":Ljava/lang/CharSequence;
    if-eqz v6, :cond_6

    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 188
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 193
    .end local v6    # "part":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public update(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "headerComplete"    # Z
    .param p2, "gwsHeaderFragment"    # Ljava/lang/String;
    .param p3, "responseComplete"    # Z
    .param p4, "gwsBodyFragment"    # Ljava/lang/String;

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
    .param p1, "response"    # Ljava/lang/String;

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
