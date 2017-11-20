.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PinholeParamsBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
        "<",
        "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

.field private cookies:Lcom/google/glass/voice/network/Cookies;

.field private locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/Cookies;Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)V
    .locals 0
    .param p1, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p2, "cookies"    # Lcom/google/glass/voice/network/Cookies;
    .param p3, "authUtils"    # Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 116
    iput-object p2, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 117
    iput-object p3, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .line 118
    return-void
.end method


# virtual methods
.method buildParams()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 14

    .prologue
    .line 135
    new-instance v9, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v9}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    .line 136
    .local v9, "searchQueryBuilder":Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual {v9}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 138
    new-instance v7, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v7}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    .line 139
    .local v7, "paramsProto":Lcom/google/speech/s3/PinholeStream$PinholeParams;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "cgiParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;>;"
    invoke-virtual {v9}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getCgiParameters()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v12}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v12

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    move-result-object v6

    .line 144
    .local v6, "param":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "param":Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 147
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    iput-object v10, v7, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams:[Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 151
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v8, "pinholeHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/google/speech/s3/PinholeStream$PinholeHeader;>;"
    iget-object v10, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v9, v10}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/glass/location/LocationManagerHelper;)Ljava/util/Map;

    move-result-object v4

    .line 153
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v12}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v12

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v10

    const/4 v12, 0x2

    .line 157
    invoke-virtual {v10, v12}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v3

    .line 158
    .local v3, "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_2
    iget-object v10, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->cookies:Lcom/google/glass/voice/network/Cookies;

    invoke-virtual {v9}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cookie":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 163
    new-instance v10, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    const-string v11, "Cookie"

    .line 164
    invoke-virtual {v10, v11}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v10

    .line 165
    invoke-virtual {v10, v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v10

    const/4 v11, 0x1

    .line 166
    invoke-virtual {v10, v11}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v3

    .line 167
    .restart local v3    # "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v3    # "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_3
    iget-object v10, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$000()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getSearchAuthToken(J)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "loginOauth":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 173
    new-instance v10, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    const-string v11, "Authorization"

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v11

    const-string v12, "Bearer "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    :goto_2
    invoke-virtual {v11, v10}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v3

    .line 176
    .restart local v3    # "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v3    # "header":Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 182
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    iput-object v10, v7, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers:[Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 184
    :cond_4
    return-object v7

    .line 173
    :cond_5
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :cond_6
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "No loginOauth found; not setting search auth header."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public getVoiceSearchParamsCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;

    const-string v1, "PinholeParamsBuilderTask"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;-><init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public registerUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "arg0":Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;, "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    return-void
.end method

.method public unregisterUpdateListener(Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "arg0":Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener;, "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder$ParamUpdateListener<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    return-void
.end method
