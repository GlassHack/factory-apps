.class final Lcom/google/glass/logging/FeedbackGenerator$2;
.super Ljava/lang/Object;
.source "FeedbackGenerator.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackGenerator;->captureBugReportData(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$feedbackParams:Lcom/google/glass/feedback/FeedbackParams;

.field final synthetic val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/feedback/FeedbackParams;Landroid/content/Context;Lcom/google/glass/logging/CompanionLogReader;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$feedbackParams:Lcom/google/glass/feedback/FeedbackParams;

    iput-object p2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    iput-object p4, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeBugReport(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->getInstance()Lcom/google/glass/userevent/UserEventPreferences$Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v1

    .line 292
    .local v1, "userEventPreferences":Lcom/google/glass/userevent/UserEventPreferences;
    const-string v3, "Session Id: "

    invoke-virtual {v1}, Lcom/google/glass/userevent/UserEventPreferences;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "Session"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$feedbackParams:Lcom/google/glass/feedback/FeedbackParams;

    invoke-virtual {v2}, Lcom/google/glass/feedback/FeedbackParams;->getShouldBugReport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUGREPORT"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$300(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    invoke-virtual {v2}, Lcom/google/glass/logging/CompanionLogReader;->read()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyGlass(Companion) Log"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connectivity State"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/logging/FeedbackGenerator;->access$600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APK INFO"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v2, Lcom/google/glass/logging/Util;

    invoke-direct {v2}, Lcom/google/glass/logging/Util;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/logging/Util;->getCpuTemperature()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CPU TEMPERATURE"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$700()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "DF"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$300(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v2}, Lcom/google/glass/logging/FeedbackGenerator;->access$800(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PINNED ITEMS"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$100(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$feedbackParams:Lcom/google/glass/feedback/FeedbackParams;

    invoke-virtual {v2}, Lcom/google/glass/feedback/FeedbackParams;->getAdditionalFiles()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "additionalFile":Ljava/lang/String;
    invoke-static {p1, v0, v0}, Lcom/google/glass/logging/FeedbackGenerator;->access$900(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 292
    .end local v0    # "additionalFile":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_1
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "DMESG"

    invoke-static {p1, v2, v3}, Lcom/google/glass/logging/FeedbackGenerator;->access$300(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_2
    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 280
    const-wide/32 v0, 0xa00000

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 269
    .local v0, "clock":Lcom/google/glass/time/Clock;
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 270
    .local v3, "startstamp":J
    invoke-direct {p0, p1}, Lcom/google/glass/logging/FeedbackGenerator$2;->writeBugReport(Ljava/io/OutputStream;)V

    .line 271
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 272
    .local v1, "endstamp":J
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Wrote bug report [bugId=%s, elapsed=%dms]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/glass/logging/FeedbackGenerator$2;->val$feedbackParams:Lcom/google/glass/feedback/FeedbackParams;

    .line 273
    invoke-virtual {v9}, Lcom/google/glass/feedback/FeedbackParams;->getBugId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sub-long v9, v1, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 272
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method
