.class Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;
.super Ljava/lang/Object;
.source "TimelineItemCreationHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/timeline/TimelineItemCreationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 3

    .prologue
    .line 107
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 108
    .local v1, "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    const-string v2, "android_id"

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v2, Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-direct {v2, v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    return-object v0
.end method
