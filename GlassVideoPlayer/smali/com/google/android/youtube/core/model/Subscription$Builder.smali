.class public Lcom/google/android/youtube/core/model/Subscription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Subscription$Type:[I


# instance fields
.field private channelUri:Landroid/net/Uri;

.field private displayUsername:Ljava/lang/String;

.field private editUri:Landroid/net/Uri;

.field private playlistTitle:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/google/android/youtube/core/model/Subscription$Type;

.field private uri:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Subscription$Type()[I
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/youtube/core/model/Subscription$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Subscription$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/Subscription$Type;->values()[Lcom/google/android/youtube/core/model/Subscription$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->UNKNOWN:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Subscription$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 191
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Subscription;
    .locals 7

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/google/android/youtube/core/model/Subscription$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Subscription$Type()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Subscription;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public channelUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    .line 157
    return-object p0
.end method

.method public displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 152
    return-object p0
.end method

.method public playlistTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 117
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 122
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 132
    return-object p0
.end method
