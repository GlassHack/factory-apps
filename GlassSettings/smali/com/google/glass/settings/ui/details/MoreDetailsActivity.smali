.class public final Lcom/google/glass/settings/ui/details/MoreDetailsActivity;
.super Landroid/app/Activity;
.source "MoreDetailsActivity.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private getDetailsCards(Landroid/content/res/Resources;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/details/DetailsCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/glass/settings/ui/details/DetailsCard;>;"
    new-instance v1, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;

    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;-><init>(Lcom/google/glass/auth/AuthUtils;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 58
    new-instance v1, Lcom/google/glass/settings/ui/details/BuildDetailsCard;

    invoke-direct {v1, p1}, Lcom/google/glass/settings/ui/details/BuildDetailsCard;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 59
    new-instance v1, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;

    invoke-direct {v1, p1}, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 60
    new-instance v2, Lcom/google/glass/settings/ui/details/WifiDetailsCard;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-direct {v2, v1, p1}, Lcom/google/glass/settings/ui/details/WifiDetailsCard;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate() [savedInstanceState=%s]."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->getDetailsCards(Landroid/content/res/Resources;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/settings/ui/details/MoreDetailsCardScrollAdapter;-><init>(Lcom/google/common/collect/ImmutableList;Landroid/view/LayoutInflater;Lcom/google/glass/logging/FormattingLogger;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 31
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->finish()V

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;->moreDetailsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 38
    return-void
.end method
