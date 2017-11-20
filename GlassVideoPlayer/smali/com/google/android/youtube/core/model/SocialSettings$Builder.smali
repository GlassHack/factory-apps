.class public final Lcom/google/android/youtube/core/model/SocialSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$SocialSettings$SocialNetwork:[I

.field private static final ACTION_TO_ACTION_TYPE:Ljava/util/Map;

.field private static final STRING_TO_NETWORK_ID:Ljava/util/Map;


# instance fields
.field private actions:Ljava/util/Set;

.field private autoSharing:Z

.field private facebook:Lcom/google/android/youtube/core/model/h;

.field private id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

.field private orkut:Lcom/google/android/youtube/core/model/h;

.field private twitter:Lcom/google/android/youtube/core/model/h;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$SocialSettings$SocialNetwork()[I
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$SocialSettings$SocialNetwork:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->values()[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$SocialSettings$SocialNetwork:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->ACTION_TO_ACTION_TYPE:Ljava/util/Map;

    .line 122
    invoke-static {}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->values()[Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->STRING_TO_NETWORK_ID:Ljava/util/Map;

    .line 127
    invoke-static {}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->values()[Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_1

    .line 116
    return-void

    .line 122
    :cond_0
    aget-object v4, v2, v1

    .line 123
    sget-object v5, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->ACTION_TO_ACTION_TYPE:Ljava/util/Map;

    iget-object v6, v4, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->action:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    aget-object v3, v1, v0

    .line 128
    sget-object v4, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->STRING_TO_NETWORK_ID:Ljava/util/Map;

    iget-object v5, v3, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;Z)Lcom/google/android/youtube/core/model/SocialSettings$Builder;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    .line 158
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->ACTION_TO_ACTION_TYPE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 159
    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    new-instance v2, Lcom/google/android/youtube/core/model/SocialSettings$Action;

    invoke-direct {v2, v0, p2}, Lcom/google/android/youtube/core/model/SocialSettings$Action;-><init>(Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    return-object p0
.end method

.method public final addNetwork()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$SocialSettings$SocialNetwork()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    new-instance v0, Lcom/google/android/youtube/core/model/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->autoSharing:Z

    iget-object v3, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/h;-><init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;Lcom/google/android/youtube/core/model/h;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->facebook:Lcom/google/android/youtube/core/model/h;

    goto :goto_0

    .line 176
    :pswitch_1
    new-instance v0, Lcom/google/android/youtube/core/model/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->autoSharing:Z

    iget-object v3, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/h;-><init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;Lcom/google/android/youtube/core/model/h;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->twitter:Lcom/google/android/youtube/core/model/h;

    goto :goto_0

    .line 179
    :pswitch_2
    new-instance v0, Lcom/google/android/youtube/core/model/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->autoSharing:Z

    iget-object v3, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->actions:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/h;-><init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;Lcom/google/android/youtube/core/model/h;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->orkut:Lcom/google/android/youtube/core/model/h;

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final autoSharing(Z)Lcom/google/android/youtube/core/model/SocialSettings$Builder;
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->autoSharing:Z

    .line 151
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/SocialSettings;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->facebook:Lcom/google/android/youtube/core/model/h;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->twitter:Lcom/google/android/youtube/core/model/h;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->orkut:Lcom/google/android/youtube/core/model/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/SocialSettings;-><init>(Lcom/google/android/youtube/core/model/h;Lcom/google/android/youtube/core/model/h;Lcom/google/android/youtube/core/model/h;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->build()Lcom/google/android/youtube/core/model/SocialSettings;

    move-result-object v0

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/SocialSettings$Builder;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->STRING_TO_NETWORK_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->id:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    .line 146
    return-object p0
.end method
