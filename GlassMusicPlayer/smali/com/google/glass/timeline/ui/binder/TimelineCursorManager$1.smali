.class Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

.field final synthetic val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

.field final synthetic val$cursorNumber:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;JILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    iput-wide p2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$cursorNumber:J

    iput p4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 178
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 182
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$cursorNumber:J

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$100(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    cmp-long v0, v0, v7

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$200(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 194
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 199
    :cond_2
    if-nez v0, :cond_7

    .line 207
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not move cursor to position %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 216
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 224
    :try_start_4
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v4}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getBundleCoverStatus(Landroid/database/Cursor;)I

    move-result v2

    .line 226
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v4}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v5}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProcessedHtml(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v5, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v5}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v7}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProcessedHtmlReadMore(Landroid/database/Cursor;)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    .line 238
    :goto_1
    if-nez v1, :cond_4

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_5
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Invalid protocol buffer."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    :try_start_6
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Cursor has been closed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 232
    :catch_2
    move-exception v0

    .line 233
    :try_start_7
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Cursor closed while trying to read it from background thread."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 243
    :cond_4
    :try_start_8
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 244
    invoke-virtual {v7, v2}, Ljava/util/zip/CRC32;->update(I)V

    .line 245
    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 246
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 247
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 249
    :cond_5
    if-eqz v5, :cond_6

    move v3, v6

    :cond_6
    invoke-virtual {v7, v3}, Ljava/util/zip/CRC32;->update(I)V

    .line 253
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V

    .line 255
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$200(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$600(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v2

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iget v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 261
    :cond_7
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    if-eqz v1, :cond_0

    .line 270
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1$1;-><init>(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_8
    move v5, v3

    move v2, v3

    move-object v1, v4

    move-object v0, v4

    goto/16 :goto_1
.end method
