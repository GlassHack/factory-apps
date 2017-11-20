.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/speech/helper/AuthTokenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountHelperImpl"
.end annotation


# instance fields
.field private final authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)V
    .locals 0
    .param p1, "authUtils"    # Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .line 86
    return-void
.end method


# virtual methods
.method public bridge synthetic blockingGetAllTokens(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->blockingGetAllTokens(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blockingGetAllTokens(Ljava/lang/String;J)Ljava/util/List;
    .locals 7
    .param p1, "tokenType"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "authTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$000()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getPersonalizationAuthToken(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "authToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    return-object v1

    .line 100
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No auth token found for type %s, not including in speech request"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "oauth2:https://www.googleapis.com/auth/speech/personalization"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public invalidateToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;->authUtils:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->invalidatePersonalizationAuthToken()V

    .line 91
    return-void
.end method
