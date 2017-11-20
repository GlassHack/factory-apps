.class Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;
.super Ljava/lang/Object;
.source "PrimaryAccountDetailsCard.java"

# interfaces
.implements Lcom/google/glass/settings/ui/details/DetailsCard;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "null authUtils"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/auth/AuthUtils;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 22
    const-string v0, "null resources"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;->resources:Landroid/content/res/Resources;

    .line 23
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 3
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
    new-instance v0, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v2}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/PrimaryAccountDetailsCard;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_more_details_primary_account:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
