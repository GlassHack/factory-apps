.class Lcom/google/glass/phone/PhoneCallTimelineHelper$1;
.super Landroid/os/AsyncTask;
.source "PhoneCallTimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallTimelineHelper;->insertCallAsync(Lcom/google/glass/phone/PhoneCall;)Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

.field final synthetic val$call:Lcom/google/glass/phone/PhoneCall;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallTimelineHelper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    iput-object p3, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    const-string v12, "Inserting an %s call item."

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v10}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "incoming"

    :goto_0
    aput-object v10, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 98
    .local v4, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v11}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 99
    .local v2, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v4, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 103
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v10}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "phoneNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 111
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 113
    const-string v7, "companion:com.google.glass.companion.sms"

    .line 115
    .local v7, "smsCompanionwareId":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v6

    .line 116
    .local v6, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 117
    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 118
    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 119
    invoke-static {v4, v6}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 122
    .end local v6    # "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v7    # "smsCompanionwareId":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v10, v4, v5}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v10}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 125
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "This is a missed call."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 135
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    .line 136
    .local v1, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    const-string v10, "%s.call"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v10}, Lcom/google/glass/phone/PhoneCall;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "textForFile":Ljava/lang/String;
    sget-object v10, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    new-instance v11, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper$1;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v3, v11}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 150
    sget-object v10, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 151
    invoke-virtual {v1, v10, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 150
    invoke-static {v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$400(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v10

    sget-object v11, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 155
    const/4 v10, 0x0

    return-object v10

    .line 94
    .end local v1    # "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    .end local v2    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "textForFile":Ljava/lang/String;
    :cond_2
    const-string v10, "outgoing"

    goto/16 :goto_0

    .line 128
    .restart local v2    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v4    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v5    # "phoneNumber":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/google/glass/common/R$string;->phone_call_total_time:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    .line 129
    invoke-virtual {v15}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->formatDuration(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 128
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 161
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Releasing wake lock."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 86
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Acquiring wake lock."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 88
    .local v0, "powerManager":Lcom/google/glass/android/os/PowerManager;
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 89
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-interface {v1, v2, v3}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 90
    return-void
.end method
