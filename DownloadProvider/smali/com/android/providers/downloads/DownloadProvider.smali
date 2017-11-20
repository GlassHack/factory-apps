.class public final Lcom/android/providers/downloads/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;,
        Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    }
.end annotation


# static fields
.field private static final BASE_URIS:[Landroid/net/Uri;

.field private static final downloadManagerColumnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAppReadableColumnsArray:[Ljava/lang/String;

.field private static final sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColumnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDefContainerUid:I

.field private mDownloadsDataDir:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field private mSystemUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 88
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 105
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads"

    invoke-virtual {v1, v2, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "my_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "all_downloads/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "download/#/headers"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v3, "public_downloads/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    new-array v1, v6, [Landroid/net/Uri;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v8

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 132
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v8

    const-string v2, "entity"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mimetype"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const-string v2, "destination"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "control"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "notificationclass"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "is_visible_in_downloads_ui"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "hint"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mediaprovider_uri"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "deleted"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "_display_name"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "_size"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 163
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sColumnsMap:Ljava/util/HashMap;

    .line 167
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sColumnsMap:Ljava/util/HashMap;

    const-string v2, "_display_name"

    const-string v3, "title AS _display_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sColumnsMap:Ljava/util/HashMap;

    const-string v2, "_size"

    const-string v3, "total_bytes AS _size"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->downloadManagerColumnsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 181
    iput v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    .line 182
    iput v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    .line 231
    return-void
.end method

.method private checkFileUriDestination(Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 707
    const-string v7, "hint"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "fileUri":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 709
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "DESTINATION_FILE_URI must include a file URI under COLUMN_FILE_NAME_HINT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 712
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 713
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "scheme":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 715
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not a file URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 717
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 719
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid file URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 722
    :cond_3
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "canonicalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "externalPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 725
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destination must be on external storage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "externalPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem resolving path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 730
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v2    # "externalPath":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private checkInsertPermissions(Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.ACCESS_DOWNLOAD_MANAGER"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 820
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    const-string v9, "INTERNET permission is required to use the download manager"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 754
    .end local p1    # "values":Landroid/content/ContentValues;
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "is_public_api"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    const-string v7, "destination"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 763
    const-string v7, "total_bytes"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 764
    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 765
    const-string v7, "status"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 767
    :cond_1
    const-string v7, "destination"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 774
    const-string v7, "visibility"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :goto_1
    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 788
    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 789
    const-string v7, "description"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 790
    const-string v7, "mimetype"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 791
    const-string v7, "hint"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 792
    const-string v7, "notificationpackage"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 793
    const-string v7, "allowed_network_types"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 794
    const-string v7, "allow_roaming"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 795
    const-string v7, "allow_metered"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 796
    const-string v7, "allow_unplugged"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 797
    const-string v7, "is_visible_in_downloads_ui"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 798
    const-string v7, "scanned"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 799
    const-string v7, "allow_write"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v6}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 801
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 802
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 803
    .local v5, "key":Ljava/lang/String;
    const-string v7, "http_header_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 804
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 780
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    const-string v7, "visibility"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/DownloadProvider;->enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 809
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Invalid columns in request: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    .local v1, "error":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 812
    .local v2, "first":Z
    invoke-virtual {v6}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 813
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_5

    .line 814
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 818
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v7, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v1    # "error":Ljava/lang/StringBuilder;
    .end local v2    # "first":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object p1, v6

    .line 820
    .end local v6    # "values":Landroid/content/ContentValues;
    .restart local p1    # "values":Landroid/content/ContentValues;
    goto/16 :goto_0
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 1321
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1322
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1325
    :cond_0
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 1314
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1315
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 1328
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_0
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1336
    invoke-static {p0, p1, p2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1337
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    return-void
.end method

.method private deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 999
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1000
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "downloads"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1002
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1004
    .local v10, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1005
    .local v12, "idWhere":Ljava/lang/String;
    const-string v0, "request_headers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1002
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1008
    .end local v10    # "id":J
    .end local v12    # "idWhere":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1010
    return-void
.end method

.method private varargs enforceAllowedValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "allowedValues"    # [Ljava/lang/Object;

    .prologue
    .line 828
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 829
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 830
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 831
    .local v0, "allowedValue":Ljava/lang/Object;
    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 835
    :cond_0
    return-void

    .line 834
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 830
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "allowedValue":Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 959
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "uriMatch"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1128
    new-instance v0, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;-><init>(Lcom/android/providers/downloads/DownloadProvider$1;)V

    .line 1129
    .local v0, "selection":Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    if-eq p4, v5, :cond_0

    const/4 v1, 0x4

    if-eq p4, v1, :cond_0

    const/4 v1, 0x6

    if-ne p4, v1, :cond_1

    .line 1132
    :cond_0
    const-string v1, "_id = ?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :cond_1
    if-eq p4, v4, :cond_2

    if-ne p4, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_ALL_DOWNLOADS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1137
    const-string v1, "uid= ? OR otheruid= ?"

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    :cond_3
    return-object v0
.end method

.method private insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "downloadId"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 966
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 967
    .local v5, "rowValues":Landroid/content/ContentValues;
    const-string v6, "download_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 968
    invoke-virtual {p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 969
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 970
    .local v3, "key":Ljava/lang/String;
    const-string v6, "http_header_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 971
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "headerLine":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 973
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid HTTP header line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 975
    :cond_1
    const-string v6, ":"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 976
    .local v4, "parts":[Ljava/lang/String;
    const-string v6, "header"

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v6, "value"

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v6, "request_headers"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 981
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "headerLine":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1280
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "_id"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1284
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1285
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_0
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1297
    if-nez v6, :cond_2

    .line 1298
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :goto_1
    return-void

    .line 1287
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1288
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1291
    :cond_1
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1300
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1301
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_3
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1303
    :cond_4
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1304
    .local v7, "filename":Ljava/lang/String;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename in openFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1306
    const-string v0, "DownloadManager"

    const-string v1, "file exists in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "starting query, database is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    if-eqz p5, :cond_0

    .line 920
    const-string v2, "not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_0
    const-string v2, "null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    if-nez p1, :cond_3

    .line 924
    const-string v2, "projection is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :cond_1
    :goto_0
    const-string v2, "selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    if-nez p3, :cond_5

    .line 940
    const-string v2, "selectionArgs is null; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_2
    :goto_1
    const-string v2, "sort is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v2, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 925
    :cond_3
    array-length v2, p1

    if-nez v2, :cond_4

    .line 926
    const-string v2, "projection is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 928
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 929
    const-string v2, "projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 931
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 941
    .end local v0    # "i":I
    :cond_5
    array-length v2, p3

    if-nez v2, :cond_6

    .line 942
    const-string v2, "selectionArgs is empty; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 944
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 945
    const-string v2, "selectionArgs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 947
    const-string v2, "] is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uriMatch"    # I

    .prologue
    .line 1114
    const/4 v1, 0x0

    .line 1115
    .local v1, "downloadId":Ljava/lang/Long;
    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 1116
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1118
    :cond_1
    sget-object v0, Lcom/android/providers/downloads/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 1119
    .local v4, "uriToNotify":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 1120
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    .end local v4    # "uriToNotify":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "header"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 991
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "request_headers"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private shouldRestrictVisibility()Z
    .locals 3

    .prologue
    .line 1016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1017
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1151
    sget-object v6, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1155
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 1156
    .local v17, "match":I
    packed-switch v17, :pswitch_data_0

    .line 1180
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting unknown/invalid URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1161
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v18

    .line 1162
    .local v18, "selection":Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/downloads/DownloadProvider;->deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1164
    const-string v6, "downloads"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1168
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1169
    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1170
    .local v15, "id":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-wide v0, v15

    invoke-static {v6, v0, v1}, Lcom/android/providers/downloads/DownloadStorageProvider;->onDownloadProviderDelete(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1173
    .end local v15    # "id":J
    :catchall_0
    move-exception v6

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    :cond_0
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1176
    const-string v6, "downloads"

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1183
    .local v13, "count":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 1184
    return v13

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1246
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    const/16 v3, 0x78

    move-object/from16 v0, p2

    invoke-direct {v15, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1248
    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v2, "Downloads updated in last hour:"

    invoke-virtual {v15, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1252
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long v13, v2, v4

    .line 1253
    .local v13, "modifiedAfter":J
    const-string v2, "downloads"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastmod>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1257
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    .line 1258
    .local v9, "cols":[Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1259
    .local v12, "idCol":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1262
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v2, v9

    if-ge v11, v2, :cond_1

    .line 1264
    const-string v2, "cookiedata"

    aget-object v3, v9, v11

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1267
    :cond_0
    aget-object v2, v9, v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1273
    .end local v9    # "cols":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "idCol":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1269
    .restart local v9    # "cols":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "idCol":I
    :cond_1
    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1270
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1273
    .end local v11    # "i":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1276
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1277
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 489
    sget-object v4, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 490
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 512
    :pswitch_0
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 513
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling getType on an unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :pswitch_1
    const-string v3, "vnd.android.cursor.dir/download"

    .line 508
    :cond_1
    :goto_0
    return-object v3

    .line 499
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT mimetype FROM downloads WHERE _id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const-string v3, "vnd.android.cursor.item/download"

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->checkInsertPermissions(Landroid/content/ContentValues;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 529
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v20, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 530
    .local v14, "match":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_0

    .line 531
    const-string v20, "DownloadManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "calling insert on an unknown/invalid URI: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown/Invalid URI "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 536
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .local v8, "filteredValues":Landroid/content/ContentValues;
    const-string v20, "uri"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 538
    const-string v20, "entity"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 539
    const-string v20, "no_integrity"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 540
    const-string v20, "hint"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 541
    const-string v20, "mimetype"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 542
    const-string v20, "is_public_api"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 544
    const-string v20, "is_public_api"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    .line 548
    .local v11, "isPublicApi":Z
    :goto_0
    const-string v20, "destination"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 549
    .local v7, "dest":Ljava/lang/Integer;
    if-eqz v7, :cond_6

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 555
    :cond_1
    new-instance v20, Ljava/lang/SecurityException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setting destination to : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not allowed, unless PERMISSION_ACCESS_ADVANCED is granted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 544
    .end local v7    # "dest":Ljava/lang/Integer;
    .end local v11    # "isPublicApi":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 560
    .restart local v7    # "dest":Ljava/lang/Integer;
    .restart local v11    # "isPublicApi":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "android.permission.DOWNLOAD_CACHE_NON_PURGEABLE"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_e

    const/4 v9, 0x1

    .line 564
    .local v9, "hasNonPurgeablePermission":Z
    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    if-eqz v9, :cond_4

    .line 566
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 568
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const-string v24, "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI"

    invoke-virtual/range {v20 .. v24}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->checkFileUriDestination(Landroid/content/ContentValues;)V

    .line 580
    :cond_5
    :goto_2
    const-string v20, "destination"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    .end local v9    # "hasNonPurgeablePermission":Z
    :cond_6
    const-string v20, "visibility"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 585
    .local v19, "vis":Ljava/lang/Integer;
    if-nez v19, :cond_11

    .line 586
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-nez v20, :cond_10

    .line 587
    const-string v20, "visibility"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    :goto_3
    const-string v20, "control"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 604
    const-string v20, "destination"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 607
    const-string v20, "status"

    const/16 v21, 0xc8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v20, "total_bytes"

    const-string v21, "total_bytes"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    const-string v20, "current_bytes"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string v20, "scanned"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 612
    const-string v20, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 613
    const-string v20, "allow_write"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 621
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v12

    .line 622
    .local v12, "lastMod":J
    const-string v20, "lastmod"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    const-string v20, "notificationpackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 626
    .local v15, "pckg":Ljava/lang/String;
    const-string v20, "notificationclass"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "clazz":Ljava/lang/String;
    if-eqz v15, :cond_9

    if-nez v4, :cond_7

    if-eqz v11, :cond_9

    .line 628
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 630
    .local v18, "uid":I
    if-eqz v18, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1, v15}, Lcom/android/providers/downloads/SystemFacade;->userOwnsPackage(ILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 631
    :cond_8
    const-string v20, "notificationpackage"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    if-eqz v4, :cond_9

    .line 633
    const-string v20, "notificationclass"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v18    # "uid":I
    :cond_9
    :goto_5
    const-string v20, "notificationextras"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 643
    const-string v20, "cookiedata"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 644
    const-string v20, "useragent"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 645
    const-string v20, "referer"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_a

    .line 650
    const-string v20, "otheruid"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 652
    :cond_a
    const-string v20, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    if-nez v20, :cond_b

    .line 654
    const-string v20, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 658
    :cond_b
    const-string v20, "title"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v8, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 659
    const-string v20, "description"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v8, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 662
    const-string v20, "is_visible_in_downloads_ui"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 663
    const-string v20, "is_visible_in_downloads_ui"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 671
    :goto_6
    if-eqz v11, :cond_c

    .line 672
    const-string v20, "allowed_network_types"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 673
    const-string v20, "allow_roaming"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 674
    const-string v20, "allow_metered"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 675
    const-string v20, "allow_unplugged"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 678
    :cond_c
    sget-boolean v20, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v20, :cond_d

    .line 679
    const-string v20, "DownloadManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "initiating download with UID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "uid"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v20, "otheruid"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 682
    const-string v20, "DownloadManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "other UID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "otheruid"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_d
    const-string v20, "downloads"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 688
    .local v16, "rowID":J
    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-nez v20, :cond_16

    .line 689
    const-string v20, "DownloadManager"

    const-string v21, "couldn\'t insert into downloads database"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v20, 0x0

    .line 700
    :goto_7
    return-object v20

    .line 560
    .end local v4    # "clazz":Ljava/lang/String;
    .end local v12    # "lastMod":J
    .end local v15    # "pckg":Ljava/lang/String;
    .end local v16    # "rowID":J
    .end local v19    # "vis":Ljava/lang/Integer;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 574
    .restart local v9    # "hasNonPurgeablePermission":Z
    :cond_f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "android.permission.ACCESS_CACHE_FILESYSTEM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const-string v24, "need ACCESS_CACHE_FILESYSTEM permission to use system cache"

    invoke-virtual/range {v20 .. v24}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_2

    .line 590
    .end local v9    # "hasNonPurgeablePermission":Z
    .restart local v19    # "vis":Ljava/lang/Integer;
    :cond_10
    const-string v20, "visibility"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 594
    :cond_11
    const-string v20, "visibility"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 615
    :cond_12
    const-string v20, "status"

    const/16 v21, 0xbe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v20, "total_bytes"

    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v20, "current_bytes"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 666
    .restart local v4    # "clazz":Ljava/lang/String;
    .restart local v12    # "lastMod":J
    .restart local v15    # "pckg":Ljava/lang/String;
    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-nez v20, :cond_15

    :cond_14
    const/4 v10, 0x1

    .line 667
    .local v10, "isExternal":Z
    :goto_8
    const-string v20, "is_visible_in_downloads_ui"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 666
    .end local v10    # "isExternal":Z
    :cond_15
    const/4 v10, 0x0

    goto :goto_8

    .line 693
    .restart local v16    # "rowID":J
    :cond_16
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/providers/downloads/DownloadProvider;->insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 694
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 698
    .local v5, "context":Landroid/content/Context;
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 700
    sget-object v20, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    goto/16 :goto_7

    .line 636
    .end local v5    # "context":Landroid/content/Context;
    .end local v16    # "rowID":J
    .restart local v18    # "uid":I
    :catch_0
    move-exception v20

    goto/16 :goto_5
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v3, :cond_0

    .line 450
    new-instance v3, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 453
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mHandler:Landroid/os/Handler;

    .line 455
    new-instance v3, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;-><init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 457
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mSystemUid:I

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.defcontainer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 467
    :goto_0
    if-eqz v0, :cond_1

    .line 468
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDefContainerUid:I

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 473
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 474
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    .line 476
    :try_start_1
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 464
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 465
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DownloadManager"

    const-string v4, "Could not get ApplicationInfo for com.android.defconatiner"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 477
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 478
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "Could not get canonical path for download directory"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1192
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 1193
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadProvider;->logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1196
    :cond_0
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1199
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1200
    .local v6, "count":I
    :cond_1
    if-eq v6, v11, :cond_3

    .line 1202
    if-nez v6, :cond_2

    .line 1203
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    .end local v6    # "count":I
    :catchall_0
    move-exception v0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1205
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1209
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1211
    .local v10, "path":Ljava/lang/String;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1214
    if-nez v10, :cond_4

    .line 1215
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mDownloadsDataDir:Ljava/io/File;

    invoke-static {v10, v0}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1218
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v9, "file":Ljava/io/File;
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1223
    const/high16 v0, 0x10000000

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1227
    :goto_0
    return-object v0

    :cond_6
    :try_start_2
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/providers/downloads/DownloadProvider$1;

    invoke-direct {v2, p0, v9, p1}, Lcom/android/providers/downloads/DownloadProvider$1;-><init>(Lcom/android/providers/downloads/DownloadProvider;Ljava/io/File;Landroid/net/Uri;)V

    invoke-static {v9, v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v8

    .line 1239
    .local v8, "e":Ljava/io/IOException;
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 849
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 853
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 854
    .local v20, "match":I
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_1

    .line 855
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 856
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "querying unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 861
    :cond_1
    const/4 v5, 0x5

    move/from16 v0, v20

    if-ne v0, v5, :cond_5

    .line 862
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p5, :cond_3

    .line 863
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Request header queries do not support projections, selections or sorting"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 866
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/providers/downloads/DownloadProvider;->queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v22

    .line 912
    :cond_4
    :goto_0
    return-object v22

    .line 869
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v18

    .line 871
    .local v18, "fullSelection":Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->shouldRestrictVisibility()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 872
    if-nez p2, :cond_8

    .line 873
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    invoke-virtual {v5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "projection":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .line 885
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v19

    if-ge v0, v5, :cond_a

    .line 886
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sColumnsMap:Ljava/util/HashMap;

    aget-object v6, p2, v19

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 887
    .local v21, "newColumn":Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 888
    aput-object v21, p2, v19

    .line 885
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 876
    .end local v19    # "i":I
    .end local v21    # "newColumn":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v19

    if-ge v0, v5, :cond_6

    .line 877
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v6, p2, v19

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->downloadManagerColumnsList:Ljava/util/List;

    aget-object v6, p2, v19

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 879
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not allowed in queries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 876
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 893
    .end local v19    # "i":I
    :cond_a
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 894
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/downloads/DownloadProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 897
    :cond_b
    const-string v11, "downloads"

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p2

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 900
    .local v22, "ret":Landroid/database/Cursor;
    if-eqz v22, :cond_c

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 902
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_4

    .line 903
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on behalf of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :cond_c
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_4

    .line 908
    const-string v5, "DownloadManager"

    const-string v6, "query failed in downloads database"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1029
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1034
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v22, 0x0

    .line 1036
    .local v22, "startService":Z
    const-string v5, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1037
    const-string v5, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1039
    const/16 v22, 0x1

    .line 1044
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1045
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    .local v16, "filteredValues":Landroid/content/ContentValues;
    const-string v5, "entity"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1047
    const-string v5, "visibility"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1048
    const-string v5, "control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1049
    .local v17, "i":Ljava/lang/Integer;
    if-eqz v17, :cond_1

    .line 1050
    const-string v5, "control"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const/16 v22, 0x1

    .line 1054
    :cond_1
    const-string v5, "control"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1055
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1056
    const-string v5, "mediaprovider_uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1057
    const-string v5, "description"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1058
    const-string v5, "deleted"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1080
    .end local v17    # "i":Ljava/lang/Integer;
    :cond_2
    :goto_0
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 1081
    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    .line 1096
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating unknown/invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1060
    .end local v16    # "filteredValues":Landroid/content/ContentValues;
    .end local v20    # "match":I
    :cond_3
    move-object/from16 v16, p2

    .line 1061
    .restart local v16    # "filteredValues":Landroid/content/ContentValues;
    const-string v5, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1062
    .local v15, "filename":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 1063
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1065
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1066
    :cond_4
    const-string v5, "title"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1071
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v5, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 1072
    .local v23, "status":Ljava/lang/Integer;
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xbe

    if-ne v5, v6, :cond_8

    const/16 v18, 0x1

    .line 1073
    .local v18, "isRestart":Z
    :goto_1
    const-string v5, "bypass_recommended_size_limit"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    .line 1075
    .local v19, "isUserBypassingSizeLimit":Z
    if-nez v18, :cond_7

    if-eqz v19, :cond_2

    .line 1076
    :cond_7
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v18    # "isRestart":Z
    .end local v19    # "isUserBypassingSizeLimit":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    .line 1086
    .end local v15    # "filename":Ljava/lang/String;
    .end local v23    # "status":Ljava/lang/Integer;
    .restart local v20    # "match":I
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/android/providers/downloads/DownloadProvider$SqlSelection;

    move-result-object v21

    .line 1087
    .local v21, "selection":Lcom/android/providers/downloads/DownloadProvider$SqlSelection;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1088
    const-string v5, "downloads"

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/downloads/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1100
    .local v13, "count":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 1101
    if-eqz v22, :cond_9

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 1103
    .local v12, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v5, v12, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1105
    .end local v12    # "context":Landroid/content/Context;
    :cond_9
    return v13

    .line 1091
    .end local v13    # "count":I
    :cond_a
    const/4 v13, 0x0

    .line 1093
    .restart local v13    # "count":I
    goto :goto_2

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
