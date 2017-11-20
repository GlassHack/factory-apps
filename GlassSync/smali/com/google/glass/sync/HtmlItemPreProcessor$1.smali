.class Lcom/google/glass/sync/HtmlItemPreProcessor$1;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/HtmlItemPreProcessor;->createAsyncTask(Ljava/util/List;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INNER_HTML_INTERFACE_NAME:Ljava/lang/String; = "INNER_HTML_INTERFACE"

.field private static final JS_TO_GET_HTML:Ljava/lang/String; = "window[\'INNER_HTML_INTERFACE\'][\'bodyInnerHtml\'](document.getElementsByTagName(\'body\')[0].innerHTML);"


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/HtmlItemPreProcessor;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/HtmlItemPreProcessor;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/HtmlItemPreProcessor;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->this$0:Lcom/google/glass/sync/HtmlItemPreProcessor;

    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->val$items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v15, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v15}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 115
    .local v15, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v15}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 118
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 120
    .local v16, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Processing %d items"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->val$items:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->val$items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->val$items:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 125
    .local v5, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Processing HTML item: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 129
    .local v3, "webView":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/PagedWebView;>;"
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 130
    .local v8, "currentItemNumPages":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 131
    .local v7, "currentItemHtml":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v12, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 133
    .local v12, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v12}, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;-><init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 141
    .local v4, "htmlCallback":Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;
    new-instance v6, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v8}, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;-><init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 158
    .local v6, "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v17

    new-instance v1, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;-><init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    const-wide/16 v1, 0x5

    :try_start_0
    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-virtual {v12, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    .line 179
    .local v13, "numPages":I
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 182
    .local v10, "html":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gez v13, :cond_4

    .line 183
    :cond_2
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Did not finish rendering: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const-string v10, ""

    .line 185
    const/4 v13, 0x0

    .line 190
    :goto_3
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Creating update for item %s: %d HTML chars, %d pages"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    .line 191
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    .line 190
    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sget-object v1, Lcom/google/glass/timeline/TimelineContract$Timeline;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 194
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "processed_html"

    .line 195
    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v17, "processed_html_read_more"

    const/4 v1, 0x1

    if-le v13, v1, :cond_5

    const/4 v1, 0x1

    .line 196
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 192
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;-><init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .end local v3    # "webView":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/PagedWebView;>;"
    .end local v4    # "htmlCallback":Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;
    .end local v6    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .end local v7    # "currentItemHtml":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .end local v8    # "currentItemNumPages":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "html":Ljava/lang/String;
    .end local v12    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v13    # "numPages":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 171
    .restart local v3    # "webView":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/PagedWebView;>;"
    .restart local v4    # "htmlCallback":Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;
    .restart local v6    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .restart local v7    # "currentItemHtml":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v8    # "currentItemNumPages":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v12    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "InterruptedExecution while waiting for WebView to finish rendering item: %s."

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 174
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 172
    move-object/from16 v0, v17

    invoke-interface {v1, v9, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 187
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .restart local v10    # "html":Ljava/lang/String;
    .restart local v13    # "numPages":I
    :cond_4
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Finished rendering: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 195
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 210
    .end local v3    # "webView":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/PagedWebView;>;"
    .end local v4    # "htmlCallback":Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;
    .end local v5    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v6    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .end local v7    # "currentItemHtml":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .end local v8    # "currentItemNumPages":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "html":Ljava/lang/String;
    .end local v12    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v13    # "numPages":I
    :cond_6
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Created %d HTML update(s) in %dms"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 211
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v15}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    .line 210
    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->this$0:Lcom/google/glass/sync/HtmlItemPreProcessor;

    invoke-static {v1}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$100(Lcom/google/glass/sync/HtmlItemPreProcessor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 215
    .local v14, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v1, "com.google.glass.sync.timeline"

    move-object/from16 v0, v16

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 216
    :catch_1
    move-exception v9

    .line 217
    .local v9, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "RemoteException while inserting processed html"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v1, v9, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 219
    .local v9, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "OperationApplicationException while inserting processed html"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v1, v9, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
