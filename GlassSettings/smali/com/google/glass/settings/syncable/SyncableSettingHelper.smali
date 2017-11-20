.class public Lcom/google/glass/settings/syncable/SyncableSettingHelper;
.super Ljava/lang/Object;
.source "SyncableSettingHelper.java"


# static fields
.field public static final LOCALE_KEY_NAME:Ljava/lang/String; = "locale"

.field public static final TIMEZONE_KEY_NAME:Ljava/lang/String; = "timezone"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/syncable/SyncableSettingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSyncableSettingFromClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    sget-object v2, Lcom/google/glass/settings/syncable/SyncableSettingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "syncable setting changed [key=%s, value=%s]"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/google/glass/settings/syncable/SyncableSettingHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Inserting/Updating into syncable settings table [key=%s, value=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v2, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 33
    return-void
.end method
