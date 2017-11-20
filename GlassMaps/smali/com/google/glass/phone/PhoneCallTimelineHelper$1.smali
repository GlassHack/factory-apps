.class Lcom/google/glass/phone/PhoneCallTimelineHelper$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

.field final synthetic val$call:Lcom/google/glass/phone/PhoneCall;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

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
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Inserting an %s call item."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "incoming"

    :goto_0
    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 103
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    const-string v3, "companion:com.google.glass.companion.sms"

    .line 115
    invoke-static {v2}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 117
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 118
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 119
    invoke-static {v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v2, v1, v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "This is a missed call."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 135
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 136
    const-string v2, "%s.call"

    new-array v3, v8, [Ljava/lang/Object;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    sget-object v4, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    new-instance v5, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;

    invoke-direct {v5, p0, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;-><init>(Lcom/google/glass/phone/PhoneCallTimelineHelper$1;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 150
    sget-object v3, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 151
    invoke-virtual {v0, v3, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->createAttachment(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$400(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v0, v1, v2, v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 155
    return-object v9

    .line 94
    :cond_2
    const-string v0, "outgoing"

    goto/16 :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/glass/common/R$string;->phone_call_total_time:I

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    .line 129
    invoke-virtual {v5}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 86
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Acquiring wake lock."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 89
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 90
    return-void
.end method
