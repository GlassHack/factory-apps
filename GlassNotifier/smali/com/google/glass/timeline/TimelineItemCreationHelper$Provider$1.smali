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
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    .prologue
    .line 103
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/google/glass/util/SettingsSecureProvider;->getInstance()Lcom/google/glass/util/SettingsSecureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->val$context:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsSecureProvider;->get(Landroid/content/ContentResolver;)Lcom/google/glass/util/SettingsSecure;

    move-result-object v1

    const-string v2, "android_id"

    .line 109
    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    return-object v0
.end method
