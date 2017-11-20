.class public final Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareKey"
.end annotation


# instance fields
.field private glasswareId:J

.field private version:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p1, "glasswareId"    # J
    .param p3, "version"    # I

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-wide p1, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    .line 680
    iput p3, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->version:I

    .line 681
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 2
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    .line 675
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v0

    iput v0, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->version:I

    .line 676
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 685
    if-nez p1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v2

    .line 688
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 689
    goto :goto_0

    .line 691
    :cond_2
    instance-of v3, p1, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 695
    check-cast v0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;

    .line 696
    .local v0, "otherKey":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    iget-wide v3, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    iget-wide v5, v0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->version:I

    iget v4, v0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->version:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 709
    const-string v0, "GlasswareKey(%d, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->glasswareId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
