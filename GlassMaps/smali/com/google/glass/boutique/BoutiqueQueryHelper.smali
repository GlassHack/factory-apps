.class public Lcom/google/glass/boutique/BoutiqueQueryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 2

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    return-object v0
.end method

.method public queryAllGlassware(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 43
    .line 45
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 47
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/glass/boutique/BoutiqueQueryHelper;->extractInstalledGlasswaresFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 49
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public queryEnabledMirrorSources(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v7

    .line 129
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->ENABLED_MIRROR_SOURCES_QUERY:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 132
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "mirror_project_id"

    .line 135
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v2, "api:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 136
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 140
    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_3
    return-object v7

    .line 140
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method public queryGlasswareBySource(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 74
    .line 76
    :try_start_0
    const-string v0, "api:"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_PROJECT_ID_QUERY:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 85
    invoke-static {v1}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    if-eqz v1, :cond_2

    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 93
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 88
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public queryInstalledGlasswareByGlasswareId(Landroid/content/ContentResolver;Ljava/lang/Long;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 101
    .line 103
    :try_start_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/boutique/BoutiqueQueryHelper;->PROTOBUF_BLOB_QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueQueryHelper;->BY_GLASSWARE_ID_QUERY:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 111
    invoke-static {v1}, Lcom/google/glass/boutique/BoutiqueUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 114
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    if-eqz v1, :cond_2

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 119
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method
