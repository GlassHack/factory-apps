.class Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;
.super Ljava/lang/Object;
.source "TimelineCursorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

.field final synthetic val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

.field final synthetic val$cursorNumber:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;JILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

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
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 178
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 182
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-wide v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$cursorNumber:J

    iget-object v13, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v13}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$100(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$200(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v11

    iget v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 194
    .local v0, "cached":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    invoke-virtual {v11}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_2

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 199
    :cond_2
    if-nez v0, :cond_7

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "blob":[B
    const/4 v1, 0x0

    .line 202
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v2, 0x0

    .line 203
    .local v2, "bundleCoverStatus":I
    const/4 v4, 0x0

    .line 204
    .local v4, "processedHtml":Ljava/lang/String;
    const/4 v5, 0x0

    .line 207
    .local v5, "processedHtmlReadMore":Z
    :try_start_2
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_4

    .line 210
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v11

    iget v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 211
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v10, "Could not move cursor to position %d."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v3, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 216
    :cond_3
    :try_start_3
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v12}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v6

    .line 217
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 224
    :try_start_4
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v12}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getBundleCoverStatus(Landroid/database/Cursor;)I

    move-result v2

    .line 226
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v12}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProcessedHtml(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v12}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getProcessedHtmlReadMore(Landroid/database/Cursor;)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    .line 238
    :cond_4
    if-nez v1, :cond_5

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v8

    .line 219
    .local v8, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :try_start_5
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v10, "Invalid protocol buffer."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 229
    .end local v8    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v8

    .line 230
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v10, "Cursor has been closed."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 232
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v8

    .line 233
    .local v8, "e":Landroid/database/StaleDataException;
    :try_start_7
    invoke-static {}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v10, "Cursor closed while trying to read it from background thread."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 243
    .end local v8    # "e":Landroid/database/StaleDataException;
    :cond_5
    :try_start_8
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 244
    .local v7, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v7, v2}, Ljava/util/zip/CRC32;->update(I)V

    .line 245
    invoke-virtual {v7, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 246
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 247
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/zip/CRC32;->update([B)V

    .line 249
    :cond_6
    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v7, v3}, Ljava/util/zip/CRC32;->update(I)V

    .line 253
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .end local v0    # "cached":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V

    .line 255
    .restart local v0    # "cached":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$200(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v3

    iget v10, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$600(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v3

    new-instance v10, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v10, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iget v11, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$position:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 261
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "bundleCoverStatus":I
    .end local v4    # "processedHtml":Ljava/lang/String;
    .end local v5    # "processedHtmlReadMore":Z
    .end local v6    # "blob":[B
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    :cond_7
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->val$callback:Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    if-eqz v3, :cond_0

    .line 269
    move-object v9, v0

    .line 270
    .local v9, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v10, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1$1;

    invoke-direct {v10, p0, v9}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1$1;-><init>(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    invoke-interface {v3, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v9    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v2    # "bundleCoverStatus":I
    .restart local v4    # "processedHtml":Ljava/lang/String;
    .restart local v5    # "processedHtmlReadMore":Z
    .restart local v6    # "blob":[B
    .restart local v7    # "crc32":Ljava/util/zip/CRC32;
    :cond_8
    move v3, v10

    .line 249
    goto :goto_1

    .line 261
    .end local v0    # "cached":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "bundleCoverStatus":I
    .end local v4    # "processedHtml":Ljava/lang/String;
    .end local v5    # "processedHtmlReadMore":Z
    .end local v6    # "blob":[B
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    :catchall_0
    move-exception v3

    iget-object v10, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-static {v10}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method
