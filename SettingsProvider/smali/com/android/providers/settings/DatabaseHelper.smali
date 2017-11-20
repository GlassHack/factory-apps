.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 87
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 113
    invoke-static {p2}, Lcom/android/providers/settings/DatabaseHelper;->dbNameForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x62

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 114
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 115
    iput p2, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    .line 116
    return-void
.end method

.method private createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    const-string v0, "CREATE TABLE global (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v0, "CREATE INDEX globalIndex1 ON global (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 123
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method static dbNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userHandle"    # I

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v1, "settings.db"

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 2310
    const-string v0, "system"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 2315
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2316
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method private getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 2321
    const/4 v8, 0x0

    .line 2323
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2325
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2326
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2327
    .local v9, "val":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2330
    .end local p4    # "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2332
    .end local v9    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p4

    .restart local v9    # "val":Ljava/lang/String;
    .restart local p4    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p4, v9

    .line 2327
    goto :goto_0

    .line 2330
    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1591
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1773
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1775
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1777
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f030000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 1778
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1780
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1784
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1786
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1790
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1791
    .local v12, "name":Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1851
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 1795
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "type":I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1796
    .local v16, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1797
    .local v5, "cls":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1798
    .local v17, "shortcutStr":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1800
    .local v4, "category":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1801
    .local v18, "shortcutValue":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1802
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1846
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 1847
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1808
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    .line 1809
    const/4 v10, 0x0

    .line 1810
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1812
    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 1825
    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1826
    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1828
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1838
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "title":Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1839
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1842
    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1844
    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1848
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .line 1849
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1813
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "depth":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :catch_2
    move-exception v8

    .line 1814
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1816
    .local v14, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1818
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 1819
    :catch_3
    move-exception v9

    .line 1820
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1829
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packages":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1830
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1831
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v19, ""

    .restart local v19    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 1833
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2297
    return-void

    .line 2295
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    .line 2022
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f070000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2024
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2026
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2029
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2031
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "base"    # I

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2307
    return-void
.end method

.method private loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2131
    const/4 v2, 0x0

    .line 2133
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v6, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2137
    const-string v6, "airplane_mode_on"

    const v7, 0x7f040001

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2140
    const-string v6, "airplane_mode_radios"

    const/high16 v7, 0x7f060000

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2143
    const-string v6, "airplane_mode_toggleable_radios"

    const v7, 0x7f060001

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2146
    const-string v6, "assisted_gps_enabled"

    const v7, 0x7f04000b

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2149
    const-string v6, "auto_time"

    const v7, 0x7f040002

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2152
    const-string v6, "auto_time_zone"

    const v7, 0x7f040003

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2155
    const-string v7, "stay_on_while_plugged_in"

    const-string v6, "1"

    const-string v8, "ro.kernel.qemu"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f040021

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v7, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2160
    const-string v6, "wifi_sleep_policy"

    const v7, 0x7f050002

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2163
    const-string v6, "mode_ringer"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2167
    const-string v6, "package_verifier_enable"

    const v7, 0x7f04000a

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2170
    const-string v6, "wifi_on"

    const v7, 0x7f04000e

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2173
    const-string v6, "wifi_networks_available_notification_on"

    const v7, 0x7f04000f

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2176
    const-string v6, "bluetooth_on"

    const v7, 0x7f040007

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2180
    const-string v6, "cdma_cell_broadcast_sms"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2184
    const-string v7, "data_roaming"

    const-string v6, "true"

    const-string v8, "ro.com.android.dataroaming"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v2, v7, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2189
    const-string v6, "device_provisioned"

    const v7, 0x7f040017

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2192
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2194
    .local v0, "maxBytes":I
    if-lez v0, :cond_1

    .line 2195
    const-string v6, "download_manager_max_bytes_over_mobile"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2199
    :cond_1
    iget-object v6, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2201
    .local v1, "recommendedMaxBytes":I
    if-lez v1, :cond_2

    .line 2202
    const-string v6, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2207
    :cond_2
    const-string v6, "mobile_data"

    const-string v7, "true"

    const-string v8, "ro.com.android.mobiledata"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v6, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2212
    const-string v4, "netstats_enabled"

    const v5, 0x7f04000c

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2215
    const-string v4, "install_non_market_apps"

    const v5, 0x7f040009

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2218
    const-string v4, "usb_mass_storage_enabled"

    const v5, 0x7f04000d

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2221
    const-string v4, "wifi_max_dhcp_retry_count"

    const v5, 0x7f05000c

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2224
    const-string v4, "wifi_display_on"

    const v5, 0x7f040008

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2227
    const-string v4, "lock_sound"

    const v5, 0x7f060009

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2229
    const-string v4, "unlock_sound"

    const v5, 0x7f06000a

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2231
    const-string v4, "power_sounds_enabled"

    const v5, 0x7f050003

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2233
    const-string v4, "low_battery_sound"

    const v5, 0x7f060004

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2235
    const-string v4, "dock_sounds_enabled"

    const v5, 0x7f050004

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2237
    const-string v4, "desk_dock_sound"

    const v5, 0x7f060005

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2239
    const-string v4, "desk_undock_sound"

    const v5, 0x7f060006

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2241
    const-string v4, "car_dock_sound"

    const v5, 0x7f060007

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2243
    const-string v4, "car_undock_sound"

    const v5, 0x7f060008

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2245
    const-string v4, "wireless_charging_started_sound"

    const v5, 0x7f06000b

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2248
    const-string v4, "set_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2249
    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2253
    const-string v4, "emergency_tone"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2256
    const-string v4, "call_auto_retry"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2261
    const-string v4, "ro.telephony.default_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2263
    .local v3, "type":I
    const-string v4, "preferred_network_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2267
    const-string v4, "ro.telephony.default_cdma_sub"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2269
    const-string v4, "subscription_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2271
    const-string v4, "low_battery_sound_timeout"

    const v5, 0x7f05000d

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2274
    sget-boolean v4, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v4, :cond_3

    .line 2275
    const-string v4, "dock_audio_media_enabled"

    const v5, 0x7f050006

    invoke-direct {p0, v2, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2280
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2282
    :cond_4
    return-void

    .end local v0    # "maxBytes":I
    .end local v1    # "recommendedMaxBytes":I
    .end local v3    # "type":I
    :cond_5
    move v6, v5

    .line 2155
    goto/16 :goto_0

    :cond_6
    move v6, v5

    .line 2184
    goto/16 :goto_1

    .restart local v0    # "maxBytes":I
    .restart local v1    # "recommendedMaxBytes":I
    :cond_7
    move v4, v5

    .line 2207
    goto/16 :goto_2

    .line 2280
    .end local v0    # "maxBytes":I
    .end local v1    # "recommendedMaxBytes":I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8
    throw v4
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2302
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2123
    const-string v0, "backup_enabled"

    const v1, 0x7f040010

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2126
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2128
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2034
    const/4 v0, 0x0

    .line 2036
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2039
    const-string v4, "location_providers_allowed"

    const v5, 0x7f060002

    invoke-direct {p0, v0, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2042
    const-string v4, "ro.com.android.wifi-watchlist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "wifiWatchList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2044
    const-string v4, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2052
    :cond_0
    const-string v4, "mock_location"

    const-string v5, "1"

    const-string v6, "ro.allow.mock.location"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2055
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2057
    const-string v2, "mount_play_not_snd"

    const v4, 0x7f040012

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2060
    const-string v2, "mount_ums_autostart"

    const v4, 0x7f040013

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2063
    const-string v2, "mount_ums_prompt"

    const v4, 0x7f040014

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2066
    const-string v2, "mount_ums_notify_enabled"

    const v4, 0x7f040015

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2069
    const-string v2, "accessibility_script_injection"

    const v4, 0x7f04001a

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2072
    const-string v2, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000c

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2075
    const-string v2, "long_press_timeout"

    const v4, 0x7f05000a

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2078
    const-string v2, "touch_exploration_enabled"

    const v4, 0x7f04001c

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2081
    const-string v2, "speak_password"

    const v4, 0x7f04001b

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2084
    const-string v2, "accessibility_script_injection_url"

    const v4, 0x7f06000d

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2087
    const-string v2, "ro.lockscreen.disable.default"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2088
    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2094
    :goto_0
    const-string v2, "screensaver_enabled"

    const v3, 0x1110049

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2096
    const-string v2, "screensaver_activate_on_dock"

    const v3, 0x111004a

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2098
    const-string v2, "screensaver_activate_on_sleep"

    const v3, 0x111004b

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2100
    const-string v2, "screensaver_components"

    const v3, 0x1040038

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2102
    const-string v2, "screensaver_default_component"

    const v3, 0x1040038

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2105
    const-string v2, "accessibility_display_magnification_enabled"

    const v3, 0x7f04001d

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2108
    const-string v2, "accessibility_display_magnification_scale"

    const v3, 0x7f070002

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2111
    const-string v2, "accessibility_display_magnification_auto_update"

    const v3, 0x7f04001e

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2115
    const-string v2, "user_setup_complete"

    const v3, 0x7f040022

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2120
    :cond_2
    return-void

    .line 2090
    :cond_3
    :try_start_1
    const-string v2, "lockscreen.disabled"

    const v3, 0x7f040016

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2118
    .end local v1    # "wifiWatchList":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 2285
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2286
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2287
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2288
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1956
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1959
    iget v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v0, :cond_0

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1962
    :cond_0
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2292
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1965
    const/4 v0, 0x0

    .line 1967
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1970
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f040000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1972
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f050000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1976
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1979
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1982
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1984
    const-string v1, "screen_brightness"

    const v2, 0x7f050001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1987
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f040005

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1990
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1992
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f040004

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1995
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1997
    const-string v1, "notification_light_pulse"

    const v2, 0x7f040011

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2000
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2002
    const-string v1, "pointer_speed"

    const v2, 0x7f05000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2007
    :cond_0
    return-void

    .line 2005
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2010
    const-string v0, "dtmf_tone"

    const v1, 0x7f04001f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2012
    const-string v0, "sound_effects_enabled"

    const v1, 0x7f040020

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2014
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2017
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2019
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteOld"    # Z

    .prologue
    .line 1915
    if-eqz p2, :cond_0

    .line 1916
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    :cond_0
    const/4 v0, 0x0

    .line 1921
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1925
    const/4 v1, 0x0

    .line 1926
    .local v1, "vibrate":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1929
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 1931
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1935
    :cond_1
    return-void

    .line 1933
    .end local v1    # "vibrate":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1941
    const-string v5, "vibrate_on"

    invoke-direct {p0, p1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 1943
    .local v1, "vibrateSetting":I
    and-int/lit8 v5, v1, 0x3

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 1945
    .local v2, "vibrateWhenRinging":Z
    :goto_0
    const/4 v0, 0x0

    .line 1947
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1949
    const-string v5, "vibrate_when_ringing"

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1953
    :cond_0
    return-void

    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "vibrateWhenRinging":Z
    :cond_1
    move v2, v4

    .line 1943
    goto :goto_0

    .restart local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v2    # "vibrateWhenRinging":Z
    :cond_2
    move v3, v4

    .line 1949
    goto :goto_1

    .line 1951
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    throw v3
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1860
    const/4 v1, 0x0

    .line 1862
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1865
    const-string v2, "volume_music"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1867
    const-string v2, "volume_ring"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1869
    const-string v2, "volume_system"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1871
    const-string v2, "volume_voice"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1875
    const-string v2, "volume_alarm"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1877
    const-string v2, "volume_notification"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    const-string v2, "volume_bluetooth_sco"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1891
    const/16 v0, 0xa6

    .line 1895
    .local v0, "ringerModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1897
    or-int/lit8 v0, v0, 0x8

    .line 1899
    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1902
    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1911
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1912
    return-void

    .line 1908
    .end local v0    # "ringerModeAffectedStreams":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "prefixesToMove"    # [Ljava/lang/String;

    .prologue
    .line 1634
    const/4 v3, 0x0

    .line 1635
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1637
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1639
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1645
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1646
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1647
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1648
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1650
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1651
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1652
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1645
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1657
    if-eqz v3, :cond_1

    .line 1658
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1660
    :cond_1
    if-eqz v1, :cond_2

    .line 1661
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1664
    :cond_2
    return-void

    .line 1656
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1657
    if-eqz v3, :cond_3

    .line 1658
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1660
    :cond_3
    if-eqz v1, :cond_4

    .line 1661
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "settingsToMove"    # [Ljava/lang/String;
    .param p5, "doIgnore"    # Z

    .prologue
    .line 1598
    const/4 v3, 0x0

    .line 1599
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1601
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1603
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_0

    const-string v6, " OR IGNORE "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1609
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 1610
    .local v5, "setting":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1611
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1613
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1614
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1609
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1603
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "setting":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 1616
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1619
    if-eqz v3, :cond_2

    .line 1620
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1622
    :cond_2
    if-eqz v1, :cond_3

    .line 1623
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1626
    :cond_3
    return-void

    .line 1618
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1619
    if-eqz v3, :cond_4

    .line 1620
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1622
    :cond_4
    if-eqz v1, :cond_5

    .line 1623
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v6
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1754
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1756
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 1759
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1765
    return-void

    .line 1756
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1763
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 1667
    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1669
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1670
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1671
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1672
    .local v10, "lockPattern":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1676
    .local v11, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1678
    .local v9, "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    .end local v9    # "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1684
    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1688
    .end local v10    # "lockPattern":Ljava/lang/String;
    :goto_1
    return-void

    .line 1686
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1679
    .restart local v10    # "lockPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1692
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1696
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1697
    .local v9, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1698
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1700
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1704
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1707
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 1710
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 1715
    const-string v2, "vibrate_on"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 1717
    .local v1, "vibrateSetting":I
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 1718
    const/4 v2, 0x2

    invoke-static {v3, v3, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1722
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1725
    const/4 v0, 0x0

    .line 1727
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1729
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    if-eqz v0, :cond_1

    .line 1732
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1734
    :cond_1
    return-void

    .line 1731
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 1732
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 142
    const-string v1, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v1, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    :cond_0
    const-string v1, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v1, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v1, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v1, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "onlyCore":Z
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    :goto_0
    if-nez v0, :cond_1

    .line 184
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    return-void

    .line 181
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 36
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 196
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading settings database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move/from16 v32, p2

    .line 208
    .local v32, "upgradeVersion":I
    const/16 v3, 0x14

    move/from16 v0, v32

    if-ne v0, v3, :cond_0

    .line 215
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 217
    const/16 v32, 0x15

    .line 220
    :cond_0
    const/16 v3, 0x16

    move/from16 v0, v32

    if-ge v0, v3, :cond_1

    .line 221
    const/16 v32, 0x16

    .line 223
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    :cond_1
    const/16 v3, 0x17

    move/from16 v0, v32

    if-ge v0, v3, :cond_2

    .line 227
    const-string v3, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    const/16 v32, 0x17

    .line 231
    :cond_2
    const/16 v3, 0x17

    move/from16 v0, v32

    if-ne v0, v3, :cond_3

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    :try_start_0
    const-string v3, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    const-string v3, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v3, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const-string v3, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v3, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    const/16 v32, 0x18

    .line 250
    :cond_3
    const/16 v3, 0x18

    move/from16 v0, v32

    if-ne v0, v3, :cond_4

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 255
    :try_start_1
    const-string v3, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    const-string v3, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    const/16 v32, 0x19

    .line 265
    :cond_4
    const/16 v3, 0x19

    move/from16 v0, v32

    if-ne v0, v3, :cond_5

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 268
    :try_start_2
    const-string v3, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v3, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 274
    const/16 v32, 0x1a

    .line 277
    :cond_5
    const/16 v3, 0x1a

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 281
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    const/16 v32, 0x1b

    .line 289
    :cond_6
    const/16 v3, 0x1b

    move/from16 v0, v32

    if-ne v0, v3, :cond_7

    .line 290
    const/16 v3, 0x1f

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "android_id"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "location_providers_allowed"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "logging_id"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "network_preference"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "parental_control_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "parental_control_last_update"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "parental_control_redirect_url"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "settings_classname"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "use_google_mail"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "wifi_networks_available_notification_on"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "wifi_networks_available_repeat_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "wifi_num_open_networks_kept"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "wifi_on"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "wifi_watchdog_ap_count"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "wifi_watchdog_background_check_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "wifi_watchdog_background_check_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "wifi_watchdog_background_check_timeout_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "wifi_watchdog_max_ap_checks"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "wifi_watchdog_on"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "wifi_watchdog_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "wifi_watchdog_ping_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "wifi_watchdog_ping_timeout_ms"

    aput-object v4, v7, v3

    .line 323
    .local v7, "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 324
    const/16 v32, 0x1c

    .line 327
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_7
    const/16 v3, 0x1c

    move/from16 v0, v32

    if-eq v0, v3, :cond_8

    const/16 v3, 0x1d

    move/from16 v0, v32

    if-ne v0, v3, :cond_9

    .line 334
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 336
    :try_start_4
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    const/16 v25, 0x26

    .line 341
    .local v25, "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 349
    const/16 v32, 0x1e

    .line 352
    .end local v25    # "newValue":I
    :cond_9
    const/16 v3, 0x1e

    move/from16 v0, v32

    if-ne v0, v3, :cond_a

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 360
    :try_start_5
    const-string v3, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    const-string v3, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 366
    const/16 v32, 0x1f

    .line 369
    :cond_a
    const/16 v3, 0x1f

    move/from16 v0, v32

    if-ne v0, v3, :cond_c

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    const/16 v28, 0x0

    .line 377
    .local v28, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    if-eqz v28, :cond_b

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 389
    :cond_b
    const/16 v32, 0x20

    .line 392
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v3, 0x20

    move/from16 v0, v32

    if-ne v0, v3, :cond_e

    .line 395
    const-string v3, "ro.com.android.wifi-watchlist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 396
    .local v34, "wifiWatchList":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 399
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 407
    :cond_d
    const/16 v32, 0x21

    .line 410
    .end local v34    # "wifiWatchList":Ljava/lang/String;
    :cond_e
    const/16 v3, 0x21

    move/from16 v0, v32

    if-ne v0, v3, :cond_f

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 414
    :try_start_8
    const-string v3, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 419
    const/16 v32, 0x22

    .line 422
    :cond_f
    const/16 v3, 0x22

    move/from16 v0, v32

    if-ne v0, v3, :cond_11

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 424
    const/16 v28, 0x0

    .line 426
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 432
    if-eqz v28, :cond_10

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 434
    :cond_10
    const/16 v32, 0x23

    .line 440
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v3, 0x23

    move/from16 v0, v32

    if-ne v0, v3, :cond_12

    .line 441
    const/16 v32, 0x24

    .line 444
    :cond_12
    const/16 v3, 0x24

    move/from16 v0, v32

    if-ne v0, v3, :cond_13

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 449
    :try_start_a
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const/16 v25, 0xa6

    .line 455
    .restart local v25    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 462
    const/16 v32, 0x25

    .line 465
    .end local v25    # "newValue":I
    :cond_13
    const/16 v3, 0x25

    move/from16 v0, v32

    if-ne v0, v3, :cond_15

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 467
    const/16 v28, 0x0

    .line 469
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 471
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 476
    if-eqz v28, :cond_14

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 478
    :cond_14
    const/16 v32, 0x26

    .line 481
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v3, 0x26

    move/from16 v0, v32

    if-ne v0, v3, :cond_16

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 484
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string v33, "1"

    .line 486
    .local v33, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    const/16 v32, 0x27

    .line 496
    .end local v33    # "value":Ljava/lang/String;
    :cond_16
    const/16 v3, 0x27

    move/from16 v0, v32

    if-ne v0, v3, :cond_17

    .line 497
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 498
    const/16 v32, 0x28

    .line 501
    :cond_17
    const/16 v3, 0x28

    move/from16 v0, v32

    if-ne v0, v3, :cond_19

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 506
    const/16 v28, 0x0

    .line 508
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 514
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 518
    if-eqz v28, :cond_18

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 520
    :cond_18
    const/16 v32, 0x29

    .line 523
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v3, 0x29

    move/from16 v0, v32

    if-ne v0, v3, :cond_1b

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 528
    const/16 v28, 0x0

    .line 530
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v3, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 538
    if-eqz v28, :cond_1a

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 540
    :cond_1a
    const/16 v32, 0x2a

    .line 543
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v3, 0x2a

    move/from16 v0, v32

    if-ne v0, v3, :cond_1d

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 548
    const/16 v28, 0x0

    .line 550
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 552
    const-string v3, "notification_light_pulse"

    const v4, 0x7f040011

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 557
    if-eqz v28, :cond_1c

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 559
    :cond_1c
    const/16 v32, 0x2b

    .line 562
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v3, 0x2b

    move/from16 v0, v32

    if-ne v0, v3, :cond_1f

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 567
    const/16 v28, 0x0

    .line 569
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 571
    const-string v3, "volume_bluetooth_sco"

    sget-object v4, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 576
    if-eqz v28, :cond_1e

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 578
    :cond_1e
    const/16 v32, 0x2c

    .line 581
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v3, 0x2c

    move/from16 v0, v32

    if-ne v0, v3, :cond_20

    .line 585
    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    const/16 v32, 0x2d

    .line 590
    :cond_20
    const/16 v3, 0x2d

    move/from16 v0, v32

    if-ne v0, v3, :cond_21

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 596
    :try_start_11
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 608
    const/16 v32, 0x2e

    .line 611
    :cond_21
    const/16 v3, 0x2e

    move/from16 v0, v32

    if-ne v0, v3, :cond_22

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 618
    :try_start_12
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 623
    const/16 v32, 0x2f

    .line 627
    :cond_22
    const/16 v3, 0x2f

    move/from16 v0, v32

    if-ne v0, v3, :cond_23

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 634
    :try_start_13
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 639
    const/16 v32, 0x30

    .line 642
    :cond_23
    const/16 v3, 0x30

    move/from16 v0, v32

    if-ne v0, v3, :cond_24

    .line 647
    const/16 v32, 0x31

    .line 650
    :cond_24
    const/16 v3, 0x31

    move/from16 v0, v32

    if-ne v0, v3, :cond_26

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 655
    const/16 v28, 0x0

    .line 657
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_14
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    if-eqz v28, :cond_25

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 666
    :cond_25
    const/16 v32, 0x32

    .line 669
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v3, 0x32

    move/from16 v0, v32

    if-ne v0, v3, :cond_27

    .line 673
    const/16 v32, 0x33

    .line 676
    :cond_27
    const/16 v3, 0x33

    move/from16 v0, v32

    if-ne v0, v3, :cond_28

    .line 678
    const/16 v3, 0x9

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "lock_pattern_visible_pattern"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "lock_pattern_tactile_feedback_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "lockscreen.password_type"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "lockscreen.lockoutattemptdeadline"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "lockscreen.patterneverchosen"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "lockscreen.lockedoutpermanently"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "lockscreen.password_salt"

    aput-object v4, v7, v3

    .line 689
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 690
    const/16 v32, 0x34

    .line 693
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_28
    const/16 v3, 0x34

    move/from16 v0, v32

    if-ne v0, v3, :cond_2a

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 696
    const/16 v28, 0x0

    .line 698
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 700
    const-string v3, "vibrate_in_silent"

    const v4, 0x7f040019

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    if-eqz v28, :cond_29

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 708
    :cond_29
    const/16 v32, 0x35

    .line 711
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v3, 0x35

    move/from16 v0, v32

    if-ne v0, v3, :cond_2b

    .line 715
    const/16 v32, 0x36

    .line 718
    :cond_2b
    const/16 v3, 0x36

    move/from16 v0, v32

    if-ne v0, v3, :cond_2c

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 724
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 730
    const/16 v32, 0x37

    .line 733
    :cond_2c
    const/16 v3, 0x37

    move/from16 v0, v32

    if-ne v0, v3, :cond_2e

    .line 735
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    .line 739
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 741
    const/16 v28, 0x0

    .line 743
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_17
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 745
    const-string v3, "set_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    const-string v3, "default_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    if-eqz v28, :cond_2d

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 753
    :cond_2d
    const/16 v32, 0x38

    .line 756
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2e
    const/16 v3, 0x38

    move/from16 v0, v32

    if-ne v0, v3, :cond_30

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 761
    const/16 v28, 0x0

    .line 763
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v3, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 765
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 767
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    if-eqz v28, :cond_2f

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 774
    :cond_2f
    const/16 v32, 0x39

    .line 779
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_30
    const/16 v3, 0x39

    move/from16 v0, v32

    if-ne v0, v3, :cond_32

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 786
    const/16 v28, 0x0

    .line 788
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 790
    const-string v3, "accessibility_script_injection"

    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 792
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 793
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 795
    const-string v3, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000c

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 799
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 800
    if-eqz v28, :cond_31

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 802
    :cond_31
    const/16 v32, 0x3a

    .line 805
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_32
    const/16 v3, 0x3a

    move/from16 v0, v32

    if-ne v0, v3, :cond_34

    .line 807
    const-string v3, "auto_time"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v21

    .line 808
    .local v21, "autoTimeValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 809
    const/16 v28, 0x0

    .line 811
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 812
    const-string v3, "auto_time_zone"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 817
    if-eqz v28, :cond_33

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 819
    :cond_33
    const/16 v32, 0x3b

    .line 822
    .end local v21    # "autoTimeValue":I
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_34
    const/16 v3, 0x3b

    move/from16 v0, v32

    if-ne v0, v3, :cond_36

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 825
    const/16 v28, 0x0

    .line 827
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1b
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 829
    const-string v3, "user_rotation"

    const v4, 0x7f050007

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 834
    if-eqz v28, :cond_35

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 836
    :cond_35
    const/16 v32, 0x3c

    .line 839
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_36
    const/16 v3, 0x3c

    move/from16 v0, v32

    if-ne v0, v3, :cond_37

    .line 843
    const/16 v32, 0x3d

    .line 846
    :cond_37
    const/16 v3, 0x3d

    move/from16 v0, v32

    if-ne v0, v3, :cond_38

    .line 850
    const/16 v32, 0x3e

    .line 854
    :cond_38
    const/16 v3, 0x3e

    move/from16 v0, v32

    if-ne v0, v3, :cond_39

    .line 858
    const/16 v32, 0x3f

    .line 861
    :cond_39
    const/16 v3, 0x3f

    move/from16 v0, v32

    if-ne v0, v3, :cond_3a

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 866
    :try_start_1c
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const/16 v25, 0xae

    .line 873
    .restart local v25    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 880
    const/16 v32, 0x40

    .line 883
    .end local v25    # "newValue":I
    :cond_3a
    const/16 v3, 0x40

    move/from16 v0, v32

    if-ne v0, v3, :cond_3c

    .line 885
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 886
    const/16 v28, 0x0

    .line 888
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1d
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 890
    const-string v3, "long_press_timeout"

    const v4, 0x7f05000a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 892
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 893
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 895
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 896
    if-eqz v28, :cond_3b

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 898
    :cond_3b
    const/16 v32, 0x41

    .line 903
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3c
    const/16 v3, 0x41

    move/from16 v0, v32

    if-ne v0, v3, :cond_3e

    .line 907
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 908
    const/16 v28, 0x0

    .line 910
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 912
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 916
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 920
    if-eqz v28, :cond_3d

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 922
    :cond_3d
    const/16 v32, 0x42

    .line 925
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3e
    const/16 v3, 0x42

    move/from16 v0, v32

    if-ne v0, v3, :cond_40

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 930
    const/16 v27, 0xa6

    .line 934
    .local v27, "ringerModeAffectedStreams":I
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 936
    or-int/lit8 v27, v27, 0x8

    .line 938
    :cond_3f
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 947
    const/16 v32, 0x43

    .line 950
    .end local v27    # "ringerModeAffectedStreams":I
    :cond_40
    const/16 v3, 0x43

    move/from16 v0, v32

    if-ne v0, v3, :cond_42

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 953
    const/16 v28, 0x0

    .line 955
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_20
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 957
    const-string v3, "touch_exploration_enabled"

    const v4, 0x7f04001c

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 959
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 963
    if-eqz v28, :cond_41

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 965
    :cond_41
    const/16 v32, 0x44

    .line 968
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    const/16 v3, 0x44

    move/from16 v0, v32

    if-ne v0, v3, :cond_43

    .line 970
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 972
    :try_start_21
    const-string v3, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 976
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 978
    const/16 v32, 0x45

    .line 981
    :cond_43
    const/16 v3, 0x45

    move/from16 v0, v32

    if-ne v0, v3, :cond_44

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 985
    .local v20, "airplaneRadios":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 987
    .local v29, "toggleableRadios":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 989
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 995
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 997
    const/16 v32, 0x46

    .line 1000
    .end local v20    # "airplaneRadios":Ljava/lang/String;
    .end local v29    # "toggleableRadios":Ljava/lang/String;
    :cond_44
    const/16 v3, 0x46

    move/from16 v0, v32

    if-ne v0, v3, :cond_45

    .line 1002
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1003
    const/16 v32, 0x47

    .line 1006
    :cond_45
    const/16 v3, 0x47

    move/from16 v0, v32

    if-ne v0, v3, :cond_47

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1009
    const/16 v28, 0x0

    .line 1011
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_23
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1013
    const-string v3, "speak_password"

    const v4, 0x7f04001b

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1017
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1018
    if-eqz v28, :cond_46

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1020
    :cond_46
    const/16 v32, 0x48

    .line 1023
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_47
    const/16 v3, 0x48

    move/from16 v0, v32

    if-ne v0, v3, :cond_49

    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1026
    const/16 v28, 0x0

    .line 1028
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_24
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1030
    const-string v3, "vibrate_in_silent"

    const v4, 0x7f040019

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1035
    if-eqz v28, :cond_48

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1037
    :cond_48
    const/16 v32, 0x49

    .line 1040
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_49
    const/16 v3, 0x49

    move/from16 v0, v32

    if-ne v0, v3, :cond_4a

    .line 1041
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1042
    const/16 v32, 0x4a

    .line 1045
    :cond_4a
    const/16 v3, 0x4a

    move/from16 v0, v32

    if-ne v0, v3, :cond_4c

    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1048
    const/16 v28, 0x0

    .line 1050
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1051
    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000d

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1055
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1056
    if-eqz v28, :cond_4b

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    :cond_4b
    const/16 v32, 0x4b

    .line 1060
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4c
    const/16 v3, 0x4b

    move/from16 v0, v32

    if-ne v0, v3, :cond_51

    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1062
    const/16 v28, 0x0

    .line 1063
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/16 v22, 0x0

    .line 1065
    .local v22, "c":Landroid/database/Cursor;
    :try_start_26
    const-string v9, "secure"

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v10, v3

    const-string v11, "name=\'lockscreen.disabled\'"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1069
    if-eqz v22, :cond_4d

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4e

    .line 1070
    :cond_4d
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1072
    const-string v3, "lockscreen.disabled"

    const v4, 0x7f040016

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1075
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1078
    if-eqz v22, :cond_4f

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_4f
    if-eqz v28, :cond_50

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1081
    :cond_50
    const/16 v32, 0x4c

    .line 1086
    .end local v22    # "c":Landroid/database/Cursor;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_51
    const/16 v3, 0x4c

    move/from16 v0, v32

    if-ne v0, v3, :cond_52

    .line 1088
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1090
    :try_start_27
    const-string v3, "DELETE FROM system WHERE name=\'vibrate_in_silent\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1097
    const/16 v32, 0x4d

    .line 1100
    :cond_52
    const/16 v3, 0x4d

    move/from16 v0, v32

    if-ne v0, v3, :cond_53

    .line 1102
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1104
    const/16 v32, 0x4e

    .line 1107
    :cond_53
    const/16 v3, 0x4e

    move/from16 v0, v32

    if-ne v0, v3, :cond_55

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1110
    const/16 v28, 0x0

    .line 1112
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_28
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1114
    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000d

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1116
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1119
    if-eqz v28, :cond_54

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1121
    :cond_54
    const/16 v32, 0x4f

    .line 1124
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_55
    const/16 v3, 0x4f

    move/from16 v0, v32

    if-ne v0, v3, :cond_57

    .line 1141
    const-string v3, "secure"

    const-string v4, "accessibility_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_94

    const/16 v19, 0x1

    .line 1143
    .local v19, "accessibilityEnabled":Z
    :goto_1
    const-string v3, "secure"

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_95

    const/16 v30, 0x1

    .line 1145
    .local v30, "touchExplorationEnabled":Z
    :goto_2
    if-eqz v19, :cond_56

    if-eqz v30, :cond_56

    .line 1146
    const-string v3, "secure"

    const-string v4, "enabled_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1148
    .local v24, "enabledServices":Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "touch_exploration_granted_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1150
    .local v31, "touchExplorationGrantedServices":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1152
    const/16 v28, 0x0

    .line 1154
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1155
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1157
    const-string v3, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1162
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    if-eqz v28, :cond_56

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1167
    .end local v24    # "enabledServices":Ljava/lang/String;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v31    # "touchExplorationGrantedServices":Ljava/lang/String;
    :cond_56
    const/16 v32, 0x50

    .line 1172
    .end local v19    # "accessibilityEnabled":Z
    .end local v30    # "touchExplorationEnabled":Z
    :cond_57
    const/16 v3, 0x50

    move/from16 v0, v32

    if-ne v0, v3, :cond_59

    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1175
    const/16 v28, 0x0

    .line 1177
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2a
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1179
    const-string v3, "screensaver_enabled"

    const v4, 0x1110049

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1181
    const-string v3, "screensaver_activate_on_dock"

    const v4, 0x111004a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1183
    const-string v3, "screensaver_activate_on_sleep"

    const v4, 0x111004b

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1185
    const-string v3, "screensaver_components"

    const v4, 0x1040038

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1187
    const-string v3, "screensaver_default_component"

    const v4, 0x1040038

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 1192
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1193
    if-eqz v28, :cond_58

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1195
    :cond_58
    const/16 v32, 0x51

    .line 1198
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_59
    const/16 v3, 0x51

    move/from16 v0, v32

    if-ne v0, v3, :cond_5b

    .line 1200
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1201
    const/16 v28, 0x0

    .line 1203
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1205
    const-string v3, "package_verifier_enable"

    const v4, 0x7f04000a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    .line 1209
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1210
    if-eqz v28, :cond_5a

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1212
    :cond_5a
    const/16 v32, 0x52

    .line 1215
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5b
    const/16 v3, 0x52

    move/from16 v0, v32

    if-ne v0, v3, :cond_5d

    .line 1217
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_5c

    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1220
    const/16 v28, 0x0

    .line 1224
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1225
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1226
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1227
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1228
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    .line 1232
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1233
    if-eqz v28, :cond_5c

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1236
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5c
    const/16 v32, 0x53

    .line 1239
    :cond_5d
    const/16 v3, 0x53

    move/from16 v0, v32

    if-ne v0, v3, :cond_5f

    .line 1243
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1244
    const/16 v28, 0x0

    .line 1246
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2d
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1247
    const-string v3, "accessibility_display_magnification_enabled"

    const v4, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1250
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1251
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1252
    const-string v3, "accessibility_display_magnification_scale"

    const v4, 0x7f070002

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1254
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1255
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1256
    const-string v3, "accessibility_display_magnification_auto_update"

    const v4, 0x7f04001e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1263
    if-eqz v28, :cond_5e

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1265
    :cond_5e
    const/16 v32, 0x54

    .line 1268
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5f
    const/16 v3, 0x54

    move/from16 v0, v32

    if-ne v0, v3, :cond_61

    .line 1269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_60

    .line 1270
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1271
    const/16 v28, 0x0

    .line 1275
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x6

    :try_start_2e
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    .line 1283
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1287
    if-eqz v28, :cond_60

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1290
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_60
    const/16 v32, 0x55

    .line 1293
    :cond_61
    const/16 v3, 0x55

    move/from16 v0, v32

    if-ne v0, v3, :cond_63

    .line 1294
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_62

    .line 1295
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1299
    const/4 v3, 0x1

    :try_start_2f
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stay_on_while_plugged_in"

    aput-object v4, v7, v3

    .line 1300
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    .line 1304
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1307
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_62
    const/16 v32, 0x56

    .line 1310
    :cond_63
    const/16 v3, 0x56

    move/from16 v0, v32

    if-ne v0, v3, :cond_65

    .line 1311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_64

    .line 1312
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1314
    const/4 v3, 0x3

    :try_start_30
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_verifier_enable"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "verifier_timeout"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "verifier_default_response"

    aput-object v4, v7, v3

    .line 1319
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    .line 1323
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1326
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_64
    const/16 v32, 0x57

    .line 1329
    :cond_65
    const/16 v3, 0x57

    move/from16 v0, v32

    if-ne v0, v3, :cond_67

    .line 1330
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_66

    .line 1331
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1333
    const/4 v3, 0x3

    :try_start_31
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "gprs_register_check_period_ms"

    aput-object v4, v7, v3

    .line 1338
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1340
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    .line 1342
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1345
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_66
    const/16 v32, 0x58

    .line 1348
    :cond_67
    const/16 v3, 0x58

    move/from16 v0, v32

    if-ne v0, v3, :cond_69

    .line 1349
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_68

    .line 1350
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1352
    const/16 v3, 0x1f

    :try_start_32
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "battery_discharge_duration_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "battery_discharge_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "send_action_app_error"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "dropbox_age_seconds"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "dropbox_max_files"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "dropbox_quota_kb"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "dropbox_quota_percent"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "dropbox_reserve_percent"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "dropbox:"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "logcat_for_"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "sys_free_storage_log_interval"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "disk_free_change_reporting_threshold"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "sys_storage_threshold_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "sys_storage_threshold_max_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "sys_storage_full_threshold_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "sync_max_retry_delay_in_seconds"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "connectivity_change_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "captive_portal_detection_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "captive_portal_server"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "nsd_on"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "inet_condition_debounce_up_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "inet_condition_debounce_down_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "read_external_storage_enforced_default"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "global_http_proxy_host"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "global_http_proxy_port"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "global_http_proxy_exclusion_list"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "set_global_http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "default_dns_server"

    aput-object v4, v7, v3

    .line 1385
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1386
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    .line 1388
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1391
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_68
    const/16 v32, 0x59

    .line 1394
    :cond_69
    const/16 v3, 0x59

    move/from16 v0, v32

    if-ne v0, v3, :cond_6b

    .line 1395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6a

    .line 1396
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1398
    const/4 v3, 0x3

    :try_start_33
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v3, 0x0

    const-string v4, "bluetooth_headset_priority_"

    aput-object v4, v26, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_a2dp_sink_priority_"

    aput-object v4, v26, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_input_device_priority_"

    aput-object v4, v26, v3

    .line 1404
    .local v26, "prefixesToMove":[Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "global"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    .line 1408
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1411
    .end local v26    # "prefixesToMove":[Ljava/lang/String;
    :cond_6a
    const/16 v32, 0x5a

    .line 1414
    :cond_6b
    const/16 v3, 0x5a

    move/from16 v0, v32

    if-ne v0, v3, :cond_6d

    .line 1415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6c

    .line 1416
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1418
    const/16 v3, 0xb

    :try_start_34
    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "window_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "transition_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "animator_duration_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "fancy_ime_animations"

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "compatibility_mode"

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "emergency_tone"

    aput-object v4, v12, v3

    const/4 v3, 0x6

    const-string v4, "call_auto_retry"

    aput-object v4, v12, v3

    const/4 v3, 0x7

    const-string v4, "debug_app"

    aput-object v4, v12, v3

    const/16 v3, 0x8

    const-string v4, "wait_for_debugger"

    aput-object v4, v12, v3

    const/16 v3, 0x9

    const-string v4, "show_processes"

    aput-object v4, v12, v3

    const/16 v3, 0xa

    const-string v4, "always_finish_activities"

    aput-object v4, v12, v3

    .line 1431
    .local v12, "systemToGlobal":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const-string v4, "preferred_network_mode"

    aput-object v4, v17, v3

    const/4 v3, 0x1

    const-string v4, "subscription_mode"

    aput-object v4, v17, v3

    .line 1436
    .local v17, "secureToGlobal":[Ljava/lang/String;
    const-string v10, "system"

    const-string v11, "global"

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1437
    const-string v15, "secure"

    const-string v16, "global"

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1439
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1444
    .end local v12    # "systemToGlobal":[Ljava/lang/String;
    .end local v17    # "secureToGlobal":[Ljava/lang/String;
    :cond_6c
    const/16 v32, 0x5b

    .line 1447
    :cond_6d
    const/16 v3, 0x5b

    move/from16 v0, v32

    if-ne v0, v3, :cond_6f

    .line 1448
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6e

    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1452
    const/4 v3, 0x1

    :try_start_35
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mode_ringer"

    aput-object v4, v7, v3

    .line 1453
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1460
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_6e
    const/16 v32, 0x5c

    .line 1463
    :cond_6f
    const/16 v3, 0x5c

    move/from16 v0, v32

    if-ne v0, v3, :cond_71

    .line 1464
    const/16 v28, 0x0

    .line 1466
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_36
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1468
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_9c

    .line 1472
    const-string v3, "global"

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 1474
    .local v23, "deviceProvisioned":I
    const-string v3, "user_setup_complete"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    .line 1482
    .end local v23    # "deviceProvisioned":I
    :goto_3
    if-eqz v28, :cond_70

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1484
    :cond_70
    const/16 v32, 0x5d

    .line 1487
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_71
    const/16 v3, 0x5d

    move/from16 v0, v32

    if-ne v0, v3, :cond_73

    .line 1489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_72

    .line 1490
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1493
    :try_start_37
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1494
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1495
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1496
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    .line 1500
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1503
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_72
    const/16 v32, 0x5e

    .line 1506
    :cond_73
    const/16 v3, 0x5e

    move/from16 v0, v32

    if-ne v0, v3, :cond_75

    .line 1508
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_74

    .line 1509
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1510
    const/16 v28, 0x0

    .line 1512
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_38
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1514
    const-string v3, "wireless_charging_started_sound"

    const v4, 0x7f06000b

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1516
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    .line 1518
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1519
    if-eqz v28, :cond_74

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1522
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_74
    const/16 v32, 0x5f

    .line 1525
    :cond_75
    const/16 v3, 0x5f

    move/from16 v0, v32

    if-ne v0, v3, :cond_77

    .line 1526
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_76

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1529
    const/4 v3, 0x1

    :try_start_39
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bugreport_in_power_menu"

    aput-object v4, v7, v3

    .line 1530
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1531
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    .line 1533
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1536
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_76
    const/16 v32, 0x60

    .line 1539
    :cond_77
    const/16 v3, 0x60

    move/from16 v0, v32

    if-ne v0, v3, :cond_78

    .line 1541
    const/16 v32, 0x61

    .line 1544
    :cond_78
    const/16 v3, 0x61

    move/from16 v0, v32

    if-ne v0, v3, :cond_7a

    .line 1545
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_79

    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1547
    const/16 v28, 0x0

    .line 1549
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3a
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v28

    .line 1551
    const-string v3, "low_battery_sound_timeout"

    const v4, 0x7f05000d

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1553
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    .line 1555
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1556
    if-eqz v28, :cond_79

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1559
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_79
    const/16 v32, 0x62

    .line 1564
    :cond_7a
    move/from16 v0, v32

    move/from16 v1, p3

    if-eq v0, v1, :cond_7b

    .line 1565
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got stuck trying to upgrade from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", must wipe the settings provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v3, "DROP TABLE IF EXISTS global"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1568
    const-string v3, "DROP TABLE IF EXISTS globalIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    const-string v3, "DROP TABLE IF EXISTS system"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1570
    const-string v3, "DROP INDEX IF EXISTS systemIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1571
    const-string v3, "DROP TABLE IF EXISTS secure"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1572
    const-string v3, "DROP INDEX IF EXISTS secureIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1573
    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1574
    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1575
    const-string v3, "DROP TABLE IF EXISTS bluetooth_devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    const-string v3, "DROP TABLE IF EXISTS bookmarks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1577
    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1579
    const-string v3, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1584
    .local v35, "wipeReason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1587
    .end local v35    # "wipeReason":Ljava/lang/String;
    :cond_7b
    return-void

    .line 245
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 260
    :catchall_1
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 272
    :catchall_2
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 284
    :catchall_3
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 346
    :catchall_4
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 364
    :catchall_5
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 386
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    if-eqz v28, :cond_7c

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7c
    throw v3

    .line 404
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v34    # "wifiWatchList":Ljava/lang/String;
    :catchall_7
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 417
    .end local v34    # "wifiWatchList":Ljava/lang/String;
    :catchall_8
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 431
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 432
    if-eqz v28, :cond_7d

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7d
    throw v3

    .line 460
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 475
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 476
    if-eqz v28, :cond_7e

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7e
    throw v3

    .line 484
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7f
    :try_start_3b
    const-string v33, "0"
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_c

    goto/16 :goto_0

    .line 490
    :catchall_c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 517
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 518
    if-eqz v28, :cond_80

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_80
    throw v3

    .line 537
    :catchall_e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 538
    if-eqz v28, :cond_81

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_81
    throw v3

    .line 556
    :catchall_f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 557
    if-eqz v28, :cond_82

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_82
    throw v3

    .line 575
    :catchall_10
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 576
    if-eqz v28, :cond_83

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_83
    throw v3

    .line 606
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_11
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 621
    :catchall_12
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 637
    :catchall_13
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 662
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_14
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    if-eqz v28, :cond_84

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_84
    throw v3

    .line 704
    :catchall_15
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    if-eqz v28, :cond_85

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_85
    throw v3

    .line 727
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_16
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 750
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    if-eqz v28, :cond_86

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_86
    throw v3

    .line 771
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :catchall_18
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    if-eqz v28, :cond_87

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_87
    throw v3

    .line 799
    :catchall_19
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 800
    if-eqz v28, :cond_88

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_88
    throw v3

    .line 816
    .restart local v21    # "autoTimeValue":I
    :catchall_1a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 817
    if-eqz v28, :cond_89

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_89
    throw v3

    .line 833
    .end local v21    # "autoTimeValue":I
    :catchall_1b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 834
    if-eqz v28, :cond_8a

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8a
    throw v3

    .line 878
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 895
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 896
    if-eqz v28, :cond_8b

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8b
    throw v3

    .line 919
    :catchall_1e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 920
    if-eqz v28, :cond_8c

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8c
    throw v3

    .line 945
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v27    # "ringerModeAffectedStreams":I
    :catchall_1f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 962
    .end local v27    # "ringerModeAffectedStreams":I
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_20
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 963
    if-eqz v28, :cond_8d

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8d
    throw v3

    .line 976
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 995
    .restart local v20    # "airplaneRadios":Ljava/lang/String;
    .restart local v29    # "toggleableRadios":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1017
    .end local v20    # "airplaneRadios":Ljava/lang/String;
    .end local v29    # "toggleableRadios":Ljava/lang/String;
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_23
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1018
    if-eqz v28, :cond_8e

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8e
    throw v3

    .line 1034
    :catchall_24
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1035
    if-eqz v28, :cond_8f

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8f
    throw v3

    .line 1055
    :catchall_25
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1056
    if-eqz v28, :cond_90

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_90
    throw v3

    .line 1077
    .restart local v22    # "c":Landroid/database/Cursor;
    :catchall_26
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1078
    if-eqz v22, :cond_91

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_91
    if-eqz v28, :cond_92

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_92
    throw v3

    .line 1094
    .end local v22    # "c":Landroid/database/Cursor;
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_27
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1118
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1119
    if-eqz v28, :cond_93

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_93
    throw v3

    .line 1141
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_94
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1143
    .restart local v19    # "accessibilityEnabled":Z
    :cond_95
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1162
    .restart local v24    # "enabledServices":Ljava/lang/String;
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v30    # "touchExplorationEnabled":Z
    .restart local v31    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_29
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    if-eqz v28, :cond_96

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_96
    throw v3

    .line 1192
    .end local v19    # "accessibilityEnabled":Z
    .end local v24    # "enabledServices":Ljava/lang/String;
    .end local v30    # "touchExplorationEnabled":Z
    .end local v31    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1193
    if-eqz v28, :cond_97

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_97
    throw v3

    .line 1209
    :catchall_2b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1210
    if-eqz v28, :cond_98

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_98
    throw v3

    .line 1232
    :catchall_2c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1233
    if-eqz v28, :cond_99

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_99
    throw v3

    .line 1262
    :catchall_2d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1263
    if-eqz v28, :cond_9a

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9a
    throw v3

    .line 1286
    :catchall_2e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1287
    if-eqz v28, :cond_9b

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9b
    throw v3

    .line 1304
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1323
    :catchall_30
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1342
    :catchall_31
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1388
    :catchall_32
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1408
    :catchall_33
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1441
    :catchall_34
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1457
    :catchall_35
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1478
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9c
    :try_start_3c
    const-string v3, "user_setup_complete"

    const v4, 0x7f040022

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_36

    goto/16 :goto_3

    .line 1482
    :catchall_36
    move-exception v3

    if-eqz v28, :cond_9d

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9d
    throw v3

    .line 1500
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_37
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1518
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_38
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1519
    if-eqz v28, :cond_9e

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9e
    throw v3

    .line 1533
    .end local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_39
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1555
    .restart local v28    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_3a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1556
    if-eqz v28, :cond_9f

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9f
    throw v3
.end method
