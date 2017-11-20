.class Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;
.super Ljava/lang/Object;
.source "TipsViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

.field final synthetic val$tipShownCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    iput-object p2, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->val$tipShownCount:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->access$700(Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;)Lcom/google/glass/browser/TipsViewHelper$Tip;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper$Tip;->access$200(Lcom/google/glass/browser/TipsViewHelper$Tip;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "tipLookupKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    iget-object v1, v1, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper;->access$300(Lcom/google/glass/browser/TipsViewHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->val$tipShownCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    invoke-static {}, Lcom/google/glass/browser/TipsViewHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setting tip shown count for %s to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;

    invoke-static {v5}, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;->access$700(Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask;)Lcom/google/glass/browser/TipsViewHelper$Tip;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/browser/TipsViewHelper$ShowTipAsyncTask$1;->val$tipShownCount:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method
