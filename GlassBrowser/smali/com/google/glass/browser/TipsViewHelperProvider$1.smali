.class Lcom/google/glass/browser/TipsViewHelperProvider$1;
.super Ljava/lang/Object;
.source "TipsViewHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/TipsViewHelperProvider;->get(Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)Lcom/google/glass/browser/TipsViewHelper;
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
        "Lcom/google/glass/browser/TipsViewHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/TipsViewHelperProvider;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$tipsView:Lcom/google/glass/widget/TipsView;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/TipsViewHelperProvider;Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/TipsViewHelperProvider;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelperProvider$1;->this$0:Lcom/google/glass/browser/TipsViewHelperProvider;

    iput-object p2, p0, Lcom/google/glass/browser/TipsViewHelperProvider$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/glass/browser/TipsViewHelperProvider$1;->val$tipsView:Lcom/google/glass/widget/TipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/browser/TipsViewHelper;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper;

    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelperProvider$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelperProvider$1;->val$tipsView:Lcom/google/glass/widget/TipsView;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/TipsViewHelper;-><init>(Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/glass/browser/TipsViewHelperProvider$1;->get()Lcom/google/glass/browser/TipsViewHelper;

    move-result-object v0

    return-object v0
.end method
