.class public Lcom/google/glass/voice/actions/NavigationLauncher;
.super Ljava/lang/Object;
.source "NavigationLauncher.java"


# static fields
.field private static final ACTION_NAVIGATION_BROADCAST:Ljava/lang/String; = "com.google.glass.action.NAVIGATION_BROADCAST"

.field public static final EXTRA_DATA_URI_LIST:Ljava/lang/String; = "data_uri_list"

.field public static final EXTRA_NAVIGATION_ACTION:Ljava/lang/String; = "navigation_intent_action"

.field public static final EXTRA_NAVIGATION_OPERATION:Ljava/lang/String; = "operation"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_NAVIGATION_URI_STRING:Ljava/lang/String; = "navigation_intent_uri"

.field public static final EXTRA_VOICE_SEARCH_RESULT:Ljava/lang/String; = "voice_search_result"

.field private static final NAVIGATE_URI_PREFIX:Ljava/lang/String; = "google.navigation:"

.field public static final NAVIGATION_OPERATION_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final NAVIGATION_OPERATION_STOP:Ljava/lang/String; = "stop"

.field public static final NAVIGATION_OPERATION_WAKE_UP:Ljava/lang/String; = "wake_up"

.field private static final TRAVEL_MODE_BICYCLING_VALUE:Ljava/lang/String; = "b"

.field private static final TRAVEL_MODE_DRIVING_VALUE:Ljava/lang/String; = "d"

.field private static final TRAVEL_MODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAVEL_MODE_MOST_RECENTLY_USED:Ljava/lang/String; = "mru"

.field private static final TRAVEL_MODE_TRANSIT_VALUE:Ljava/lang/String; = "r"

.field private static final TRAVEL_MODE_WALKING_VALUE:Ljava/lang/String; = "w"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/NavigationLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "d"

    const/4 v2, 0x2

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "w"

    const/4 v4, 0x3

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "b"

    const/4 v6, 0x4

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "r"

    const/4 v8, 0x0

    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "mru"

    .line 80
    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/NavigationLauncher;->TRAVEL_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static bringNavigationToForeground(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "foreground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public static buildIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 365
    return-object v0
.end method

.method public static getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "location"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .param p1, "travelMode"    # Ljava/lang/Integer;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationUriString(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "navigationUriString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/actions/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNavigationIntent(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Landroid/content/Intent;
    .locals 16
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "latDegrees"    # D
    .param p4, "lngDegrees"    # D
    .param p6, "source"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x31

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "latLng":Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "encodedAddress":Ljava/lang/String;
    const-string v7, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 289
    .local v4, "encodedTitle":Ljava/lang/String;
    const-string v7, "google.navigation:q="

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mru"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&ll="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/voice/actions/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 292
    .end local v3    # "encodedAddress":Ljava/lang/String;
    .end local v4    # "encodedTitle":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lcom/google/glass/voice/actions/NavigationLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error encoding navigation query"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v2, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getNavigationIntent(Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "displayVoiceSearchResult"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v2

    .line 199
    :cond_1
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    .local v1, "encodedQuery":Ljava/lang/String;
    const-string v3, "google.navigation:q="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mru"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xe

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/voice/actions/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 209
    const-string/jumbo v3, "voice_search_result"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 200
    .end local v1    # "encodedQuery":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/google/glass/voice/actions/NavigationLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error encoding navigation query"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static getNavigationIntent(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 7
    .param p1, "defaultQuery"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "displayVoiceSearchResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Location;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Location;>;"
    const/4 v4, 0x0

    .line 315
    invoke-static {p1, p3, p2}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, "navigationIntent":Landroid/content/Intent;
    if-nez v1, :cond_1

    move-object v1, v4

    .line 334
    .end local v1    # "navigationIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 319
    .restart local v1    # "navigationIntent":Landroid/content/Intent;
    :cond_1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 324
    .local v0, "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    if-eqz v0, :cond_2

    .line 325
    invoke-static {v0, v4, p2}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationUriString(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    .end local v0    # "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .end local v2    # "uriString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    const-string v4, "data_uri_list"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getNavigationIntentToFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p0, "featureId"    # Ljava/lang/String;
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 221
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 222
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify feature id or cluster id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    :cond_0
    const/4 v4, 0x0

    .line 226
    .local v4, "encodedFeatureId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 228
    .local v3, "encodedClusterId":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "encodedAddress":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 230
    const-string v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    .line 233
    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 239
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v6, "google.navigation:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v6, "q="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    if-eqz v4, :cond_3

    .line 244
    const-string v6, "&ftid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3
    if-eqz v3, :cond_4

    .line 248
    const-string v6, "&cid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_4
    const-string v6, "&mode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v6, "mru"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v6, "&source="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/voice/actions/NavigationLauncher;->buildIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 257
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "encodedAddress":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/google/glass/voice/actions/NavigationLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error encoding navigation query"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected static getNavigationUriString(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "location"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .param p1, "travelMode"    # Ljava/lang/Integer;
    .param p2, "source"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLatitude()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLongitude()Z

    move-result v3

    if-nez v3, :cond_3

    .line 135
    :cond_2
    sget-object v3, Lcom/google/glass/voice/actions/NavigationLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No address, display name, or lat/long for location, skipping navigation."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/4 v3, 0x0

    .line 173
    :goto_0
    return-object v3

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "uri":Ljava/lang/StringBuilder;
    const-string v3, "google.navigation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLatitude()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hasLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    const-string v3, "ll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 149
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_5
    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "google.navigation:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 155
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_7
    const-string v3, "q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_8
    if-nez p1, :cond_9

    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 165
    :cond_9
    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v3, Lcom/google/glass/voice/actions/NavigationLauncher;->TRAVEL_MODE_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static stopNavigation(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "stopNavigationIntent":Landroid/content/Intent;
    const-string v1, "operation"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method public static wakeUpNavigation(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.NAVIGATION_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operation"

    const-string/jumbo v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 355
    return-void
.end method
