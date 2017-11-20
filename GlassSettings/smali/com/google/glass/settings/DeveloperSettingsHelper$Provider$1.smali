.class Lcom/google/glass/settings/DeveloperSettingsHelper$Provider$1;
.super Ljava/lang/Object;
.source "DeveloperSettingsHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;
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
        "Lcom/google/glass/settings/DeveloperSettingsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider$1;->this$0:Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/settings/DeveloperSettingsHelper;
    .locals 6

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 291
    invoke-static {}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;->get(Landroid/content/ContentResolver;)Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    move-result-object v2

    .line 292
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenServiceManager;->getInstance()Lcom/google/android/glass/hidden/HiddenServiceManager;

    move-result-object v3

    .line 293
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getInstance()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v4

    .line 294
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenWindowManager;->getInstance()Lcom/google/android/glass/hidden/HiddenWindowManager;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/settings/DeveloperSettingsHelper;-><init>(Lcom/google/glass/settings/AndroidGlobalSettingsHelper;Lcom/google/android/glass/hidden/HiddenServiceManager;Lcom/google/android/glass/hidden/HiddenSystemProperties;Lcom/google/android/glass/hidden/HiddenWindowManager;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider$1;->get()Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    return-object v0
.end method
