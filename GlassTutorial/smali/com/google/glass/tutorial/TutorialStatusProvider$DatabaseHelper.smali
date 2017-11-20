.class Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TutorialStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "tutorialstatus.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v0, "tutorialstatus.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 77
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/tutorial/TutorialStatusProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/glass/tutorial/TutorialStatusProvider$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private populateInitialTutorialValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 99
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 111
    :goto_0
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-direct {p0, p1, v0, v3}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 112
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wink_for_picture_enabled"

    invoke-static {v1, v2, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 103
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "on_head_detection_enabled"

    invoke-static {v1, v2, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    goto :goto_0
.end method

.method private setCompletedState(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .param p3, "completed"    # Z

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p2}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "status"

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v1, "tutorials"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 82
    const-string v0, "CREATE TABLE tutorials (_id TEXT,name TEXT UNIQUE ON CONFLICT REPLACE,status INTEGER DEFAULT 0,completedTime INTEGER DEFAULT 0,PRIMARY KEY (_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->populateInitialTutorialValues(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
