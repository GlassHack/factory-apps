.class Lcom/google/glass/browser/TipsViewHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "TipsViewHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/browser/TipsViewHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/browser/TipsViewHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/browser/TipsViewHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/browser/TipsViewHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/browser/TipsViewHelperProvider;->instance:Lcom/google/glass/browser/TipsViewHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/glass/browser/TipsViewHelperProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/browser/TipsViewHelperProvider;->instance:Lcom/google/glass/browser/TipsViewHelperProvider;

    return-object v0
.end method


# virtual methods
.method get(Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)Lcom/google/glass/browser/TipsViewHelper;
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "tipsView"    # Lcom/google/glass/widget/TipsView;

    .prologue
    .line 26
    const-string v0, "null sharedPreferences"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "null tipsView"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/glass/browser/TipsViewHelperProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/browser/TipsViewHelperProvider$1;-><init>(Lcom/google/glass/browser/TipsViewHelperProvider;Landroid/content/SharedPreferences;Lcom/google/glass/widget/TipsView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/browser/TipsViewHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/TipsViewHelper;

    return-object v0
.end method
