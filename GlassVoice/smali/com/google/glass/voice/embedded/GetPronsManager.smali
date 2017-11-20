.class public Lcom/google/glass/voice/embedded/GetPronsManager;
.super Ljava/lang/Object;
.source "GetPronsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/GetPronsManager$Provider;
    }
.end annotation


# static fields
.field static final GET_PRONS_VERSION:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final phrasesToIgnore:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/voice/embedded/GetPronsManager$1;

    invoke-direct {v1}, Lcom/google/glass/voice/embedded/GetPronsManager$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/voice/embedded/GetPronsManager;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/Locale;)V
    .locals 1
    .param p1, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->phrasesToIgnore:Ljava/util/Set;

    .line 51
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 52
    iput-object p2, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->locale:Ljava/util/Locale;

    .line 53
    return-void
.end method


# virtual methods
.method public getProns(Ljava/util/Set;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "phrases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 57
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 59
    .local v1, "phrasePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->phrasesToIgnore:Ljava/util/Set;

    .line 60
    invoke-static {v6}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v3

    .line 61
    .local v3, "phrasesToRequest":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    :goto_0
    return-object v1

    .line 65
    :cond_0
    new-instance v4, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;-><init>()V

    .line 66
    .local v4, "request":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;
    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v4, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    .line 67
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->locale:Ljava/util/Locale;

    invoke-static {v6}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    .line 68
    invoke-virtual {v4, v8}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->setClientVersion(I)Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;

    .line 70
    const/4 v5, 0x0

    .line 72
    .local v5, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;>;"
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "GetProns requested. [num_phrases=%d,locale=%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->phrase:[Ljava/lang/String;

    array-length v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 73
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsRequest;->getLocale()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 72
    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->GET_PRONS:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/voice/embedded/GetPronsManager;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v6, v8, v4, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "GetProns returned an error. [errorCode=%s]"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Interrupted while requesting prons from clientproxy!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v0, v8, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v8, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "GetProns returned prons. [num_prons=%d]"

    new-array v10, v12, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v7

    .line 85
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "[GetPronsResponse=%s]"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v5}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;

    iget-object v8, v6, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse;->phrasePron:[Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v2, v8, v6

    .line 90
    .local v2, "phrasePron":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;->getPhrase()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v2, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;->pron:[Ljava/lang/String;

    invoke-interface {v1, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;->getPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 95
    .end local v2    # "phrasePron":Lcom/google/googlex/glass/common/proto/PronsNano$GetPronsResponse$PhrasePron;
    :cond_2
    iget-object v6, p0, Lcom/google/glass/voice/embedded/GetPronsManager;->phrasesToIgnore:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method
