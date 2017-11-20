.class public Lcom/google/glass/logging/FsckLogService;
.super Landroid/app/IntentService;
.source "FsckLogService.java"


# static fields
.field public static final ACTION_PROCESSS_BOOTCONFIG:Ljava/lang/String; = "com.google.glass.action.PROCESS_BOOTCONFIG"

.field public static final ACTION_PROCESS_FSCK_LOGS:Ljava/lang/String; = "com.google.glass.action.PROCESS_FSCK_LOGS"

.field private static final BOOTCONFIG_FILE_LOCATION:Ljava/lang/String; = "/dev/fscklogs/bootconfig"

.field static final CACHE_FILE_LINE:Ljava/lang/String; = "/dev/block/platform/omap/omap_hsmmc.1/by-name/cache"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CLEAN_TEXT:Ljava/lang/String; = "clean"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ERROR_TEXT:Ljava/lang/String; = "errors"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOG_FILE_LOCATION:Ljava/lang/String; = "/dev/fscklogs/log"

.field static final USERDATA_FILE_LINE:Ljava/lang/String; = "/dev/block/platform/omap/omap_hsmmc.1/by-name/userdata"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method logBootconfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "bootconfig"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/logging/FsckLogService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->FSCK_BOOTCONFIG:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 149
    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/logging/FsckLogService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->FSCK_LOGS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "p"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "e"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 58
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/FsckLogService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 59
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.google.glass.action.PROCESS_FSCK_LOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/fscklogs/log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v3}, Lcom/google/glass/logging/FsckLogService;->processLog(Ljava/io/BufferedReader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 68
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to find the log file."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to read the log file."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    const-string v3, "com.google.glass.action.PROCESS_BOOTCONFIG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/fscklogs/bootconfig"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v2    # "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v3}, Lcom/google/glass/logging/FsckLogService;->processBootconfig(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 78
    :catch_2
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to find the bootconfig file."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to read the bootconfig file."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    sget-object v4, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown action received: "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method processBootconfig(Ljava/io/BufferedReader;)V
    .locals 6
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s was empty."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/dev/fscklogs/bootconfig"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/logging/FsckLogService;->logBootconfig(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processLog(Ljava/io/BufferedReader;)V
    .locals 7
    .param p1, "br"    # Ljava/io/BufferedReader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    const-string v3, "/dev/block/platform/omap/omap_hsmmc.1/by-name/cache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const-string v2, "cache"

    .line 109
    :goto_1
    const-string v3, "clean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string v0, "0"

    .line 118
    :goto_2
    sget-object v3, Lcom/google/glass/logging/FsckLogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Reporting: [partition=%s] [hasErrors=%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, v2, v0}, Lcom/google/glass/logging/FsckLogService;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v3, "/dev/block/platform/omap/omap_hsmmc.1/by-name/userdata"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v2, "userdata"

    goto :goto_1

    .line 111
    :cond_2
    const-string v3, "errors"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v0, "1"

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 122
    return-void
.end method
