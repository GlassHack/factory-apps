.class Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TimelineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/TimelineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 176
    const-string v0, "timeline.db"

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 177
    iput-object p1, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 178
    invoke-static {p2, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 180
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 182
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method private createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating entity table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const-string v0, "CREATE TABLE entity (_id INTEGER PRIMARY KEY,entityId TEXT,entityType INTEGER,timelineId TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v0, "CREATE INDEX ix_entity_entityid ON entity(entityId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating pending actions table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeline_id TEXT NOT NULL,action_type INTEGER NOT NULL,payload TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "CREATE INDEX IF NOT EXISTS ix_pending_actions_timeline_id ON pending_actions(timeline_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v0, "CREATE TRIGGER IF NOT EXISTS t_pending_actions_delete_timeline_id DELETE ON timeline BEGIN DELETE FROM pending_actions WHERE timeline_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private createPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating post delete intent table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    const-string v0, "CREATE TABLE post_delete_intent (timeline_id TEXT KEY,intent_blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "CREATE INDEX ix_post_delete_intent ON post_delete_intent(timeline_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating timeline table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const-string v0, "CREATE TABLE timeline (_id TEXT PRIMARY KEY,creation_time INTEGER,modified_time INTEGER,display_time INTEGER,delivery_time INTEGER,expiration_time INTEGER,pin_time INTEGER DEFAULT -1,pin_score INTEGER DEFAULT 2147483647,is_deleted INTEGER DEFAULT 0,has_media_attachment INTEGER DEFAULT 0,sync_status INTEGER DEFAULT 0,sync_protocol INTEGER DEFAULT 0,bundle_id TEXT DEFAULT \"\",bundle_cover_status INTEGER DEFAULT 0,source TEXT DEFAULT \"\",protobuf_blob BLOB,attribution_type INTEGER,processed_html TEXT DEFAULT \"\",processed_html_read_more BOOLEAN DEFAULT 0,source_item_id TEXT DEFAULT \"\",is_bundle_cover BOOLEAN DEFAULT 0,is_directory_cover BOOLEAN DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    const-string v0, "CREATE INDEX ix_timeline_display_time ON timeline(display_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v0, "CREATE INDEX ix_timeline_delivery_time ON timeline(delivery_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v0, "CREATE INDEX ix_timeline_expiration_time ON timeline(expiration_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "CREATE INDEX ix_timeline_pin_time ON timeline(pin_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string v0, "CREATE INDEX ix_timeline_pin_score ON timeline(pin_score);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const-string v0, "CREATE INDEX ix_timeline_is_deleted ON timeline(is_deleted);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v0, "CREATE INDEX ix_timeline_has_media_attachment ON timeline(has_media_attachment);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "CREATE INDEX ix_timeline_sync_status_sync_protocol ON timeline(sync_status, sync_protocol);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v0, "CREATE INDEX ix_timeline_bundle_id ON timeline(bundle_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v0, "CREATE INDEX ix_timeline_bundle_cover_status ON timeline(bundle_cover_status);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    const-string v0, "CREATE INDEX ix_timeline_source ON timeline(source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v0, "CREATE INDEX ix_timeline_attribution_type ON timeline(attribution_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v0, "CREATE INDEX ix_timeline_source_item_id ON timeline(source_item_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v0, "CREATE INDEX ix_is_directory_cover ON timeline(is_directory_cover);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dropping entity table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    const-string v0, "DROP TABLE IF EXISTS entity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "DROP INDEX IF EXISTS ix_entity_entityid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private dropPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dropping pending actions table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const-string v0, "DROP TABLE IF EXISTS pending_actions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    const-string v0, "DROP INDEX IF EXISTS ix_pending_actions_timeline_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    const-string v0, "DROP TRIGGER IF EXISTS t_pending_actions_delete_timeline_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private dropPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dropping Post Delete Intent table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const-string v0, "DROP TABLE IF EXISTS post_delete_intent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v0, "DROP INDEX IF EXISTS ix_post_delete_intent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dropping timeline table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    const-string v0, "DROP TABLE IF EXISTS timeline"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_display_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_delivery_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_expiration_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_pin_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_pin_score"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_is_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_has_media_attachment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_sync_status_sync_protocol"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_bundle_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_bundle_cover_status"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_source"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_attribution_type"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_source_item_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    const-string v0, "DROP INDEX IF EXISTS ix_is_directory_cover"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Downgrading database from version %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 472
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Upgrading database from version %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 349
    const-string v8, "temp_timeline"

    .line 352
    .local v8, "tempTimelineTable":Ljava/lang/String;
    const-string v0, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v0, "ALTER TABLE timeline RENAME TO temp_timeline;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->dropPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createPostDeleteIntentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 376
    const-string v1, "temp_timeline"

    const-string v3, "sync_status!=1"

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 381
    .local v9, "unsyncedItemsCursor":Landroid/database/Cursor;
    const-string v1, "temp_timeline"

    const-string v3, "sync_status=1"

    const-string v7, "display_time DESC LIMIT 100"

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 388
    .local v3, "syncedItemsCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unsynced migration query returned %d results."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_0
    if-eqz v3, :cond_1

    .line 392
    iget-object v0, p0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Synced migration query returned %d results."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_1
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 397
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v7

    new-instance v0, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;

    move-object v1, p0

    move-object v2, v9

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sync/TimelineProvider$DatabaseHelper$1;-><init>(Lcom/google/glass/sync/TimelineProvider$DatabaseHelper;Landroid/database/Cursor;Landroid/database/Cursor;IILandroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v7, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method
