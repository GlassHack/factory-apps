.class Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GlassMenuUsageProvider.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuUsageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "homemenuitems.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    const-string v0, "homemenuitems.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 101
    const-string v0, "CREATE TABLE usage_stats (command_literal TEXT, install_time INTEGER DEFAULT 0, last_used_time INTEGER DEFAULT 0, usage_count INTEGER DEFAULT 0, PRIMARY KEY (command_literal));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    .end local p1    # "input":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 96
    .restart local p1    # "input":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private renameLiterals(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 71
    .local v6, "commandsToUpdate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 72
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/glass/voice/menu/TriggerCommandUi;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/voice/menu/TriggerCommandUi;

    .line 75
    .local v9, "ui":Lcom/google/glass/voice/menu/TriggerCommandUi;
    invoke-virtual {v9}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasOpenEndedDecorator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getOpenEndedDecoratorId()I

    move-result v4

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {v9}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v12

    .line 76
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/glass/app/VoiceTriggers$Command;Lcom/google/glass/voice/menu/TriggerCommandUi;>;"
    .end local v9    # "ui":Lcom/google/glass/voice/menu/TriggerCommandUi;
    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 84
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v2, "values":Landroid/content/ContentValues;
    const-string v1, "command_literal"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "command_literal=?"

    .line 87
    .local v3, "whereClause":Ljava/lang/String;
    const-string/jumbo v1, "usage_stats"

    new-array v4, v13, [Ljava/lang/String;

    .line 88
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v12

    const/4 v5, 0x5

    move-object v0, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    goto :goto_1

    .line 90
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Upgrading database to 4"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->renameLiterals(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "DROP TABLE usage_stats"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
