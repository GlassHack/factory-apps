.class Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider$1;
.super Ljava/lang/Object;
.source "AndroidGlobalSettingsHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;->get(Landroid/content/ContentResolver;)Lcom/google/glass/settings/AndroidGlobalSettingsHelper;
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
        "Lcom/google/glass/settings/AndroidGlobalSettingsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider$1;->this$0:Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/settings/AndroidGlobalSettingsHelper;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    iget-object v1, p0, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper$Provider$1;->get()Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    move-result-object v0

    return-object v0
.end method
