.class public Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;
.super Ljava/lang/Object;
.source "LayoutOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private final boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/RectBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final color:I

.field private final labelResId:I


# direct methods
.method public varargs constructor <init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "color"    # I
    .param p3, "boxes"    # [Lcom/google/glass/settings/ui/developer/RectBuilder;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->labelResId:I

    .line 86
    iput p2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->color:I

    .line 87
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->boxes:Ljava/util/List;

    .line 88
    return-void
.end method


# virtual methods
.method public getBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/RectBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->boxes:Ljava/util/List;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->color:I

    return v0
.end method

.method public getLabelResId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->labelResId:I

    return v0
.end method
