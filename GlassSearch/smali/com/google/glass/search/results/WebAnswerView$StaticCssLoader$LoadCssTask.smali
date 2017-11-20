.class Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;
.super Landroid/os/AsyncTask;
.source "WebAnswerView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadCssTask"
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
.field context:Landroid/content/Context;

.field public volatile loadComplete:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 880
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z

    .line 881
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->context:Landroid/content/Context;

    .line 882
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 887
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    const-string v0, ""

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    .line 904
    :cond_0
    :goto_0
    return-object v2

    .line 891
    :cond_1
    sput-object v2, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    .line 892
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/stylesheet/StylesheetProviderConstants;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 894
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 896
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    const/4 v0, 0x0

    .line 898
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 875
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 913
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 915
    :try_start_0
    sget-object v1, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->glassCss:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 917
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to load common search result CSS"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 928
    :goto_0
    return-void

    .line 920
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1400()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/WebAnswerView;

    .line 921
    .local v0, "view":Lcom/google/glass/search/results/WebAnswerView;
    invoke-virtual {v0}, Lcom/google/glass/search/results/WebAnswerView;->reloadData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 926
    .end local v0    # "view":Lcom/google/glass/search/results/WebAnswerView;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 923
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1400()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 924
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader$LoadCssTask;->loadComplete:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 926
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView$StaticCssLoader;->access$1300()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
