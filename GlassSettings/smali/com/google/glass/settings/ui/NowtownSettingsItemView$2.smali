.class Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;
.super Landroid/os/AsyncTask;
.source "NowtownSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/NowtownSettingsItemView;->setPreferredHome(Z)V
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
.field final synthetic this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

.field final synthetic val$enableNowtown:Z


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/NowtownSettingsItemView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    iput-boolean p2, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->val$enableNowtown:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 166
    iget-object v5, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v5}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$200(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 168
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 171
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 173
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.google.glass.nowtown"

    const-string v6, "com.google.glass.nowtown.home.HomeActivity"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v2, "nowtownHomeActivity":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.google.glass.home"

    const-string v6, "com.google.glass.home.timeline.MainTimelineActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v3, "oldHomeActivity":Landroid/content/ComponentName;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/content/ComponentName;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v5, 0x1

    aput-object v3, v0, v5

    .line 180
    .local v0, "components":[Landroid/content/ComponentName;
    const-string v5, "com.google.glass.nowtown"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 181
    const-string v5, "com.google.glass.home"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 183
    const/high16 v5, 0x100000

    iget-boolean v6, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->val$enableNowtown:Z

    if-eqz v6, :cond_1

    .end local v2    # "nowtownHomeActivity":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v4, v1, v5, v0, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 187
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v5}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$200(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v5}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$200(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nowtown_enabled"

    iget-boolean v7, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->val$enableNowtown:Z

    invoke-static {v5, v6, v7}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 191
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .restart local v2    # "nowtownHomeActivity":Landroid/content/ComponentName;
    :cond_1
    move-object v2, v3

    .line 183
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$100(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)V

    .line 198
    return-void
.end method
