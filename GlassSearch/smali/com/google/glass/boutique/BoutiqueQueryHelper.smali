.class public Lcom/google/glass/boutique/BoutiqueQueryHelper;
.super Ljava/lang/Object;
.source "BoutiqueQueryHelper.java"


# static fields
.field private static final BY_GLASSWARE_ID_QUERY:Ljava/lang/String;

.field private static final BY_PROJECT_ID_QUERY:Ljava/lang/String;

.field private static final ENABLED_MIRROR_SOURCES_QUERY:Ljava/lang/String;

.field private static final ENABLED_MIRROR_SOURCES_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mirror_project_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY_PROJECTION:[Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_enabled"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mirror_project_id"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY:Ljava/lang/String;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "protobuf_blob"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mirror_project_id"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_PROJECT_ID_QUERY:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glassware_id"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_GLASSWARE_ID_QUERY:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractInstalledGlasswaresFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v0

    .line 63
    .local v0, "result":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    return-object v1
.end method

.method public queryAllGlassware(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v6, 0x0

    .line 45
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    invoke-virtual {p0, v6}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->extractInstalledGlasswaresFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    if-eqz v6, :cond_0

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 127
    .local v7, "enabledSources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 129
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "mirror_project_id"

    .line 135
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "mirrorProjectId":Ljava/lang/String;
    const-string v1, "api:"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v8    # "mirrorProjectId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 136
    .restart local v8    # "mirrorProjectId":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 140
    .end local v8    # "mirrorProjectId":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_3
    return-object v7
.end method

.method public queryGlasswareBySource(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 74
    const/4 v6, 0x0

    .line 76
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "api:"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "projectId":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_PROJECT_ID_QUERY:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    invoke-static {v6}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 88
    if-eqz v6, :cond_0

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 93
    goto :goto_0

    .line 88
    .end local v7    # "projectId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public queryInstalledGlasswareByGlasswareId(Landroid/content/ContentResolver;Ljava/lang/Long;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "glasswareId"    # Ljava/lang/Long;

    .prologue
    const/4 v7, 0x0

    .line 101
    const/4 v6, 0x0

    .line 103
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_GLASSWARE_ID_QUERY:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 111
    invoke-static {v6}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 114
    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    if-eqz v6, :cond_2

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 119
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
