.class synthetic Lcom/google/glass/musicplayer/BundleManager$4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

.field static final synthetic $SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 462
    invoke-static {}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->values()[Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_PLAYLISTS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_STATIONS:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->BROWSE_MY_MIXES:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 113
    :goto_2
    invoke-static {}, Lcom/google/glass/musicplayer/cards/Card$Type;->values()[Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    :try_start_3
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->ALBUM:Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->CATEGORY:Lcom/google/glass/musicplayer/cards/Card$Type;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
