.class public Lcom/google/android/apps/lightcycle/glass/DemoAssets;
.super Ljava/lang/Object;
.source "DemoAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "temp_pano.jpg"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private index:I

.field private final musicTracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final panoFileNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->index:I

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->assetManager:Landroid/content/res/AssetManager;

    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->listPanos()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->panoFileNames:[Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->listMusicTracks()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->musicTracks:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found demo panos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->panoFileNames:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private listMusicTracks()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "first_panorama_redwoods.glassdemo.jpg"

    const-string v2, "jurassic_park_theme_song.glassdemo.mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
.end method

.method private listPanos()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 132
    :try_start_0
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->assetManager:Landroid/content/res/AssetManager;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "assets":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, "panos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 135
    .local v1, "asset":Ljava/lang/String;
    const-string v7, ".jpg"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "asset":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "assets":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "panos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v7

    .line 141
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getMusicTrackForPano(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "panoName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->musicTracks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public loadNextDemoPanoAsync(Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 3
    .param p1, "externalCacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "temp_pano.jpg"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v1, "tempFile":Ljava/io/File;
    new-instance v0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;-><init>(Lcom/google/android/apps/lightcycle/glass/DemoAssets;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 81
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public loadNextPano(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "tempFile"    # Ljava/io/File;

    .prologue
    .line 92
    iget v3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->index:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->panoFileNames:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->index:I

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->panoFileNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->index:I

    aget-object v1, v3, v4

    .line 96
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/android/apps/lightcycle/util/FileUtil;->storeFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v1, 0x0

    goto :goto_0
.end method
