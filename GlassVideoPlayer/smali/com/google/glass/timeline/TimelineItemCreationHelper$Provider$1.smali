.class Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 108
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    return-object v0
.end method
