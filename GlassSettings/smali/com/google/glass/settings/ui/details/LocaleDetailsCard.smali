.class Lcom/google/glass/settings/ui/details/LocaleDetailsCard;
.super Ljava/lang/Object;
.source "LocaleDetailsCard.java"

# interfaces
.implements Lcom/google/glass/settings/ui/details/DetailsCard;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "null resources"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;->resources:Landroid/content/res/Resources;

    .line 23
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/details/DetailsCard$Detail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/settings/ui/details/DetailsCard$Detail;>;"
    new-instance v1, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v2, p0, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_locale_language_region:I

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/glass/locale/RegionProvider;->getInstance()Lcom/google/glass/locale/RegionProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v2, p0, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_locale_timezone:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/LocaleDetailsCard;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_locale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
