.class public Lcom/google/glass/widget/ContactDrawable$Builder;
.super Ljava/lang/Object;
.source "ContactDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ContactDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private drawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field private isExcessCount:Z

.field private name:Ljava/lang/String;

.field private nameToDisplay:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private showDisplayText:Z

.field private showRectBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showRectBackground:Z

    .line 212
    iput-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showDisplayText:Z

    .line 224
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->resources:Landroid/content/res/Resources;

    .line 226
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/widget/ContactDrawable;
    .locals 10

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->nameToDisplay:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->nameToDisplay:Ljava/lang/String;

    .line 297
    :cond_0
    new-instance v0, Lcom/google/glass/widget/ContactDrawable;

    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->nameToDisplay:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->isExcessCount:Z

    iget-boolean v5, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showRectBackground:Z

    iget-object v6, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v7, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showDisplayText:Z

    iget-object v8, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->drawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/widget/ContactDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZLandroid/graphics/Bitmap;ZLcom/google/glass/widget/ContactDrawable$DrawSpec;Lcom/google/glass/widget/ContactDrawable$1;)V

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 270
    return-object p0
.end method

.method public setDrawSpec(Lcom/google/glass/widget/ContactDrawable$DrawSpec;)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "drawSpec"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->drawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 290
    return-object p0
.end method

.method public setExcessCount(I)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 6
    .param p1, "excessCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 278
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Can only use either name or setExcessCount, not both."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/glass/common/R$string;->contact_excess_count:I

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->name:Ljava/lang/String;

    .line 281
    iput-boolean v5, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->isExcessCount:Z

    .line 282
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->name:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setNameToDisplayText(Ljava/lang/String;)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "nameToDisplay"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->nameToDisplay:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public setShowDisplayText(Z)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "showDisplayText"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showDisplayText:Z

    .line 261
    return-object p0
.end method

.method public setShowRectBackground(Z)Lcom/google/glass/widget/ContactDrawable$Builder;
    .locals 0
    .param p1, "showRectBackground"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/google/glass/widget/ContactDrawable$Builder;->showRectBackground:Z

    .line 253
    return-object p0
.end method
