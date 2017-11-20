.class Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;
.super Ljava/lang/Object;
.source "BackupRestoreService.java"

# interfaces
.implements Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidIdProviderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/BackupRestoreService;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/BackupRestoreService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/BackupRestoreService;Lcom/google/glass/settings/BackupRestoreService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/BackupRestoreService;
    .param p2, "x1"    # Lcom/google/glass/settings/BackupRestoreService$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;-><init>(Lcom/google/glass/settings/BackupRestoreService;)V

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 161
    const-string v6, ""

    .line 162
    .local v6, "androidId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 164
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProviderImpl;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-virtual {v0}, Lcom/google/glass/settings/BackupRestoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/settings/BackupRestoreService;->access$400()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/settings/BackupRestoreService;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "name=?"

    .line 165
    invoke-static {}, Lcom/google/glass/settings/BackupRestoreService;->access$600()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/google/glass/settings/BackupRestoreService;->access$500()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 170
    :cond_0
    if-eqz v7, :cond_1

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return-object v6

    .line 170
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
