.class Lcom/google/glass/settings/ui/details/BuildDetailsCard;
.super Ljava/lang/Object;
.source "BuildDetailsCard.java"

# interfaces
.implements Lcom/google/glass/settings/ui/details/DetailsCard;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "null resources"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/BuildDetailsCard;->resources:Landroid/content/res/Resources;

    .line 21
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 4
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
    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/settings/ui/details/DetailsCard$Detail;>;"
    new-instance v1, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v2, p0, Lcom/google/glass/settings/ui/details/BuildDetailsCard;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_build_type:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    iget-object v2, p0, Lcom/google/glass/settings/ui/details/BuildDetailsCard;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_build_incremental:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/BuildDetailsCard;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_build:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
