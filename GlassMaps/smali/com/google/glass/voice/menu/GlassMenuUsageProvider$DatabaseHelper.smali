.class Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


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

    .prologue
    .line 101
    const-string v0, "CREATE TABLE usage_stats (command_literal TEXT, install_time INTEGER DEFAULT 0, last_used_time INTEGER DEFAULT 0, usage_count INTEGER DEFAULT 0, PRIMARY KEY (command_literal));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-object p1

    .line 96
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
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 71
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    invoke-interface {v0}, Lcom/google/common/collect/az;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    .line 75
    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasOpenEndedDecorator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getOpenEndedDecoratorId()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    .line 76
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->firstCharToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggers$Command;->name()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v3, "command_literal"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "command_literal=?"

    .line 87
    const-string v1, "usage_stats"

    new-array v4, v9, [Ljava/lang/String;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v8

    const/4 v5, 0x5

    move-object v0, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    goto :goto_1

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

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
