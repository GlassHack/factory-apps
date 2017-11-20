.class Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;
.super Landroid/os/AsyncTask;
.source "TipsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/TipsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowTipAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final condition:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final delayMillis:J

.field private final durationMillis:J

.field final synthetic this$0:Lcom/google/glass/browser/TipsViewHelper;

.field private final tip:Lcom/google/glass/browser/TipsViewHelper$Tip;


# direct methods
.method private constructor <init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;)V
    .locals 0
    .param p2, "tip"    # Lcom/google/glass/browser/TipsViewHelper$Tip;
    .param p3, "durationMillis"    # J
    .param p5, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/browser/TipsViewHelper$Tip;",
            "JJ",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p7, "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    .line 146
    iput-wide p3, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->durationMillis:J

    .line 147
    iput-wide p5, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->delayMillis:J

    .line 148
    iput-object p7, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->condition:Lcom/google/common/base/Predicate;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;Lcom/google/glass/browser/TipsViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/browser/TipsViewHelper;
    .param p2, "x1"    # Lcom/google/glass/browser/TipsViewHelper$Tip;
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Lcom/google/common/base/Predicate;
    .param p8, "x5"    # Lcom/google/glass/browser/TipsViewHelper$1;

    .prologue
    .line 136
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;-><init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;)Lcom/google/glass/browser/TipsViewHelper$Tip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    return-object v0
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 153
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 155
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper$Tip;->access$200(Lcom/google/glass/browser/TipsViewHelper$Tip;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "tipLookupKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper;->access$300(Lcom/google/glass/browser/TipsViewHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "tipShownCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/google/glass/browser/TipsViewHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tip %s has already been shown %d times"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v0}, Lcom/google/glass/browser/TipsViewHelper;->access$500(Lcom/google/glass/browser/TipsViewHelper;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/google/glass/browser/TipsViewHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tip %s has only been shown %d times"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v0}, Lcom/google/glass/browser/TipsViewHelper;->access$600(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->tip:Lcom/google/glass/browser/TipsViewHelper$Tip;

    iget-wide v2, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->durationMillis:J

    iget-wide v4, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->delayMillis:J

    iget-object v6, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->condition:Lcom/google/common/base/Predicate;

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;)V

    .line 172
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 173
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;-><init>(Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
