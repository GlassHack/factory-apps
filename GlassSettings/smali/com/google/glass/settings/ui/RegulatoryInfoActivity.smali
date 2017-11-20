.class public Lcom/google/glass/settings/ui/RegulatoryInfoActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/RegulatoryInfoActivity$1;,
        Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;
    }
.end annotation


# static fields
.field static final AUSTRALIA:Ljava/lang/String; = "AU"

.field static final CANADA:Ljava/lang/String; = "CA"

.field static final SINGAPORE:Ljava/lang/String; = "SG"


# instance fields
.field private adapter:Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;

.field private cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->regions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method createRegions()Ljava/util/List;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/glass/locale/Region;->US:Lcom/google/glass/locale/Region;

    invoke-virtual {v2}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v2, "AU"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v2, "CA"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v2, Lcom/google/glass/locale/Region;->GB:Lcom/google/glass/locale/Region;

    invoke-virtual {v2}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/google/glass/locale/RegionProvider;->getInstance()Lcom/google/glass/locale/RegionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;

    move-result-object v0

    .line 68
    .local v0, "deviceRegion":Lcom/google/glass/locale/Region;
    sget-object v2, Lcom/google/glass/locale/Region;->JP:Lcom/google/glass/locale/Region;

    if-ne v0, v2, :cond_0

    .line 69
    sget-object v2, Lcom/google/glass/locale/Region;->JP:Lcom/google/glass/locale/Region;

    invoke-virtual {v2}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    const-string v2, "SG"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object v1
.end method

.method getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->adapter:Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->createRegions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->regions:Ljava/util/List;

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 47
    new-instance v0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;-><init>(Lcom/google/glass/settings/ui/RegulatoryInfoActivity;Lcom/google/glass/settings/ui/RegulatoryInfoActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->adapter:Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;

    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->adapter:Lcom/google/glass/settings/ui/RegulatoryInfoActivity$RegionScrollAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 50
    iget-object v0, p0, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method
